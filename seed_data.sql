-- ========================
-- REGIONS (основанные на реальных кластерах Dota 2)
-- ========================
INSERT INTO Region (region_id, name, code) VALUES
(1, 'US West', 'usw'),
(2, 'US East', 'use'),
(3, 'Europe West', 'euw'),
(4, 'Europe East', 'eue'),
(5, 'Singapore', 'sg'),
(6, 'Dubai', 'ae'),
(7, 'Australia', 'au'),
(8, 'Russia', 'ru'),
(9, 'South Africa', 'za'),
(10, 'South America', 'sa'),
(11, 'India', 'in'),
(12, 'China', 'cn'),
(13, 'Japan', 'jp'),
(14, 'Korea', 'kr'),
(15, 'Brazil', 'br');

-- ========================
-- GAME MODES (реальные режимы Dota 2)
-- ========================
INSERT INTO GameMode (game_mode_id, name, description) VALUES
(1, 'All Pick', 'Standard ranked matchmaking'),
(2, 'Captains Mode', 'Competitive drafting mode'),
(3, 'Random Draft', 'Players choose heroes from a random pool'),
(4, 'Single Draft', 'Each player chooses from 3 random heroes'),
(5, 'Turbo', 'Fast-paced casual mode'),
(6, 'Ability Draft', 'Players pick abilities from random heroes'),
(7, 'All Random', 'Everyone gets a random hero'),
(8, 'Event Mode', 'Seasonal or special event modes'),
(9, 'Least Played', 'Choose from your least played heroes'),
(10, 'All Pick — Ranked', 'Ranked version of All Pick');

-- ========================
-- PATCHES (реальные патчи)
-- ========================
INSERT INTO Patch (patch_id, version, release_date) VALUES
(1, '7.31', '2022-02-23'),
(2, '7.32', '2022-08-23'),
(3, '7.33', '2023-04-20'),
(4, '7.34', '2023-08-09'),
(5, '7.35', '2023-12-14'),
(6, '7.36', '2024-05-23'),
(7, '7.36b', '2024-05-30');

-- ========================
-- ROLES (реальные позиции)
-- ========================
INSERT INTO Role (role_id, name, description) VALUES
(1, 'Carry', 'Position 1: core farming role'),
(2, 'Mid', 'Position 2: solo mid lane'),
(3, 'Offlane', 'Position 3: tanky core offlaner'),
(4, 'Soft Support', 'Position 4: roaming support'),
(5, 'Hard Support', 'Position 5: safe lane support');

INSERT INTO Hero (hero_id, name, primary_attribute, attack_type, complexity) VALUES
(1, 'Anti-Mage', 'Agility', 'Melee', 1),
(2, 'Axe', 'Strength', 'Melee', 1),
(3, 'Bane', 'Intelligence', 'Ranged', 2),
(4, 'Bloodseeker', 'Agility', 'Melee', 1),
(5, 'Crystal Maiden', 'Intelligence', 'Ranged', 1),
(6, 'Drow Ranger', 'Agility', 'Ranged', 1),
(7, 'Earthshaker', 'Strength', 'Melee', 2),
(8, 'Juggernaut', 'Agility', 'Melee', 1),
(9, 'Mirana', 'Agility', 'Ranged', 2),
(10, 'Morphling', 'Agility', 'Ranged', 3),
(11, 'Shadow Fiend', 'Agility', 'Ranged', 2),
(12, 'Phantom Lancer', 'Agility', 'Melee', 3),
(13, 'Puck', 'Intelligence', 'Ranged', 3),
(14, 'Pudge', 'Strength', 'Melee', 2),
(15, 'Razor', 'Agility', 'Ranged', 1),
(16, 'Sand King', 'Strength', 'Melee', 2),
(17, 'Storm Spirit', 'Intelligence', 'Ranged', 3),
(18, 'Sven', 'Strength', 'Melee', 1),
(19, 'Tiny', 'Strength', 'Melee', 2),
(20, 'Vengeful Spirit', 'Agility', 'Ranged', 1),
(21, 'Windranger', 'Intelligence', 'Ranged', 2),
(22, 'Zeus', 'Intelligence', 'Ranged', 1),
(23, 'Kunkka', 'Strength', 'Melee', 2),
(24, 'Lina', 'Intelligence', 'Ranged', 2),
(25, 'Lion', 'Intelligence', 'Ranged', 1),
(26, 'Witch Doctor', 'Intelligence', 'Ranged', 2),
(27, 'Luna', 'Agility', 'Ranged', 1),
(28, 'Dragon Knight', 'Strength', 'Melee', 1),
(29, 'Dazzle', 'Intelligence', 'Ranged', 2),
(30, 'Clockwerk', 'Strength', 'Melee', 2),
(31, 'Nature''s Prophet', 'Intelligence', 'Ranged', 2),
(32, 'Phantom Assassin', 'Agility', 'Melee', 1),
(33, 'Viper', 'Agility', 'Ranged', 1),
(34, 'Warlock', 'Intelligence', 'Ranged', 1),
(35, 'Weaver', 'Agility', 'Ranged', 2),
(36, 'Bristleback', 'Strength', 'Melee', 1),
(37, 'Tinker', 'Intelligence', 'Ranged', 3),
(38, 'Ursa', 'Agility', 'Melee', 1),
(39, 'Venomancer', 'Agility', 'Ranged', 2),
(40, 'Faceless Void', 'Agility', 'Melee', 2),
(41, 'Wraith King', 'Strength', 'Melee', 1),
(42, 'Queen of Pain', 'Intelligence', 'Ranged', 2),
(43, 'Death Prophet', 'Intelligence', 'Ranged', 2),
(44, 'Outworld Destroyer', 'Intelligence', 'Ranged', 3),
(45, 'Beastmaster', 'Strength', 'Melee', 2),
(46, 'Enigma', 'Intelligence', 'Ranged', 3),
(47, 'Slark', 'Agility', 'Melee', 2),
(48, 'Shadow Demon', 'Intelligence', 'Ranged', 3),
(49, 'Huskar', 'Strength', 'Ranged', 2),
(50, 'Invoker', 'Intelligence', 'Ranged', 3);

-- Игроки

