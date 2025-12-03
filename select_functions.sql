-- Получить информацию о герое

CREATE OR REPLACE FUNCTION get_hero_info(p_hero_id INT)
RETURNS TABLE (
    hero_id INT,
    hero_name VARCHAR,
    primary_attribute VARCHAR,
    attack_type VARCHAR,
    complexity INT,
    roles TEXT[]
)
LANGUAGE sql
AS $$
    SELECT
        h.hero_id,
        h.name AS hero_name,
        h.primary_attribute,
        h.attack_type,
        h.complexity,
        COALESCE(
            ARRAY_AGG(r.name ORDER BY hr.priority)
                FILTER (WHERE r.role_id IS NOT NULL),
            ARRAY[]::TEXT[]
        ) AS roles
    FROM Hero h
    LEFT JOIN HeroRole hr ON hr.hero_id = h.hero_id
    LEFT JOIN Role r ON r.role_id = hr.role_id
    WHERE h.hero_id = p_hero_id
    GROUP BY
        h.hero_id, h.name, h.primary_attribute,
        h.attack_type, h.complexity;
$$;

SELECT * FROM get_hero_info(11);  -- получить информацию о Shadow Fiend

-- Получить информацию о матче
CREATE OR REPLACE FUNCTION get_match_info(p_match_id BIGINT)
RETURNS TABLE (
    match_id BIGINT,
    start_time TIMESTAMPTZ,
    duration_seconds INT,
    region_name VARCHAR,
    game_mode_name VARCHAR,
    patch_version VARCHAR,
    avg_mmr INT,
    winner_side side
)
LANGUAGE sql
AS $$
    SELECT
        m.match_id,
        m.start_time,
        m.duration_seconds,
        r.name AS region_name,
        gm.name AS game_mode_name,
        p.version AS patch_version,
        m.avg_mmr,
        m.winner_side
    FROM Match m
    JOIN Region r ON r.region_id = m.region_id
    JOIN GameMode gm ON gm.game_mode_id = m.game_mode_id
    JOIN Patch p ON p.patch_id = m.patch_id
    WHERE m.match_id = p_match_id;
$$;
SELECT * FROM get_match_info(1);

-- Вывести последние N матчей игрока
CREATE OR REPLACE FUNCTION get_player_last_n_matches(
    p_player_id BIGINT,
    p_limit INT
)
RETURNS TABLE (
    match_id BIGINT,
    start_time TIMESTAMPTZ,
    duration_seconds INT,
    region_name VARCHAR,
    game_mode_name VARCHAR,
    patch_version VARCHAR,
    team_side side,
    result TEXT,
    hero_id INT,
    hero_name VARCHAR,
    kills INT,
    deaths INT,
    assists INT,
    gpm INT,
    xpm INT
)
LANGUAGE sql
AS $$
    SELECT
        m.match_id,
        m.start_time,
        m.duration_seconds,
        r.name AS region_name,
        gm.name AS game_mode_name,
        p.version AS patch_version,
        mp.team_side,
        CASE
            WHEN m.winner_side IS NULL THEN 'unknown'
            WHEN m.winner_side = mp.team_side THEN 'win'
            ELSE 'loss'
        END AS result,
        h.hero_id,
        h.name AS hero_name,
        mp.kills,
        mp.deaths,
        mp.assists,
        mp.gpm,
        mp.xpm
    FROM MatchPlayer mp
    JOIN Match m ON m.match_id = mp.match_id
    JOIN Region r ON r.region_id = m.region_id
    JOIN GameMode gm ON gm.game_mode_id = m.game_mode_id
    JOIN Patch p ON p.patch_id = m.patch_id
    JOIN Hero h ON h.hero_id = mp.hero_id
    WHERE mp.player_id = p_player_id
    ORDER BY m.start_time DESC
    LIMIT p_limit;
$$;
SELECT * FROM get_player_last_n_matches(2, 3); -- 3 матча у игрока с ID 2

-- Процент побед игрока
CREATE OR REPLACE FUNCTION get_player_winrate(p_player_id BIGINT)
RETURNS TABLE (
    player_id BIGINT,
    nickname VARCHAR,
    total_matches INT,
    wins INT,
    losses INT,
    winrate_percent NUMERIC(5,2)
)
LANGUAGE sql
AS $$
    SELECT
        pl.player_id,
        pl.nickname,
        COUNT(*) AS total_matches,
        SUM(CASE WHEN m.winner_side = mp.team_side THEN 1 ELSE 0 END) AS wins,
        SUM(
            CASE
                WHEN m.winner_side IS NOT NULL
                 AND m.winner_side <> mp.team_side
                THEN 1 ELSE 0
            END
        ) AS losses,
        ROUND(
            100.0 * SUM(CASE WHEN m.winner_side = mp.team_side THEN 1 ELSE 0 END)
                / NULLIF(COUNT(*), 0),
            2
        ) AS winrate_percent
    FROM MatchPlayer mp
    JOIN Match m ON m.match_id = mp.match_id
    JOIN Player pl ON pl.player_id = mp.player_id
    WHERE pl.player_id = p_player_id
      AND m.winner_side IS NOT NULL
    GROUP BY pl.player_id, pl.nickname;
$$;

SELECT * FROM get_player_winrate(6);  -- Процент побед у игрока с ID 6


-- Процент побед героя

CREATE OR REPLACE FUNCTION get_hero_winrate(p_hero_id INT)
RETURNS TABLE (
    hero_id INT,
    hero_name VARCHAR,
    total_picks INT,
    wins INT,
    losses INT,
    winrate_percent NUMERIC(5,2)
)
LANGUAGE sql
AS $$
    SELECT
        h.hero_id,
        h.name AS hero_name,
        COUNT(*) AS total_picks,
        SUM(CASE WHEN m.winner_side = mp.team_side THEN 1 ELSE 0 END) AS wins,
        SUM(
            CASE
                WHEN m.winner_side IS NOT NULL
                 AND m.winner_side <> mp.team_side
                THEN 1 ELSE 0
            END
        ) AS losses,
        ROUND(
            100.0 * SUM(CASE WHEN m.winner_side = mp.team_side THEN 1 ELSE 0 END)
                / NULLIF(COUNT(*), 0),
            2
        ) AS winrate_percent
    FROM MatchPlayer mp
    JOIN Match m ON m.match_id = mp.match_id
    JOIN Hero h ON h.hero_id = mp.hero_id
    WHERE mp.hero_id = p_hero_id
      AND m.winner_side IS NOT NULL
    GROUP BY h.hero_id, h.name;
$$;

SELECT * FROM get_hero_winrate(11);  -- Процент побед у Shadow Fiend

