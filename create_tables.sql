-- Типы ENUM

CREATE TYPE side AS ENUM ('radiant', 'dire');
CREATE TYPE draft_action_type AS ENUM ('pick', 'ban');
CREATE TYPE item_slot_type AS ENUM ('inventory', 'backpack', 'neutral');
CREATE TYPE rating_type AS ENUM ('solo', 'party', 'pro');
CREATE TYPE user_role AS ENUM ('player_user', 'analyst', 'admin');

-- Справочники / контекст

CREATE TABLE Region (
    region_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    code VARCHAR(10) UNIQUE NOT NULL
);

CREATE TABLE GameMode (
    game_mode_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT
);

CREATE TABLE Patch (
    patch_id INT PRIMARY KEY,
    version VARCHAR(50) NOT NULL,
    release_date TIMESTAMPTZ
);

-- Игроки, команды, герои, роли

CREATE TABLE Player (
    player_id SERIAL PRIMARY KEY,
    nickname VARCHAR(100) NOT NULL,
    country_code VARCHAR(10),
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    is_pro BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE ProTeam (
    team_id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    tag VARCHAR(20),
    region_id INT REFERENCES Region(region_id) ON DELETE RESTRICT,
    founded_at TIMESTAMPTZ,
    disbanded_at TIMESTAMPTZ
);

CREATE TABLE Hero (
    hero_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    primary_attribute VARCHAR(20) NOT NULL,
    attack_type VARCHAR(20) NOT NULL,
    complexity INT
);

CREATE TABLE Role (
    role_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description TEXT
);

CREATE TABLE HeroRole (
    hero_role_id SERIAL PRIMARY KEY,
    hero_id INT NOT NULL REFERENCES Hero(hero_id) ON DELETE CASCADE,
    role_id INT NOT NULL REFERENCES Role(role_id) ON DELETE CASCADE,
    priority INT,
    CONSTRAINT uq_herorole_hero_role UNIQUE (hero_id, role_id)
);

-- Матчи и связанные сущности

CREATE TABLE Match (
    match_id SERIAL PRIMARY KEY,
    start_time TIMESTAMPTZ NOT NULL,
    duration_seconds INT NOT NULL,
    region_id INT NOT NULL REFERENCES Region(region_id) ON DELETE RESTRICT,
    game_mode_id INT NOT NULL REFERENCES GameMode(game_mode_id) ON DELETE RESTRICT,
    patch_id INT NOT NULL REFERENCES Patch(patch_id) ON DELETE RESTRICT,
    avg_mmr INT,
    winner_side side
);

CREATE TABLE MatchTeam (
    match_team_id SERIAL PRIMARY KEY,
    match_id BIGINT NOT NULL REFERENCES Match(match_id) ON DELETE CASCADE,
    side side NOT NULL,
    team_id BIGINT REFERENCES ProTeam(team_id) ON DELETE SET NULL,
    total_kills INT,
    total_deaths INT,
    total_gold INT,
    total_xp INT,
    towers_destroyed INT,
    roshan_kills INT,
    CONSTRAINT uq_matchteam_match_side UNIQUE (match_id, side)
);

CREATE TABLE MatchPlayer (
    match_player_id SERIAL PRIMARY KEY,
    match_id BIGINT NOT NULL REFERENCES Match(match_id) ON DELETE CASCADE,
    player_id BIGINT NOT NULL REFERENCES Player(player_id) ON DELETE CASCADE,
    hero_id INT NOT NULL REFERENCES Hero(hero_id) ON DELETE RESTRICT,
    team_side side NOT NULL,
    player_slot INT NOT NULL,
    role_id INT REFERENCES Role(role_id) ON DELETE SET NULL,
    kills INT,
    deaths INT,
    assists INT,
    last_hits INT,
    denies INT,
    gpm INT,
    xpm INT,
    hero_damage INT,
    tower_damage INT,
    hero_healing INT,
    CONSTRAINT uq_matchplayer_match_player UNIQUE (match_id, player_id),
    CONSTRAINT uq_matchplayer_match_slot UNIQUE (match_id, player_slot)
);

CREATE TABLE MatchHeroPickBan (
    pickban_id SERIAL PRIMARY KEY,
    match_id BIGINT NOT NULL REFERENCES Match(match_id) ON DELETE CASCADE,
    hero_id INT NOT NULL REFERENCES Hero(hero_id) ON DELETE RESTRICT,
    team_side side NOT NULL,
    action_type draft_action_type NOT NULL,
    action_order INT NOT NULL,
    CONSTRAINT uq_pickban_match_order UNIQUE (match_id, action_order)
);

-- Предметы и покупки

CREATE TABLE Item (
    item_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    cost INT,
    item_type VARCHAR(50)
);

CREATE TABLE MatchPlayerItem (
    mpi_id SERIAL PRIMARY KEY,
    match_player_id BIGINT NOT NULL REFERENCES MatchPlayer(match_player_id) ON DELETE CASCADE,
    item_id INT NOT NULL REFERENCES Item(item_id) ON DELETE RESTRICT,
    acquired_time_sec INT,
    slot_type item_slot_type NOT NULL
);

-- Пользователи аналитической платформы и избранное

CREATE TABLE UserAccount (
    user_id SERIAL PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    display_name VARCHAR(100),
    role user_role NOT NULL DEFAULT 'player_user',
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    last_login_at TIMESTAMPTZ,
    player_id BIGINT UNIQUE REFERENCES Player(player_id) ON DELETE SET NULL
);

CREATE TABLE FavoritePlayer (
    favorite_player_id SERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL REFERENCES UserAccount(user_id) ON DELETE CASCADE,
    player_id BIGINT NOT NULL REFERENCES Player(player_id) ON DELETE CASCADE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    CONSTRAINT uq_favorite_player UNIQUE (user_id, player_id)
);

CREATE TABLE FavoriteTeam (
    favorite_team_id SERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL REFERENCES UserAccount(user_id) ON DELETE CASCADE,
    team_id BIGINT NOT NULL REFERENCES ProTeam(team_id) ON DELETE CASCADE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    CONSTRAINT uq_favorite_team UNIQUE (user_id, team_id)
);

-- Членство в командах и рейтинги

CREATE TABLE TeamMembership (
    membership_id SERIAL PRIMARY KEY,
    team_id BIGINT NOT NULL REFERENCES ProTeam(team_id)  ON DELETE CASCADE,
    player_id BIGINT NOT NULL REFERENCES Player(player_id) ON DELETE CASCADE,
    joined_at TIMESTAMPTZ NOT NULL,
    left_at TIMESTAMPTZ,
    role_in_team VARCHAR(50),
    is_captain BOOLEAN NOT NULL DEFAULT FALSE,
    CONSTRAINT uq_teammembership UNIQUE (team_id, player_id, joined_at)
);

CREATE TABLE RatingSnapshot (
    rating_snapshot_id SERIAL PRIMARY KEY,
    player_id BIGINT NOT NULL REFERENCES Player(player_id) ON DELETE CASCADE,
    rating_type rating_type NOT NULL,
    rating_value INT NOT NULL,
    snapshot_time TIMESTAMPTZ NOT NULL,
    CONSTRAINT uq_rating_snapshot UNIQUE (player_id, rating_type, snapshot_time)
);