INSERT INTO Player (player_id, nickname, country_code, created_at, is_pro) VALUES
(1, 'Miracle-', 'JO', NOW(), true),
(2, 'N0tail', 'DK', NOW(), true),
(3, 'Topson', 'FI', NOW(), true),
(4, 'Ana', 'AU', NOW(), true),
(5, 'Ceb', 'FR', NOW(), true),
(6, 'Yatoro', 'UA', NOW(), true),
(7, 'Collapse', 'RU', NOW(), true),
(8, 'Miposhka', 'RU', NOW(), true),
(9, 'Quinn', 'US', NOW(), true),
(10, 'Cr1t-', 'DK', NOW(), true),
(11, 'Arteezy', 'CA', NOW(), true),
(12, 'SumaiL', 'PK', NOW(), true),
(13, 'KuroKy', 'DE', NOW(), true),
(14, 'GH', 'LB', NOW(), true),
(15, 'Puppey', 'EE', NOW(), true),
(16, 'Nisha', 'PL', NOW(), true),
(17, 'gpk', 'RU', NOW(), true),
(18, 'Nightfall', 'RU', NOW(), true),
(19, 'Pure', 'RU', NOW(), true),
(20, 'TORONTOTOKYO', 'RU', NOW(), true),
(21, 'Somnus', 'CN', NOW(), true),
(22, 'Ame', 'CN', NOW(), true),
(23, 'Chalice', 'CN', NOW(), true),
(24, 'Kaka', 'CN', NOW(), true),
(25, 'Nine', 'DE', NOW(), true),
(26, 'Skiter', 'IS', NOW(), true),
(27, '33', 'IL', NOW(), true),
(28, 'Resolut1on', 'UA', NOW(), true),
(29, 'No[o]ne', 'UA', NOW(), true),
(30, 'Sneyking', 'US', NOW(), true),
(31, 'Gorgc', 'SE', NOW(), false),
(32, 'AdmiralBulldog', 'SE', NOW(), false),
(33, 'BSJ', 'US', NOW(), false),
(34, 'Jenkins', 'CA', NOW(), false),
(35, 'Qojqva', 'DE', NOW(), false),
(36, 'Wagamama', 'SE', NOW(), false),
(37, 'Dendi', 'UA', NOW(), false),
(38, 'SingSing', 'NL', NOW(), false),
(39, 'PurgeGamers', 'US', NOW(), false),
(40, 'BananaSlamJamma', 'US', NOW(), false),
(41, 'ShadowRazerr', 'RU', NOW(), false),
(42, 'MoonSlayer', 'RU', NOW(), false),
(43, 'K1llerBee', 'PL', NOW(), false),
(44, 'DragonLord', 'US', NOW(), false),
(45, 'SilentStorm', 'DE', NOW(), false),
(46, 'ToxicAvocado', 'FR', NOW(), false),
(47, 'LazySniper', 'GB', NOW(), false),
(48, 'QuantumVoid', 'SE', NOW(), false),
(49, 'ZeroCool', 'US', NOW(), false),
(50, 'SpiritBreakerIRL', 'UA', NOW(), false),
(51, 'MegaCreep', 'CA', NOW(), false),
(52, 'BackdoorBilly', 'AU', NOW(), false),
(53, 'CarryOrFeed', 'DK', NOW(), false),
(54, 'OfflaneEnjoyer', 'DE', NOW(), false),
(55, 'SupportDiff', 'US', NOW(), false),
(56, 'JunglerAndy', 'PH', NOW(), false),
(57, '5MinBKB', 'RU', NOW(), false),
(58, 'BKBTP', 'UA', NOW(), false),
(59, 'CourierKiller', 'BY', NOW(), false),
(60, 'SmokeOfDeceit', 'US', NOW(), false),
(61, 'RoshanSlayer', 'IN', NOW(), false),
(62, 'MantaStyle', 'BR', NOW(), false),
(63, 'Divine99', 'PL', NOW(), false),
(64, 'DustDetector', 'PK', NOW(), false),
(65, 'LastPickBro', 'SE', NOW(), false),
(66, 'InvokerOnly', 'US', NOW(), false),
(67, 'OnlyPudge', 'RU', NOW(), false),
(68, 'TinkerEnjoyer', 'CN', NOW(), false),
(69, 'NoWardNoWin', 'RU', NOW(), false),
(70, 'DewardMaster', 'FI', NOW(), false),
(71, 'SkadiEnjoyer', 'UA', NOW(), false),
(72, 'MissClick', 'NL', NOW(), false),
(73, 'ManaBurn', 'CA', NOW(), false),
(74, 'CheeseStealer', 'DE', NOW(), false),
(75, 'AncientFarmer', 'RU', NOW(), false),
(76, 'MMR_Destroyer', 'US', NOW(), false),
(77, 'CourierAFK', 'UA', NOW(), false),
(78, 'SmokeGanker', 'RO', NOW(), false),
(79, 'RuneController', 'SE', NOW(), false),
(80, 'NeutralCreeper', 'DE', NOW(), false),
(81, 'TiltMaster3000', 'US', NOW(), false),
(82, 'CliffTrapper', 'PH', NOW(), false),
(83, 'AFKPush', 'IN', NOW(), false),
(84, 'SplitPusher', 'BR', NOW(), false),
(85, 'GGgoNext', 'RU', NOW(), false),
(86, 'NoBuyback', 'TR', NOW(), false),
(87, 'SaveTP', 'US', NOW(), false),
(88, 'MidasEveryGame', 'PL', NOW(), false),
(89, 'RadianceRush', 'UA', NOW(), false),
(90, 'PullSmallCamp', 'FI', NOW(), false),
(91, 'MathTeacher', 'US', NOW(), false),
(92, 'CatLover', 'DE', NOW(), false),
(93, 'BirdWatcher', 'SE', NOW(), false),
(94, 'OceanMan', 'CA', NOW(), false),
(95, 'FrostGiant', 'NO', NOW(), false),
(96, 'HotSauce', 'US', NOW(), false),
(97, 'LemonTree', 'UA', NOW(), false),
(98, 'ElderTitanMain', 'RU', NOW(), false),
(99, 'LyricalGamer', 'US', NOW(), false),
(100,'Slacks', 'US', NOW(), false);


-- Предметы
INSERT INTO Item (item_id, name, cost, item_type) VALUES
-- Basic Items
(1, 'Blades of Attack', 1000, 'Basic'),
(2, 'Chainmail', 550, 'Basic'),
(3, 'Claymore', 1350, 'Basic'),
(4, 'Helm of Iron Will', 975, 'Basic'),
(5, 'Javelin', 1100, 'Basic'),
(6, 'Mithril Hammer', 1600, 'Basic'),
(7, 'Platemail', 1400, 'Basic'),
(8, 'Quarterstaff', 875, 'Basic'),
(9, 'Quelling Blade', 100, 'Basic'),
(10, 'Ring of Protection', 175, 'Basic'),
-- Attribute Items
(11, 'Gauntlets of Strength', 135, 'Attribute'),
(12, 'Slippers of Agility', 135, 'Attribute'),
(13, 'Mantle of Intelligence', 135, 'Attribute'),
(14, 'Iron Branch', 50, 'Attribute'),
(15, 'Belt of Strength', 450, 'Attribute'),
(16, 'Band of Elvenskin', 450, 'Attribute'),
(17, 'Robe of the Magi', 450, 'Attribute'),
(18, 'Circlet', 155, 'Attribute'),
(19, 'Ogre Axe', 1000, 'Attribute'),
(20, 'Blade of Alacrity', 1000, 'Attribute'),
(21, 'Staff of Wizardry', 1000, 'Attribute'),
(22, 'Ultimate Orb', 2800, 'Attribute'),
-- Consumables
(23, 'Faerie Fire', 65, 'Consumable'),
(24, 'Enchanted Mango', 65, 'Consumable'),
(25, 'Clarity', 50, 'Consumable'),
(26, 'Healing Salve', 110, 'Consumable'),
(27, 'Tango', 90, 'Consumable'),
(28, 'Tango (Shared)', 90, 'Consumable'),
(29, 'Town Portal Scroll', 100, 'Consumable'),
(30, 'Dust of Appearance', 80, 'Consumable'),
(31, 'Animal Courier', 50, 'Consumable'),
(32, 'Flying Courier', 100, 'Consumable'),
(33, 'Observer Ward', 0, 'Consumable'),
(34, 'Sentry Ward', 50, 'Consumable'),
(35, 'Smoke of Deceit', 50, 'Consumable'),
-- Miscellaneous
(36, 'Magic Stick', 200, 'Miscellaneous'),
(37, 'Magic Wand', 450, 'Miscellaneous'),
(38, 'Soul Ring', 805, 'Miscellaneous'),
(39, 'Ghost Scepter', 1500, 'Miscellaneous'),
(40, 'Blink Dagger', 2250, 'Miscellaneous'),
(41, 'Shadow Amulet', 1000, 'Miscellaneous'),
(42, 'Glimmer Cape', 1950, 'Miscellaneous'),
(43, 'Force Staff', 2200, 'Miscellaneous'),
(44, 'Aether Lens', 2275, 'Miscellaneous'),
(45, 'Wind Waker', 6825, 'Miscellaneous'),
(46, 'Gem of True Sight', 900, 'Miscellaneous'),
-- Boots
(47, 'Power Treads', 1400, 'Boots'),
(48, 'Phase Boots', 1500, 'Boots'),
(49, 'Arcane Boots', 1300, 'Boots'),
(50, 'Guardian Greaves', 5100, 'Boots'),
(51, 'Tranquil Boots', 925, 'Boots'),
(52, 'Boots of Travel', 2500, 'Boots'),
(53, 'Boots of Travel 2', 4500, 'Boots'),
-- Early Game
(54, 'Bracer', 505, 'Early'),
(55, 'Wraith Band', 505, 'Early'),
(56, 'Null Talisman', 505, 'Early'),
(57, 'Ring of Basilius', 425, 'Early'),
(58, 'Buckler', 425, 'Early'),
(59, 'Urn of Shadows', 880, 'Early'),
(60, 'Headdress', 425, 'Early'),
(61, 'Ring of Health', 825, 'Early'),
(62, 'Void Stone', 850, 'Early'),
(63, 'Holy Locket', 0, 'Early'),
-- Weapons
(64, 'Crystalys', 1950, 'Weapon'),
(65, 'Armlet of Mordiggian', 2500, 'Weapon'),
(66, 'Mask of Madness', 1775, 'Weapon'),
(67, 'Dragon Lance', 1900, 'Weapon'),
(68, 'Black King Bar', 4050, 'Weapon'),
(69, 'Aghanims Scepter', 4200, 'Weapon'),
(70, 'Aghanims Shard', 1400, 'Weapon'),
(71, 'Refresher Orb', 5000, 'Weapon'),
(72, 'Scythe of Vyse', 5675, 'Weapon'),
(73, 'Orchid Malevolence', 3475, 'Weapon'),
(74, 'Bloodthorn', 6625, 'Weapon'),
(75, 'Ethereal Blade', 5375, 'Weapon'),
(76, 'Shadow Blade', 3000, 'Weapon'),
(77, 'Silver Edge', 5450, 'Weapon'),
(78, 'Manta Style', 4600, 'Weapon'),
(79, 'Radiance', 4700, 'Weapon'),
(80, 'Butterfly', 4975, 'Weapon'),
(81, 'Daedalus', 5150, 'Weapon'),
(82, 'Monkey King Bar', 4900, 'Weapon'),
(83, 'Divine Rapier', 5800, 'Weapon'),
(84, 'Abyssal Blade', 6250, 'Weapon'),
(85, 'Battle Fury', 4100, 'Weapon'),
(86, 'Desolator', 3500, 'Weapon'),
(87, 'Meteor Hammer', 2350, 'Weapon'),
(88, 'Nullifier', 4375, 'Weapon'),
(89, 'Hurricane Pike', 4450, 'Weapon'),
-- Armor
(90, 'Vanguard', 1825, 'Armor'),
(91, 'Hood of Defiance', 1500, 'Armor'),
(92, 'Pipe of Insight', 3475, 'Armor'),
(93, 'Crimson Guard', 3725, 'Armor'),
(94, 'Assault Cuirass', 5125, 'Armor'),
(95, 'Shivas Guard', 5175, 'Armor'),
(96, 'Lotus Orb', 3850, 'Armor'),
(97, 'Mekansm', 1775, 'Armor'),
(98, 'Vladmirs Offering', 2400, 'Armor'),
-- Neutral Items (Tier 1)
(100, 'Arcane Ring', 0, 'Neutral'),
(101, 'Broom Handle', 0, 'Neutral'),
(102, 'Chipped Vest', 0, 'Neutral'),
(103, 'Fairy''s Trinket', 0, 'Neutral'),
(104, 'Ironwood Tree', 0, 'Neutral'),
(105, 'Keen Optic', 0, 'Neutral'),
(106, 'Ocean Heart', 0, 'Neutral'),
(107, 'Possessed Mask', 0, 'Neutral'),
(108, 'Trusty Shovel', 0, 'Neutral'),
(109, 'Faded Broach', 0, 'Neutral'),
-- Neutral Items (Tier 2)
(110, 'Grove Bow', 0, 'Neutral'),
(111, 'Imp Claw', 0, 'Neutral'),
(112, 'Pupil''s Gift', 0, 'Neutral'),
(113, 'Ring of Aquila', 0, 'Neutral'),
(114, 'Vambrace', 0, 'Neutral'),
(115, 'Dragon Scale', 0, 'Neutral'),
(116, 'Essence Ring', 0, 'Neutral'),
(117, 'Quickening Charm', 0, 'Neutral'),
(118, 'Philosopher''s Stone', 0, 'Neutral'),
-- Neutral Items (Tier 3)
(120, 'Elven Tunic', 0, 'Neutral'),
(121, 'Cloak of Flames', 0, 'Neutral'),
(122, 'Ceremonial Robe', 0, 'Neutral'),
(123, 'Psychic Headband', 0, 'Neutral'),
(124, 'Spider Legs', 0, 'Neutral'),
(125, 'Titan Sliver', 0, 'Neutral'),
(126, 'Mind Breaker', 0, 'Neutral'),
(127, 'Third Eye', 0, 'Neutral'),
(128, 'Paladin Sword', 0, 'Neutral'),
-- Neutral Items (Tier 4)
(130, 'Ninja Gear', 0, 'Neutral'),
(131, 'Illusionist''s Cape', 0, 'Neutral'),
(132, 'Trickster Cloak', 0, 'Neutral'),
(133, 'Fusion Rune', 0, 'Neutral'),
(134, 'Minotaur Horn', 0, 'Neutral'),
(135, 'The Leveller', 0, 'Neutral'),
(136, 'Timeless Relic', 0, 'Neutral'),
(137, 'Spell Prism', 0, 'Neutral'),
(138, 'Penta-Edged Sword', 0, 'Neutral'),
-- Neutral Items (Tier 5)
(140, 'Mirror Shield', 0, 'Neutral'),
(141, 'Apex', 0, 'Neutral'),
(142, 'Ballista', 0, 'Neutral'),
(143, 'Book of Shadows', 0, 'Neutral'),
(144, 'Ex Machina', 0, 'Neutral'),
(145, 'Fallen Sky', 0, 'Neutral'),
(146, 'Seer Stone', 0, 'Neutral'),
(147, 'Pirate Hat', 0, 'Neutral'),
(148, 'Giant''s Ring', 0, 'Neutral'),
-- Roshan Drops
(150, 'Aegis of the Immortal', 0, 'Roshan'),
(151, 'Cheese', 0, 'Roshan'),
(152, 'Refresher Shard', 0, 'Roshan'),
(153, 'Aghanims Blessing', 0, 'Roshan'),
-- Other Important Items
(160, 'Heart of Tarrasque', 5000, 'Health'),
(161, 'Satanic', 5050, 'Damage'),
(162, 'Eye of Skadi', 5300, 'Attribute'),
(163, 'Mjollnir', 5500, 'Weapon'),
(164, 'Bloodstone', 4400, 'Mana'),
(165, 'Linkens Sphere', 4600, 'Miscellaneous'),
(166, 'Helm of the Dominator', 2625, 'Helmet'),
(167, 'Helm of the Overlord', 6175, 'Helmet');

-- Профессиональные команды
INSERT INTO ProTeam (team_id, name, tag, region_id, founded_at, disbanded_at) VALUES
(1, 'Team Spirit', 'TS', 1, '2015-12-01', NULL),
(2, 'OG', 'OG', 1, '2015-10-31', NULL),
(3, 'Team Liquid', 'TL', 1, '2000-01-01', NULL),
(4, 'Gaimin Gladiators', 'GG', 1, '2021-02-01', NULL),
(5, 'PSG.LGD', 'LGD', 2, '2009-05-15', NULL),
(6, 'Xtreme Gaming', 'XG', 2, '2021-01-01', NULL),
(7, 'Tundra Esports', 'TUND', 1, '2019-01-01', NULL),
(8, 'BetBoom Team', 'BB', 3, '2022-04-01', NULL),
(9, 'Natus Vincere', 'NAVI', 3, '2009-12-20', '2024-01-01'),
(10, 'Evil Geniuses', 'EG', 4, '1999-01-01', '2023-12-31'),
(11, 'Shopify Rebellion', 'SR', 4, '2023-01-01', NULL),
(12, 'Thunder Awaken', 'TA', 5, '2020-01-01', NULL);

INSERT INTO TeamMembership (membership_id, team_id, player_id, joined_at, left_at, role_in_team, is_captain) VALUES
-- Team Spirit
(1, 1, 6, '2020-12-01', NULL, 'Carry', false),
(2, 1, 7, '2020-12-01', NULL, 'Offlane', false),
(3, 1, 20, '2020-12-01', '2023-12-01', 'Mid', false),
(4, 1, 8, '2020-12-01', NULL, 'Position 5', true),
(5, 1, 17, '2023-01-01', NULL, 'Mid', false),
-- OG
(6, 2, 2, '2015-10-31', '2021-01-01', 'Captain', true),
(7, 2, 3, '2018-06-01', '2023-01-01', 'Mid', false),
(8, 2, 4, '2018-06-01', '2021-01-01', 'Carry', false),
(9, 2, 5, '2016-01-01', '2021-01-01', 'Offlane', false),
-- Team Liquid
(10, 3, 1, '2015-01-01', '2016-01-01', 'Mid', false),
(11, 3, 13, '2015-01-01', '2019-10-01', 'Captain', true),
(12, 3, 14, '2017-01-01', '2019-10-01', 'Support', false),
(13, 3, 16, '2022-01-01', NULL, 'Mid', false),
-- PSG.LGD
(14, 5, 21, '2018-01-01', '2022-01-01', 'Mid', false),
(15, 5, 22, '2017-01-01', '2022-01-01', 'Carry', false),
(16, 5, 23, '2018-01-01', '2019-01-01', 'Offlane', false),
(17, 5, 24, '2017-01-01', '2020-01-01', 'Support', false),
-- Tundra Esports
(18, 7, 25, '2021-01-01', NULL, 'Mid', false),
(19, 7, 26, '2021-01-01', NULL, 'Carry', false),
(20, 7, 27, '2021-01-01', NULL, 'Offlane', false),
(21, 7, 30, '2021-01-01', '2021-12-01', 'Position 5', false),
(22, 7, 28, '2022-01-01', '2023-01-01', 'Offlane', false),
-- BetBoom Team
(23, 8, 18, '2022-04-01', NULL, 'Carry', false),
(24, 8, 19, '2022-04-01', NULL, 'Offlane', false),
-- Shopify Rebellion (ex-EG)
(25, 11, 11, '2023-01-01', NULL, 'Carry', false),
(26, 11, 10, '2023-01-01', NULL, 'Support', false);

-- ===========================
-- MATCH 1
-- ===========================
INSERT INTO Match (start_time, duration_seconds, region_id, game_mode_id, patch_id, avg_mmr, winner_side)
VALUES ('2024-02-01 18:30:00', 2340, 3, 1, 6, 7200, 'radiant');

-- Radiant / Dire teams
INSERT INTO MatchTeam (match_id, side, team_id, total_kills, total_deaths, total_gold, total_xp, towers_destroyed, roshan_kills)
VALUES
    (1, 'radiant', 1, 34, 22, 61000, 69000, 7, 1),
    (1, 'dire',    3, 22, 34, 54000, 62000, 2, 0);

-- Players (10 players)
INSERT INTO MatchPlayer (match_id, player_id, hero_id, team_side, player_slot, role_id,
    kills, deaths, assists, last_hits, denies, gpm, xpm, hero_damage, tower_damage, hero_healing)
VALUES
    (1, 6, 8, 'radiant', 0, 1, 12, 3, 9, 540, 22, 650, 720, 31000, 4200, 0),
    (1, 7, 28, 'radiant', 1, 3, 3, 5, 18, 210, 9, 380, 520, 14000, 1600, 0),
    (1, 17, 24, 'radiant', 2, 2, 9, 4, 12, 480, 14, 490, 680, 28000, 3400, 0),
    (1, 8, 26, 'radiant', 3, 5, 2, 4, 20, 160, 4, 270, 420, 8000, 800, 9000),
    (1, 20, 5, 'radiant', 4, 5, 1, 14, 6, 50, 1, 220, 380, 5000, 600, 3000),

    (1, 11, 32, 'dire', 128, 1, 10, 7, 2, 480, 16, 600, 680, 27000, 3500, 0),
    (1, 13, 23, 'dire', 129, 3, 4, 6, 14, 330, 8, 430, 540, 16000, 1100, 0),
    (1, 24, 13, 'dire', 130, 2, 5, 5, 10, 410, 12, 510, 600, 21000, 1800, 0),
    (1, 10, 34, 'dire', 131, 5, 1, 7, 22, 110, 3, 300, 470, 9000, 700, 7000),
    (1, 14, 25, 'dire', 132, 5, 2, 12, 4, 70, 2, 240, 410, 6000, 500, 4000);

-- ===========================
-- MATCH 2
-- ===========================
INSERT INTO Match (start_time, duration_seconds, region_id, game_mode_id, patch_id, avg_mmr, winner_side)
VALUES ('2024-02-03 16:10:00', 1980, 8, 10, 6, 6800, 'dire');

INSERT INTO MatchTeam (match_id, side, team_id, total_kills, total_deaths, total_gold, total_xp, towers_destroyed, roshan_kills)
VALUES
    (2, 'radiant', NULL, 18, 29, 47000, 52000, 2, 0),
    (2, 'dire',  8,  29, 18, 56000, 64000, 6, 1);

INSERT INTO MatchPlayer (match_id, player_id, hero_id, team_side, player_slot, role_id,
    kills, deaths, assists, last_hits, denies, gpm, xpm, hero_damage, tower_damage, hero_healing)
VALUES
    (2, 31, 33, 'radiant', 0, 1, 4, 6, 5, 310, 9, 420, 480, 15000, 1200, 0),
    (2, 35, 17, 'radiant', 1, 2, 2, 7, 8, 180, 3, 260, 360, 7000, 500, 0),
    (2, 57, 14, 'radiant', 2, 3, 3, 8, 3, 120, 2, 210, 290, 5000, 400, 4000),
    (2, 66, 5, 'radiant', 3, 5, 1, 10, 11, 30, 1, 180, 300, 4000, 300, 6000),
    (2, 69, 40, 'radiant', 4, 5, 1, 6, 2, 40, 1, 150, 250, 3000, 200, 2000),

    (2, 6, 32, 'dire', 128, 1, 11, 3, 10, 490, 14, 640, 690, 29000, 4000, 0),
    (2, 7, 30, 'dire', 129, 3, 4, 5, 13, 220, 7, 410, 520, 15000, 1500, 0),
    (2, 17, 21, 'dire', 130, 2, 6, 4, 7, 350, 10, 520, 640, 26000, 2300, 0),
    (2, 8, 26, 'dire', 131, 5, 1, 9, 19, 180, 4, 280, 470, 8000, 700, 9000),
    (2, 20, 11, 'dire', 132, 2, 7, 2, 20, 60, 2, 240, 320, 9000, 600, 0);

-- ===========================
-- MATCH 3
-- ===========================
INSERT INTO Match (start_time, duration_seconds, region_id, game_mode_id, patch_id, avg_mmr, winner_side)
VALUES ('2024-02-05 21:00:00', 3120, 1, 2, 7, 7600, 'radiant');

INSERT INTO MatchTeam (match_id, side, team_id, total_kills, total_deaths, total_gold, total_xp, towers_destroyed, roshan_kills)
VALUES
    (3, 'radiant', 4, 45, 28, 80000, 94000, 9, 2),
    (3, 'dire', 2, 28, 45, 69000, 77000, 3, 0);

INSERT INTO MatchPlayer (match_id, player_id, hero_id, team_side, player_slot, role_id,
    kills, deaths, assists, last_hits, denies, gpm, xpm, hero_damage, tower_damage, hero_healing)
VALUES
    (3, 25, 11, 'radiant', 0, 2, 14, 4, 12, 620, 20, 720, 820, 41000, 5000, 0),
    (3, 26, 38, 'radiant', 1, 1, 10, 6, 9, 540, 18, 680, 750, 33000, 4200, 0),
    (3, 27, 45, 'radiant', 2, 3, 7, 7, 15, 300, 6, 420, 500, 15000, 2000, 0),
    (3, 30, 5, 'radiant', 3, 5, 2, 8, 24, 140, 5, 280, 390, 9000, 700, 11000),
    (3, 28, 24, 'radiant', 4, 2, 12, 3, 18, 80, 1, 240, 350, 7000, 900, 0),

    (3, 2, 13, 'dire', 128, 2, 8, 9, 10, 440, 14, 590, 640, 25000, 2600, 0),
    (3, 3, 7, 'dire', 129, 4, 3, 7, 17, 210, 5, 390, 530, 12000, 900, 0),
    (3, 4, 39, 'dire', 130, 4, 5, 6, 19, 310, 9, 460, 590, 20000, 1600, 0),
    (3, 5, 14, 'dire', 131, 5, 2, 6, 21, 130, 3, 310, 450, 8000, 700, 4000),
    (3, 10, 32, 'dire', 132, 1, 10, 4, 22, 520, 11, 650, 700, 30000, 3400, 0);

-- ===========================
-- MATCH 4
-- ===========================
INSERT INTO Match (start_time, duration_seconds, region_id, game_mode_id, patch_id, avg_mmr, winner_side)
VALUES ('2024-02-07 14:20:00', 1760, 6, 1, 6, 6000, 'dire');

INSERT INTO MatchTeam (match_id, side, team_id, total_kills, total_deaths, total_gold, total_xp, towers_destroyed, roshan_kills)
VALUES
    (4, 'radiant', NULL, 20, 27, 48000, 53000, 3, 0),
    (4, 'dire', 12, 27, 20, 55000, 63000, 6, 1);

INSERT INTO MatchPlayer (match_id, player_id, hero_id, team_side, player_slot, role_id,
    kills, deaths, assists, last_hits, denies, gpm, xpm, hero_damage, tower_damage, hero_healing)
VALUES
    (4, 41, 29, 'radiant', 0, 2, 5, 7, 8, 320, 10, 400, 480, 12000, 1500, 0),
    (4, 42, 37, 'radiant', 1, 2, 3, 8, 4, 260, 7, 350, 420, 9000, 900, 0),
    (4, 43, 15, 'radiant', 2, 3, 4, 9, 6, 150, 3, 260, 330, 6000, 500, 0),
    (4, 44, 47, 'radiant', 3, 5, 1, 10, 14, 90, 1, 180, 300, 3000, 200, 5000),
    (4, 45, 18, 'radiant', 4, 1, 6, 5, 12, 40, 1, 210, 260, 4000, 300, 0),

    (4, 6, 40, 'dire', 128, 1, 9, 2, 13, 480, 16, 650, 720, 29000, 4200, 0),
    (4, 7, 22, 'dire', 129, 5, 4, 5, 16, 280, 10, 450, 520, 16000, 1400, 0),
    (4, 17, 49, 'dire', 130, 2, 7, 4, 9, 350, 12, 500, 580, 20000, 2000, 0),
    (4, 8, 26, 'dire', 131, 5, 1, 12, 19, 150, 4, 290, 370, 8000, 700, 9000),
    (4, 20, 43, 'dire', 132, 3, 6, 2, 21, 60, 2, 230, 260, 9000, 600, 0);

-- ===========================
-- MATCH 5
-- ===========================
INSERT INTO Match (start_time, duration_seconds, region_id, game_mode_id, patch_id, avg_mmr, winner_side)
VALUES ('2024-02-10 19:55:00', 2890, 12, 2, 7, 8300, 'radiant');

INSERT INTO MatchTeam (match_id, side, team_id, total_kills, total_deaths, total_gold, total_xp, towers_destroyed, roshan_kills)
VALUES
    (5, 'radiant', 5, 52, 30, 91000, 106000, 10, 3),
    (5, 'dire', 7, 30, 52, 75000, 83000, 4, 0);

INSERT INTO MatchPlayer (match_id, player_id, hero_id, team_side, player_slot, role_id,
    kills, deaths, assists, last_hits, denies, gpm, xpm, hero_damage, tower_damage, hero_healing)
VALUES
    (5, 21, 13, 'radiant', 0, 2, 18, 5, 16, 690, 21, 770, 920, 48000, 5600, 0),
    (5, 22, 11, 'radiant', 1, 1, 14, 6, 14, 640, 19, 740, 880, 42000, 4200, 0),
    (5, 23, 45, 'radiant', 2, 3, 8, 8, 20, 350, 7, 460, 540, 17000, 2200, 0),
    (5, 24, 5, 'radiant', 3, 5, 3, 7, 30, 110, 4, 300, 420, 12000, 900, 13000),
    (5, 25, 32, 'radiant', 4, 1, 9, 3, 18, 60, 1, 230, 300, 10000, 750, 0),

    (5, 26, 17, 'dire', 128, 2, 10, 7, 11, 520, 14, 650, 700, 30000, 3500, 0),
    (5, 27, 28, 'dire', 129, 3, 6, 5, 19, 300, 7, 410, 550, 16000, 1400, 0),
    (5, 30, 23, 'dire', 130, 2, 6, 8, 16, 400, 11, 520, 630, 21000, 2000, 0),
    (5, 3, 36, 'dire', 131, 5, 1, 14, 22, 130, 4, 290, 360, 8000, 900, 9000),
    (5, 10, 39, 'dire', 132, 3, 4, 12, 24, 70, 2, 230, 260, 9000, 700, 0);

-- ===========================
-- MATCH 1 - DRAFT (PICKS/BANS)
-- ===========================
INSERT INTO MatchHeroPickBan (match_id, hero_id, team_side, action_type, action_order) VALUES
    -- Bans
    (1, 1,  'radiant', 'ban',  1),  -- Radiant банит Anti-Mage
    (1, 46, 'dire',    'ban',  2),  -- Dire банит Enigma
    (1, 13, 'radiant', 'ban',  3),  -- Radiant банит Puck
    (1, 50, 'dire',    'ban',  4),  -- Dire банит Invoker

    -- Radiant picks
    (1, 8,  'radiant', 'pick', 5),  -- Juggernaut
    (1, 28, 'radiant', 'pick', 7),  -- Dragon Knight
    (1, 24, 'radiant', 'pick', 9),  -- Lina
    (1, 26, 'radiant', 'pick', 11), -- Witch Doctor
    (1, 5,  'radiant', 'pick', 13), -- Crystal Maiden

    -- Dire picks
    (1, 32, 'dire', 'pick', 6),     -- Phantom Assassin
    (1, 23, 'dire', 'pick', 8),     -- Kunkka
    (1, 13, 'dire', 'pick', 10),    -- Puck
    (1, 34, 'dire', 'pick', 12),    -- Warlock
    (1, 25, 'dire', 'pick', 14);    -- Lion

-- ===========================
-- MATCH 1 - ITEMS (RADIANT)
-- ===========================

-- Yatoro (player_id = 6, hero_id = 8 - Juggernaut)
INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 47, 600, 'inventory'  -- Power Treads
FROM MatchPlayer WHERE match_id = 1 AND player_id = 6;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 85, 1200, 'inventory' -- Battle Fury
FROM MatchPlayer WHERE match_id = 1 AND player_id = 6;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 68, 1600, 'inventory' -- Black King Bar
FROM MatchPlayer WHERE match_id = 1 AND player_id = 6;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 120, 1500, 'neutral'  -- Elven Tunic
FROM MatchPlayer WHERE match_id = 1 AND player_id = 6;


-- Collapse (player_id = 7, hero_id = 28 - Dragon Knight)
INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 47, 500, 'inventory'  -- Power Treads
FROM MatchPlayer WHERE match_id = 1 AND player_id = 7;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 90, 900, 'inventory'  -- Vanguard
FROM MatchPlayer WHERE match_id = 1 AND player_id = 7;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 94, 1700, 'inventory' -- Assault Cuirass
FROM MatchPlayer WHERE match_id = 1 AND player_id = 7;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 125, 1400, 'neutral'  -- Titan Sliver
FROM MatchPlayer WHERE match_id = 1 AND player_id = 7;


-- gpk (player_id = 17, hero_id = 24 - Lina)
INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 48, 520, 'inventory'  -- Phase Boots
FROM MatchPlayer WHERE match_id = 1 AND player_id = 17;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 73, 1000, 'inventory' -- Orchid Malevolence
FROM MatchPlayer WHERE match_id = 1 AND player_id = 17;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 81, 1800, 'inventory' -- Daedalus
FROM MatchPlayer WHERE match_id = 1 AND player_id = 17;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 121, 1600, 'neutral'  -- Cloak of Flames
FROM MatchPlayer WHERE match_id = 1 AND player_id = 17;


-- Miposhka (player_id = 8, hero_id = 26 - Witch Doctor, pos5)
INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 49, 400, 'inventory'  -- Arcane Boots
FROM MatchPlayer WHERE match_id = 1 AND player_id = 8;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 97, 900, 'inventory'  -- Mekansm
FROM MatchPlayer WHERE match_id = 1 AND player_id = 8;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 42, 1400, 'inventory' -- Glimmer Cape
FROM MatchPlayer WHERE match_id = 1 AND player_id = 8;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 118, 1300, 'neutral'  -- Philosopher's Stone
FROM MatchPlayer WHERE match_id = 1 AND player_id = 8;


-- TORONTOTOKYO (player_id = 20, hero_id = 5 - Crystal Maiden, pos5)
INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 49, 380, 'inventory'  -- Arcane Boots
FROM MatchPlayer WHERE match_id = 1 AND player_id = 20;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 57, 800, 'inventory'  -- Ring of Basilius
FROM MatchPlayer WHERE match_id = 1 AND player_id = 20;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 33, 300, 'inventory'  -- Observer Ward
FROM MatchPlayer WHERE match_id = 1 AND player_id = 20;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 106, 1100, 'neutral'  -- Ocean Heart
FROM MatchPlayer WHERE match_id = 1 AND player_id = 20;

-- ===========================
-- MATCH 1 - ITEMS (DIRE)
-- ===========================

-- Arteezy (player_id = 11, hero_id = 32 - Phantom Assassin)
INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 47, 540, 'inventory'
FROM MatchPlayer WHERE match_id = 1 AND player_id = 11;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 78, 1100, 'inventory'  -- Manta Style
FROM MatchPlayer WHERE match_id = 1 AND player_id = 11;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 68, 1500, 'inventory'  -- BKB
FROM MatchPlayer WHERE match_id = 1 AND player_id = 11;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 111, 1400, 'neutral'   -- Imp Claw
FROM MatchPlayer WHERE match_id = 1 AND player_id = 11;


-- KuroKy (player_id = 13, hero_id = 23 - Kunkka)
INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 48, 520, 'inventory'  -- Phase Boots
FROM MatchPlayer WHERE match_id = 1 AND player_id = 13;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 76, 1300, 'inventory' -- Shadow Blade
FROM MatchPlayer WHERE match_id = 1 AND player_id = 13;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 89, 1700, 'inventory' -- Hurricane Pike
FROM MatchPlayer WHERE match_id = 1 AND player_id = 13;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 115, 1600, 'neutral'  -- Dragon Scale
FROM MatchPlayer WHERE match_id = 1 AND player_id = 13;


-- Kaka (player_id = 24, hero_id = 13 - Puck, mid)
INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 48, 500, 'inventory'  -- Phase Boots
FROM MatchPlayer WHERE match_id = 1 AND player_id = 24;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 40, 900, 'inventory'  -- Blink Dagger
FROM MatchPlayer WHERE match_id = 1 AND player_id = 24;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 72, 1700, 'inventory' -- Scythe of Vyse
FROM MatchPlayer WHERE match_id = 1 AND player_id = 24;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 116, 1500, 'neutral'  -- Essence Ring
FROM MatchPlayer WHERE match_id = 1 AND player_id = 24;


-- Cr1t- (player_id = 10, hero_id = 34 - Warlock, pos4/5)
INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 49, 420, 'inventory'  -- Arcane Boots
FROM MatchPlayer WHERE match_id = 1 AND player_id = 10;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 60, 900, 'inventory'  -- Headdress / support aura
FROM MatchPlayer WHERE match_id = 1 AND player_id = 10;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 42, 1300, 'inventory' -- Glimmer Cape
FROM MatchPlayer WHERE match_id = 1 AND player_id = 10;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 118, 1200, 'neutral'  -- Philosopher's Stone
FROM MatchPlayer WHERE match_id = 1 AND player_id = 10;


-- GH (player_id = 14, hero_id = 25 - Lion, pos4)
INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 36, 250, 'inventory'  -- Magic Stick
FROM MatchPlayer WHERE match_id = 1 AND player_id = 14;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 49, 500, 'inventory'  -- Arcane Boots
FROM MatchPlayer WHERE match_id = 1 AND player_id = 14;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 43, 1100, 'inventory' -- Force Staff
FROM MatchPlayer WHERE match_id = 1 AND player_id = 14;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 103, 900, 'neutral'   -- Fairy's Trinket
FROM MatchPlayer WHERE match_id = 1 AND player_id = 14;

-- ===========================
-- MATCH 2 — DRAFT
-- ===========================
INSERT INTO MatchHeroPickBan (match_id, hero_id, team_side, action_type, action_order) VALUES
    (2, 18, 'radiant', 'pick', 1), -- Sven
    (2, 41, 'radiant', 'pick', 2), -- Wraith King
    (2, 21, 'radiant', 'pick', 3), -- Windranger
    (2, 29, 'radiant', 'pick', 4), -- Dazzle
    (2, 5,  'radiant', 'pick', 5), -- Crystal Maiden

    (2, 40, 'dire', 'pick', 6),    -- Faceless Void
    (2, 22, 'dire', 'pick', 7),    -- Zeus
    (2, 36, 'dire', 'pick', 8),    -- Bristleback
    (2, 31, 'dire', 'pick', 9),    -- Nature's Prophet
    (2, 48, 'dire', 'pick', 10);   -- Shadow Demon

-- Sven (player_id = 6)
INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 47, 600, 'inventory'
FROM MatchPlayer WHERE match_id = 2 AND player_id = 6;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 111, 1400, 'neutral'
FROM MatchPlayer WHERE match_id = 2 AND player_id = 6;


-- Wraith King (player_id = 7)
INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 65, 900, 'inventory'
FROM MatchPlayer WHERE match_id = 2 AND player_id = 7;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 120, 1500, 'neutral'
FROM MatchPlayer WHERE match_id = 2 AND player_id = 7;


-- Windranger (player_id = 17)
INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 48, 500, 'inventory'
FROM MatchPlayer WHERE match_id = 2 AND player_id = 17;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 105, 1300, 'neutral'
FROM MatchPlayer WHERE match_id = 2 AND player_id = 17;


-- Dazzle (player_id = 8)
INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 49, 600, 'inventory'
FROM MatchPlayer WHERE match_id = 2 AND player_id = 8;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 118, 1200, 'neutral'
FROM MatchPlayer WHERE match_id = 2 AND player_id = 8;


-- Crystal Maiden (player_id = 20)
INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 33, 200, 'inventory'
FROM MatchPlayer WHERE match_id = 2 AND player_id = 20;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 107, 1100, 'neutral'
FROM MatchPlayer WHERE match_id = 2 AND player_id = 20;


-- Faceless Void (player_id = 11)
INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 48, 600, 'inventory'
FROM MatchPlayer WHERE match_id = 2 AND player_id = 11;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 126, 1500, 'neutral'
FROM MatchPlayer WHERE match_id = 2 AND player_id = 11;


-- Zeus (player_id = 13)
INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 72, 1400, 'inventory'
FROM MatchPlayer WHERE match_id = 2 AND player_id = 13;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 123, 1500, 'neutral'
FROM MatchPlayer WHERE match_id = 2 AND player_id = 13;


-- Bristleback (player_id = 24)
INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 90, 800, 'inventory'
FROM MatchPlayer WHERE match_id = 2 AND player_id = 24;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 121, 1400, 'neutral'
FROM MatchPlayer WHERE match_id = 2 AND player_id = 24;


-- Nature's Prophet (player_id = 10)
INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 52, 700, 'inventory'
FROM MatchPlayer WHERE match_id = 2 AND player_id = 10;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 103, 1300, 'neutral'
FROM MatchPlayer WHERE match_id = 2 AND player_id = 10;


-- Shadow Demon (player_id = 14)
INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 49, 620, 'inventory'
FROM MatchPlayer WHERE match_id = 2 AND player_id = 14;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 118, 1200, 'neutral'
FROM MatchPlayer WHERE match_id = 2 AND player_id = 14;

INSERT INTO MatchHeroPickBan (match_id, hero_id, team_side, action_type, action_order) VALUES
    (3, 12, 'radiant', 'pick', 1),
    (3, 19, 'radiant', 'pick', 2),
    (3, 27, 'radiant', 'pick', 3),
    (3, 44, 'radiant', 'pick', 4),
    (3, 30, 'radiant', 'pick', 5),

    (3, 2,  'dire', 'pick', 6),
    (3, 14, 'dire', 'pick', 7),
    (3, 33, 'dire', 'pick', 8),
    (3, 37, 'dire', 'pick', 9),
    (3, 47, 'dire', 'pick', 10);



INSERT INTO MatchHeroPickBan (match_id, hero_id, team_side, action_type, action_order) VALUES
    (4, 1, 'radiant', 'pick', 1),
    (4, 3, 'radiant', 'pick', 2),
    (4, 9, 'radiant', 'pick', 3),
    (4, 31, 'radiant', 'pick', 4),
    (4, 42, 'radiant', 'pick', 5),

    (4, 8, 'dire', 'pick', 6),
    (4, 14, 'dire', 'pick', 7),
    (4, 39, 'dire', 'pick', 8),
    (4, 24, 'dire', 'pick', 9),
    (4, 49, 'dire', 'pick', 10);

INSERT INTO MatchHeroPickBan (match_id, hero_id, team_side, action_type, action_order) VALUES
    (5, 50, 'radiant', 'pick', 1),
    (5, 46, 'radiant', 'pick', 2),
    (5, 35, 'radiant', 'pick', 3),
    (5, 1,  'radiant', 'pick', 4),
    (5, 20, 'radiant', 'pick', 5),

    (5, 12, 'dire', 'pick', 6),
    (5, 32, 'dire', 'pick', 7),
    (5, 17, 'dire', 'pick', 8),
    (5, 38, 'dire', 'pick', 9),
    (5, 29, 'dire', 'pick', 10);

-- Пользователи аналитической платформы
INSERT INTO UserAccount (email, password_hash, display_name, role, created_at, last_login_at, player_id) VALUES
-- Связаны с про-игроками
('miracle@stats.gg',      'hash_miracle',  'Miracle Viewer',      'player_user', NOW() - INTERVAL '60 days', NOW() - INTERVAL '1 days', 1),
('yatoro@stats.gg',       'hash_yatoro',   'Yatoro Main',         'player_user', NOW() - INTERVAL '40 days', NOW() - INTERVAL '2 days', 6),
('miposhka@stats.gg',     'hash_mipo',     'Miposhka Fan',        'player_user', NOW() - INTERVAL '30 days', NOW() - INTERVAL '3 days', 8),
('quinn@stats.gg',        'hash_quinn',    'Quinn Analyzer',      'analyst',     NOW() - INTERVAL '90 days', NOW() - INTERVAL '1 days', 9),
('puppey@stats.gg',       'hash_puppey',   'Puppey Legacy',       'player_user', NOW() - INTERVAL '120 days',NOW() - INTERVAL '10 days',15),

-- Юзеры, не привязанные к player_id (просто пользователи сайта)
('viewer1@example.com',   'hash_v1',       'CasualViewer',        'player_user', NOW() - INTERVAL '10 days', NOW() - INTERVAL '1 days',  NULL),
('analyst1@example.com',  'hash_a1',       'MetaAnalyst',         'analyst',     NOW() - INTERVAL '20 days', NOW() - INTERVAL '2 days',  NULL),
('admin@example.com',     'hash_admin',    'SiteAdmin',           'admin',       NOW() - INTERVAL '200 days',NOW() - INTERVAL '1 days',  NULL),
('streamfan@example.com', 'hash_stream',   'StreamEnjoyer',       'player_user', NOW() - INTERVAL '15 days', NOW() - INTERVAL '5 days', NULL),
('ts_fan@example.com',    'hash_ts',       'SpiritUltraFan',      'player_user', NOW() - INTERVAL '5 days',  NOW() - INTERVAL '1 days', NULL);

-- Match 3, Radiant
INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 47, 500, 'inventory'
FROM MatchPlayer WHERE match_id = 3 AND player_id = 6;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 111, 1200, 'neutral'
FROM MatchPlayer WHERE match_id = 3 AND player_id = 6;


INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 65, 700, 'inventory'
FROM MatchPlayer WHERE match_id = 3 AND player_id = 7;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 120, 1500, 'neutral'
FROM MatchPlayer WHERE match_id = 3 AND player_id = 7;


INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 48, 600, 'inventory'
FROM MatchPlayer WHERE match_id = 3 AND player_id = 17;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 103, 900, 'neutral'
FROM MatchPlayer WHERE match_id = 3 AND player_id = 17;


INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 49, 400, 'inventory'
FROM MatchPlayer WHERE match_id = 3 AND player_id = 8;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 118, 1100, 'neutral'
FROM MatchPlayer WHERE match_id = 3 AND player_id = 8;


INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 33, 200, 'inventory'
FROM MatchPlayer WHERE match_id = 3 AND player_id = 20;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 106, 900, 'neutral'
FROM MatchPlayer WHERE match_id = 3 AND player_id = 20;


-- Match 3, Dire
INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 48, 630, 'inventory'
FROM MatchPlayer WHERE match_id = 3 AND player_id = 11;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 126, 1500, 'neutral'
FROM MatchPlayer WHERE match_id = 3 AND player_id = 11;


INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 90, 850, 'inventory'
FROM MatchPlayer WHERE match_id = 3 AND player_id = 13;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 115, 1300, 'neutral'
FROM MatchPlayer WHERE match_id = 3 AND player_id = 13;


INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 48, 590, 'inventory'
FROM MatchPlayer WHERE match_id = 3 AND player_id = 24;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 136, 1500, 'neutral'
FROM MatchPlayer WHERE match_id = 3 AND player_id = 24;


INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 49, 500, 'inventory'
FROM MatchPlayer WHERE match_id = 3 AND player_id = 10;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 118, 1200, 'neutral'
FROM MatchPlayer WHERE match_id = 3 AND player_id = 10;


INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 36, 300, 'inventory'
FROM MatchPlayer WHERE match_id = 3 AND player_id = 14;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 105, 1100, 'neutral'
FROM MatchPlayer WHERE match_id = 3 AND player_id = 14;



-- Match 4
INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 48, 500, 'inventory'
FROM MatchPlayer WHERE match_id = 4 AND player_id = 6;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 111, 1200, 'neutral'
FROM MatchPlayer WHERE match_id = 4 AND player_id = 6;


INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 47, 600, 'inventory'
FROM MatchPlayer WHERE match_id = 4 AND player_id = 7;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 105, 1300, 'neutral'
FROM MatchPlayer WHERE match_id = 4 AND player_id = 7;



-- Match 5
INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 48, 500, 'inventory'
FROM MatchPlayer WHERE match_id = 5 AND player_id = 6;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 116, 1500, 'neutral'
FROM MatchPlayer WHERE match_id = 5 AND player_id = 6;


INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 49, 450, 'inventory'
FROM MatchPlayer WHERE match_id = 5 AND player_id = 7;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 121, 1400, 'neutral'
FROM MatchPlayer WHERE match_id = 5 AND player_id = 7;


-- Match 5, Dire
INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 48, 520, 'inventory'
FROM MatchPlayer WHERE match_id = 5 AND player_id = 11;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 126, 1500, 'neutral'
FROM MatchPlayer WHERE match_id = 5 AND player_id = 11;


INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 49, 540, 'inventory'
FROM MatchPlayer WHERE match_id = 5 AND player_id = 13;

INSERT INTO MatchPlayerItem (match_player_id, item_id, acquired_time_sec, slot_type)
SELECT match_player_id, 103, 900, 'neutral'
FROM MatchPlayer WHERE match_id = 5 AND player_id = 13;


-- Избранные игроки
-- Miracle-viewer подписан на нескольких топов
INSERT INTO FavoritePlayer (user_id, player_id)
SELECT u.user_id, p.player_id
FROM UserAccount u
JOIN Player p ON p.nickname IN ('Miracle-', 'Yatoro', 'Quinn')
WHERE u.email = 'miracle@stats.gg';

-- Yatoro-main подписан на состав Team Spirit
INSERT INTO FavoritePlayer (user_id, player_id)
SELECT u.user_id, p.player_id
FROM UserAccount u
JOIN Player p ON p.nickname IN ('Yatoro', 'Collapse', 'Miposhka', 'gpk')
WHERE u.email = 'yatoro@stats.gg';

-- Miposhka-fan следит за саппортами
INSERT INTO FavoritePlayer (user_id, player_id)
SELECT u.user_id, p.player_id
FROM UserAccount u
JOIN Player p ON p.nickname IN ('Miposhka', 'GH', 'Cr1t-')
WHERE u.email = 'miposhka@stats.gg';

-- Quinn-analyst следит за мидерами
INSERT INTO FavoritePlayer (user_id, player_id)
SELECT u.user_id, p.player_id
FROM UserAccount u
JOIN Player p ON p.nickname IN ('Quinn', 'Topson', 'Nisha', 'Somnus')
WHERE u.email = 'quinn@stats.gg';

-- Puppey-legacy любит олдскул
INSERT INTO FavoritePlayer (user_id, player_id)
SELECT u.user_id, p.player_id
FROM UserAccount u
JOIN Player p ON p.nickname IN ('Puppey', 'KuroKy', 'Dendi')
WHERE u.email = 'puppey@stats.gg';

-- CasualViewer подписан на стримеров
INSERT INTO FavoritePlayer (user_id, player_id)
SELECT u.user_id, p.player_id
FROM UserAccount u
JOIN Player p ON p.nickname IN ('Gorgc', 'BSJ', 'Jenkins', 'Qojqva')
WHERE u.email = 'viewer1@example.com';

-- StreamEnjoyer ещё больше стримеров
INSERT INTO FavoritePlayer (user_id, player_id)
SELECT u.user_id, p.player_id
FROM UserAccount u
JOIN Player p ON p.nickname IN ('Gorgc', 'AdmiralBulldog', 'SingSing', 'PurgeGamers', 'Slacks')
WHERE u.email = 'streamfan@example.com';

-- SpiritUltraFan только Spirit
INSERT INTO FavoritePlayer (user_id, player_id)
SELECT u.user_id, p.player_id
FROM UserAccount u
JOIN Player p ON p.nickname IN ('Yatoro', 'Collapse', 'Miposhka')
WHERE u.email = 'ts_fan@example.com';


-- Избранные команды

-- Miracle-viewer: OG, Liquid, Team Spirit
INSERT INTO FavoriteTeam (user_id, team_id)
SELECT u.user_id, t.team_id
FROM UserAccount u
JOIN ProTeam t ON t.name IN ('OG', 'Team Spirit', 'Team Liquid')
WHERE u.email = 'miracle@stats.gg';

-- Yatoro-main: Team Spirit, BetBoom
INSERT INTO FavoriteTeam (user_id, team_id)
SELECT u.user_id, t.team_id
FROM UserAccount u
JOIN ProTeam t ON t.name IN ('Team Spirit', 'BetBoom Team')
WHERE u.email = 'yatoro@stats.gg';

-- Miposhka-fan: Team Spirit только
INSERT INTO FavoriteTeam (user_id, team_id)
SELECT u.user_id, t.team_id
FROM UserAccount u
JOIN ProTeam t ON t.name = 'Team Spirit'
WHERE u.email = 'miposhka@stats.gg';

-- Quinn-analyst: Gaimin Gladiators, Tundra
INSERT INTO FavoriteTeam (user_id, team_id)
SELECT u.user_id, t.team_id
FROM UserAccount u
JOIN ProTeam t ON t.name IN ('Gaimin Gladiators', 'Tundra Esports')
WHERE u.email = 'quinn@stats.gg';

-- Puppey-legacy: Natus Vincere, Team Secret нет, но пусть будет OG и EG
INSERT INTO FavoriteTeam (user_id, team_id)
SELECT u.user_id, t.team_id
FROM UserAccount u
JOIN ProTeam t ON t.name IN ('Natus Vincere', 'OG', 'Evil Geniuses')
WHERE u.email = 'puppey@stats.gg';

-- CasualViewer: Team Liquid, Thunder Awaken
INSERT INTO FavoriteTeam (user_id, team_id)
SELECT u.user_id, t.team_id
FROM UserAccount u
JOIN ProTeam t ON t.name IN ('Team Liquid', 'Thunder Awaken')
WHERE u.email = 'viewer1@example.com';

-- SpiritUltraFan: только Team Spirit
INSERT INTO FavoriteTeam (user_id, team_id)
SELECT u.user_id, t.team_id
FROM UserAccount u
JOIN ProTeam t ON t.name = 'Team Spirit'
WHERE u.email = 'ts_fan@example.com';


-- Рейтинги Miracle- (player_id = 1)
INSERT INTO RatingSnapshot (player_id, rating_type, rating_value, snapshot_time) VALUES
(1, 'solo', 9500, '2025-01-10 12:00:00+00'),
(1, 'solo', 9600, '2025-02-10 12:00:00+00'),
(1, 'party', 9100, '2025-01-10 12:00:00+00'),
(1, 'pro',   9800, '2025-02-01 15:00:00+00');

-- Yatoro (player_id = 6)
INSERT INTO RatingSnapshot (player_id, rating_type, rating_value, snapshot_time) VALUES
(6, 'solo', 10000, '2025-01-05 18:00:00+00'),
(6, 'solo', 10150, '2025-02-05 18:00:00+00'),
(6, 'pro',   10300, '2025-02-15 20:00:00+00');

-- Collapse (player_id = 7)
INSERT INTO RatingSnapshot (player_id, rating_type, rating_value, snapshot_time) VALUES
(7, 'solo', 9600, '2025-01-07 17:00:00+00'),
(7, 'solo', 9700, '2025-02-07 17:00:00+00'),
(7, 'party', 9300, '2025-01-20 19:00:00+00');

-- Quinn (player_id = 9)
INSERT INTO RatingSnapshot (player_id, rating_type, rating_value, snapshot_time) VALUES
(9, 'solo', 9800, '2025-01-12 14:00:00+00'),
(9, 'solo', 9900, '2025-02-12 14:00:00+00'),
(9, 'pro',  10050, '2025-02-20 16:00:00+00');

-- Puppey (player_id = 15)
INSERT INTO RatingSnapshot (player_id, rating_type, rating_value, snapshot_time) VALUES
(15, 'party', 8800, '2024-12-15 20:00:00+00'),
(15, 'party', 8900, '2025-01-15 20:00:00+00'),
(15, 'pro',   9200, '2025-01-25 21:00:00+00');

-- Несколько рейтингов для стримеров (как high-MMR пабчик)
INSERT INTO RatingSnapshot (player_id, rating_type, rating_value, snapshot_time) VALUES
(31, 'solo', 7500, '2025-01-03 13:00:00+00'),  -- Gorgc
(32, 'solo', 7300, '2025-01-03 13:30:00+00'),  -- AdmiralBulldog
(33, 'solo', 7200, '2025-01-03 14:00:00+00'),  -- BSJ
(37, 'solo', 7000, '2025-01-04 15:00:00+00');  -- Dendi