
SET NAMES utf8;
-- Золотые сферы
DELETE FROM `creature` WHERE `id`=51157; 
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(51157, 657, 6, 1, 33553, 0, -1054.6999511719, -21.947900772095, 705.90600585938, 0, 7200, 0, 0, 14921, 0, 0, 0, 0, 0),
(51157, 657, 6, 1, 33553, 0, -1032.6800537109, -38.385398864746, 705.9169921875, 0, 7200, 0, 0, 14921, 0, 0, 0, 0, 0),
(51157, 657, 6, 1, 33553, 0, -749.47198486328, 74.68229675293, 631.19598388672, 0, 7200, 0, 0, 14921, 0, 0, 0, 0, 0),
(51157, 657, 6, 1, 33553, 0, -595.18798828125, -172.1840057373, 616.61297607422, 0, 7200, 0, 0, 14921, 0, 0, 0, 0, 0),
(51157, 657, 6, 1, 33553, 0, -1002.0999755859, 493.97601318359, 662.57598876953, 0, 7200, 0, 0, 14921, 0, 0, 0, 0, 0),
(51157, 657, 6, 1, 33553, 0, -1046.9200439453, 419.46499633789, 698.1259765625, 0, 7200, 0, 0, 14921, 0, 0, 0, 0, 0),
(51157, 657, 6, 1, 33553, 0, -763.61999511719, 411.30899047852, 682.69097900391, 0, 7200, 0, 0, 14921, 0, 0, 0, 0, 0);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (51157, 0, 0, 0, 1, 0, '94316');
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (51157, 94316, 1, 0);
UPDATE `creature_template` SET `npcflag`=16777216, `inhabittype`=5 WHERE `entry`=51157;

-- Снятие шкур
DELETE FROM `skinning_loot_template` WHERE `entry` in (46970, 46162, 46153, 47796, 46141, 47797); 
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(46141, 52976, 84, 1, 0, 1, 6),
(46141, 52979, 99, 1, 0, 1, 6),
(46141, 67495, 3, 1, 0, 1, 1),
(46153, 52976, 99, 1, 0, 1, 6),
(46153, 67495, 3, 1, 0, 1, 1),
(46162, 52976, 99, 1, 0, 1, 6),
(46162, 67495, 3, 1, 0, 1, 1),
(46970, 52976, 99, 1, 0, 1, 6),
(46970, 67495, 3, 1, 0, 1, 1),
(47796, 52976, 83, 1, 0, 1, 7),
(47796, 52979, 98, 1, 0, 1, 6),
(47796, 67495, 3, 1, 0, 1, 1),
(47797, 52976, 83, 1, 0, 1, 7),
(47797, 52979, 98, 1, 0, 1, 6),
(47797, 67495, 3, 1, 0, 1, 1);

-- Тираний
UPDATE `creature_template` SET `ScriptName`='', `AIName`='SmartAI' WHERE `entry`=36658;

-- Головоломка Йогг-Сарона
UPDATE `creature_template` SET `AIName`='SmartAI', `modelid1`=25204, `flags_extra`=0 WHERE `entry`=49634;
REPLACE INTO `smart_scripts` VALUES 
(49634, 0, 0, 1, 1, 0, 100, 0, 5000, 5000, 500000, 500000, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Puzzle Box of Yogg-Saron"),
(49634, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 18, 3, 0, 0, 0, 0, 0, 0, "Puzzle Box of Yogg-Saron");
REPLACE INTO `creature_text` 
(`entry`, `groupid`, `id`, `type`, `probability`, `sound`, `comment`, `text`) VALUES 
(49634, 1, 0, 15, 100, 463, 'Puzzle Box of Yogg-Saron', ''),
(49634, 0, 1, 15, 100, 0, 'Puzzle Box of Yogg-Saron', 'It is standing right behind you. Do not move. Do not breathe.'),
(49634, 0, 2, 15, 100, 0, 'Puzzle Box of Yogg-Saron', 'Have you had the dream again? A black goat with seven eyes that watches from the outside.'),
(49634, 0, 3, 15, 100, 0, 'Puzzle Box of Yogg-Saron', 'In the sunken city, he lays dreaming.'),
(49634, 0, 4, 15, 100, 0, 'Puzzle Box of Yogg-Saron', 'Open me! Open me! Open me! Then only will you know peace.'),
(49634, 0, 5, 15, 100, 0, 'Puzzle Box of Yogg-Saron', 'You resist. You cling to your life as if it actually matters. You will learn.'),
(49634, 0, 6, 15, 100, 0, 'Puzzle Box of Yogg-Saron', 'The tortured spirits of your ancestors cling to you, screaming in silence. Apparently they are quite numerous.'),
(49634, 0, 7, 15, 100, 0, 'Puzzle Box of Yogg-Saron', 'The fish know all the secrets. They know the cold. They know the dark.'),
(49634, 0, 8, 15, 100, 0, 'Puzzle Box of Yogg-Saron', 'The giant rook watches from the dead trees. Nothing breathes beneath his shadow.'),
(49634, 0, 9, 15, 100, 0, 'Puzzle Box of Yogg-Saron', 'At the bottom of the ocean even light must die.'),
(49634, 0, 10, 15, 100, 0, 'Puzzle Box of Yogg-Saron', 'The silent, sleeping, staring houses in the backwoods always dream. It would be merciful to tear them down.'),
(49634, 0, 11, 15, 100, 0, 'Puzzle Box of Yogg-Saron', 'There is no sharp distinction between the real and the unreal.'),
(49634, 0, 12, 15, 100, 0, 'Puzzle Box of Yogg-Saron', 'Even death may die.'),
(49634, 0, 13, 15, 100, 0, 'Puzzle Box of Yogg-Saron', 'There is a little lamb lost in dark woods.'),
(49634, 0, 14, 15, 100, 0, 'Puzzle Box of Yogg-Saron', 'All places, all things have souls. All souls can be devoured.'),
(49634, 0, 15, 15, 100, 0, 'Puzzle Box of Yogg-Saron', 'What can change the nature of a man?'),
(49634, 0, 16, 15, 100, 0, 'Puzzle Box of Yogg-Saron', 'The stars sweep chill currents that make men shiver in the dark.'),
(49634, 0, 17, 15, 100, 0, 'Puzzle Box of Yogg-Saron', 'You will all be alone in the end.'),
(49634, 0, 18, 15, 100, 0, 'Puzzle Box of Yogg-Saron', 'Do you dream while you sleep or is it an escape from the horrors of reality?'),
(49634, 0, 19, 15, 100, 0, 'Puzzle Box of Yogg-Saron', 'Look around. They will all betray you. Flee screaming into the black forest.'),
(49634, 0, 20, 15, 100, 0, 'Puzzle Box of Yogg-Saron', 'In the land of Ny\'alotha there is only sleep.'),
(49634, 0, 21, 15, 100, 0, 'Puzzle Box of Yogg-Saron', 'In the sleeping city of Ny\'alotha walk only mad things.'),
(49634, 0, 22, 15, 100, 0, 'Puzzle Box of Yogg-Saron', 'Ny\'alotha is a city of old, terrible, unnumbered crimes.'),
(49634, 0, 23, 15, 100, 0, 'Puzzle Box of Yogg-Saron', 'Y\'knath k\'th\'rygg k\'yi mrr\'ungha gr\'mula.'),
(49634, 0, 24, 15, 100, 0, 'Puzzle Box of Yogg-Saron', 'The void sucks at your soul. It is content to feast slowly.'),
(49634, 0, 25, 15, 100, 0, 'Puzzle Box of Yogg-Saron', 'The drowned god\'s heart is black ice.');
REPLACE INTO `locales_creature_text` (`entry`, `groupid`, `id`, `text_loc1`, `text_loc2`, `text_loc3`, `text_loc4`, `text_loc5`, `text_loc6`, `text_loc7`, `text_loc8`) VALUES 
(49634, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Оно стоит у тебя за спиной. Не двигайся. Не дыши.'),
(49634, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Тебе снова приснился этот сон? Про черного семиглазого козла, который следит за тобой?'),
(49634, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'В затопленном городе спит он.'),
(49634, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Открой меня! Открой меня! Открой меня! Только тогда ты обретешь покой.'),
(49634, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ты сопротивляешься. Ты цепляешься за жизнь, как будто она имеет значение. Ничего, ты еще узнаешь правду.'),
(49634, 0, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Измученные души предков цепляются за тебя, заходясь в безмолвном крике. Похоже, их довольно много.'),
(49634, 0, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Рыбам известны все секреты. Они знают, что такое холод. Они знают, что такое мрак.'),
(49634, 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Огромный грач следит за всеми с верхушки мертвого дерева. Никто не смеет даже дышать под его сенью.'),
(49634, 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'На дне океана умирает даже свет.'),
(49634, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Молчаливые, тихие, наблюдающие дома всегда видят сны. Снести их – значит избавить от страданий.'),
(49634, 0, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Между реальностью и фантазией нет четких границ.'),
(49634, 0, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Даже смерть может умереть.'),
(49634, 0, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'В темном лесу заблудился ягненок.'),
(49634, 0, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'У каждого места, у каждого объекта есть душа. Любую душу можно поглотить.'),
(49634, 0, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Что может изменить природу человека?'),
(49634, 0, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Холодный свет звезд заставляет людей дрожать во тьме.'),
(49634, 0, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'В конце ты всегда остаешься один.'),
(49634, 0, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Видишь ли ты сны, когда спишь? Или ты просто уходишь от кошмара реальности?'),
(49634, 0, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Оглянись вокруг. Они все предадут тебя. Беги в черный лес, завывая от ужаса.'),
(49634, 0, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'В Ни\'алоте есть только сон.'),
(49634, 0, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'По спящему городу Ни\'алоте бродят только безумные существа.'),
(49634, 0, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ни\'алота – город, в котором издревле совершается множество страшных преступлений.'),
(49634, 0, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Й\'кнат к\'т\'ригг к\'йи мрр\'унгха гр\'мула.'),
(49634, 0, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Пустота пожирает твою душу. И будет делать это медленно.'),
(49634, 0, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Сердце утонувшего бога – это черный лед.');

-- Хребет Смертокрыла - CPP
DELETE FROM `gameobject` WHERE `id` in (209896, 209894);
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(209896, 967, 12, 1, -12075.2, 12168.2, -2.56926, 3.57793, 0, 0, -0.976295, 0.216442, 604800, 100, 1),
(209894, 967, 3, 1, -12075.2, 12168.2, -2.56926, 3.57793, 0, 0, -0.976295, 0.216442, 604800, 100, 1);
REPLACE INTO `instance_template` (`map`, `parent`, `script`, `allowMount`) VALUES ('967', '0', 'instance_dragon_soul', '1'); 
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53879, 58862, 58863, 58864, 0, 0, 169, 39825, 0, 0, 'Deathwing', 'The Destroyer', '', 0, 88, 88, 3, 14, 14, 0, 1, 1.14286, 1, 1, 548, 822, 0, 205, 16.4, 2000, 2000, 1, 6, 67141632, 0, 0, 0, 0, 0, 0, 438, 658, 164, 10, 1074790508, 0, 0, 0, 0, 0, 0, 0, 0, 0, 109048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 349, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 2145369087, 1, 'boss_deathwing_spine', 15595),
(53888, 0, 0, 0, 0, 0, 11686, 0, 0, 0, 'Spawner', '', '', 0, 88, 88, 0, 14, 14, 0, 1, 1.14286, 1, 1, 532, 798, 0, 199, 16.9, 2000, 2000, 1, 33685510, 0, 0, 0, 0, 0, 0, 0, 426, 638, 159, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 105563, 109454, 109456, 109455, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_deathwing_spine_spawner', 15595),
(53889, 57895, 57896, 57897, 0, 0, 38548, 0, 0, 0, 'Corrupted Blood', '', '', 0, 88, 88, 3, 14, 14, 0, 0.8, 0.714286, 1, 1, 532, 798, 0, 199, 16.9, 2000, 2000, 1, 524288, 0, 0, 0, 0, 0, 0, 0, 426, 638, 159, 4, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 105248, 109372, 109371, 105219, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 90, 1, 0, 617291775, 1, 'npc_deathwing_spine_blood', 15595),
(53890, 56516, 56517, 56518, 0, 0, 38549, 0, 0, 0, 'Hideous Amalgamation', '', '', 0, 88, 88, 3, 14, 14, 0, 1.6, 1.14286, 1, 1, 341, 512, 0, 128, 26.3, 1500, 1500, 4, 524288, 0, 0, 0, 0, 0, 0, 0, 273, 410, 102, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 106199, 106200, 106005, 105846, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 120, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617291775, 1, 'npc_deathwing_spine_amalgamation', 15595),
(56161, 57901, 57902, 57903, 0, 0, 38550, 0, 0, 0, 'Corruption', '', '', 0, 88, 88, 3, 14, 14, 0, 1, 1.14286, 1, 1, 548, 822, 0, 205, 16.4, 2000, 2000, 1, 524292, 0, 12, 0, 0, 0, 0, 0, 438, 658, 164, 4, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 109458, 109457, 109459, 105490, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 5.33, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617299967, 1, 'npc_deathwing_spine_corruption', 15595),
(56516, 0, 0, 0, 0, 0, 38549, 0, 0, 0, 'Hideous Amalgamation (1)', '', '', 0, 88, 88, 3, 14, 14, 0, 1.6, 1.14286, 1, 1, 455, 682, 0, 171, 19.8, 2000, 2000, 4, 524288, 0, 0, 0, 0, 0, 0, 0, 364, 546, 137, 4, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 106199, 106200, 106005, 105846, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 263.5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 125, 1, 0, 617291775, 1, '', 15595),
(56517, 0, 0, 0, 0, 0, 38549, 0, 0, 0, 'Hideous Amalgamation (2)', '', '', 0, 88, 88, 3, 14, 14, 0, 1.6, 1.14286, 1, 1, 455, 682, 0, 171, 19.8, 2000, 2000, 4, 524288, 0, 0, 0, 0, 0, 0, 0, 364, 546, 137, 4, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 106199, 106200, 106005, 105846, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 114.75, 1, 1, 0, 0, 0, 0, 0, 0, 0, 125, 1, 0, 617291775, 1, '', 15595),
(56518, 0, 0, 0, 0, 0, 38549, 0, 0, 0, 'Hideous Amalgamation (3)', '', '', 0, 88, 88, 3, 14, 14, 0, 1.6, 1.14286, 1, 1, 455, 682, 0, 171, 19.8, 2000, 2000, 4, 524288, 0, 0, 0, 0, 0, 0, 0, 364, 546, 137, 4, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 106199, 106200, 106005, 105846, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 355.73, 1, 1, 0, 0, 0, 0, 0, 0, 0, 125, 1, 0, 617291775, 1, '', 15595),
(56575, 57887, 57888, 57889, 0, 0, 39429, 0, 0, 0, 'Burning Tendons', '', '', 0, 88, 88, 3, 14, 14, 0, 1, 0.992063, 1, 1, 548, 822, 0, 205, 16.4, 2000, 2000, 1, 524292, 0, 0, 0, 0, 0, 0, 0, 438, 658, 164, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 105848, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 35, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617299967, 1, 'npc_deathwing_spine_tendons', 15595),
(56781, 57937, 57938, 57939, 0, 0, 39691, 0, 0, 0, 'Goriona', '', '', 0, 88, 88, 3, 14, 14, 0, 1.2, 1.5873, 1, 1, 411, 616, 0, 154, 21.9, 1500, 1500, 1, 524288, 2048, 0, 0, 0, 0, 0, 0, 329, 493, 123, 2, 108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 110214, 110598, 110212, 110213, 0, 0, 0, 0, 0, 1900, 0, 0, 'SmartAI', 0, 5, 1, 155, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617299967, 1, 'npc_ds_goriona', 15595),
(57887, 0, 0, 0, 0, 0, 39429, 0, 0, 0, 'Burning Tendons (1)', '', '', 0, 88, 88, 3, 14, 14, 0, 1, 0.992063, 1, 1, 548, 822, 0, 205, 16.4, 2000, 2000, 1, 524292, 0, 0, 0, 0, 0, 0, 0, 438, 658, 164, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 105847, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 108.5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617299967, 1, '', 15595),
(57888, 0, 0, 0, 0, 0, 39429, 0, 0, 0, 'Burning Tendons (2)', '', '', 0, 88, 88, 3, 14, 14, 0, 1, 0.992063, 1, 1, 548, 822, 0, 205, 16.4, 2000, 2000, 1, 524292, 0, 0, 0, 0, 0, 0, 0, 438, 658, 164, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 105847, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 125.46, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617299967, 1, '', 15595),
(57889, 0, 0, 0, 0, 0, 39429, 0, 0, 0, 'Burning Tendons (3)', '', '', 0, 88, 88, 3, 14, 14, 0, 1, 0.992063, 1, 1, 548, 822, 0, 205, 16.4, 2000, 2000, 1, 524292, 0, 0, 0, 0, 0, 0, 0, 438, 658, 164, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 105847, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 388.875, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617299967, 1, '', 15595),
(57895, 0, 0, 0, 0, 0, 38548, 0, 0, 0, 'Corrupted Blood (1)', '', '', 0, 88, 88, 3, 14, 14, 0, 0.8, 0.714286, 1, 1, 532, 798, 0, 199, 16.9, 2000, 2000, 1, 524288, 0, 0, 0, 0, 0, 0, 0, 426, 638, 159, 4, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 105248, 109372, 109371, 105219, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 6.2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 90, 1, 0, 617291775, 1, '', 15595),
(57896, 0, 0, 0, 0, 0, 38548, 0, 0, 0, 'Corrupted Blood (2)', '', '', 0, 88, 88, 3, 14, 14, 0, 0.8, 0.714286, 1, 1, 532, 798, 0, 199, 16.9, 2000, 2000, 1, 524288, 0, 0, 0, 0, 0, 0, 0, 426, 638, 159, 4, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 105248, 109372, 109371, 105219, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 3.5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 90, 1, 0, 617291775, 1, '', 15595),
(57897, 0, 0, 0, 0, 0, 38548, 0, 0, 0, 'Corrupted Blood (3)', '', '', 0, 88, 88, 3, 14, 14, 0, 0.8, 0.714286, 1, 1, 532, 798, 0, 199, 16.9, 2000, 2000, 1, 524288, 0, 0, 0, 0, 0, 0, 0, 426, 638, 159, 4, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 105248, 109372, 109371, 105219, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 10.85, 1, 1, 0, 0, 0, 0, 0, 0, 0, 90, 1, 0, 617291775, 1, '', 15595),
(57901, 0, 0, 0, 0, 0, 38550, 0, 0, 0, 'Corruption (1)', '', '', 0, 88, 88, 3, 14, 14, 0, 1, 1.14286, 1, 1, 548, 822, 0, 205, 16.4, 2000, 2000, 1, 524292, 0, 12, 0, 0, 0, 0, 0, 438, 658, 164, 4, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 109458, 109457, 109459, 105490, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 16.52, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617299967, 1, '', 15595),
(57902, 0, 0, 0, 0, 0, 38550, 0, 0, 0, 'Corruption (2)', '', '', 0, 88, 88, 3, 14, 14, 0, 1, 1.14286, 1, 1, 548, 822, 0, 205, 16.4, 2000, 2000, 1, 524292, 0, 12, 0, 0, 0, 0, 0, 438, 658, 164, 4, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 109458, 109457, 109459, 105490, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 9.33, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617299967, 1, '', 15595),
(57903, 0, 0, 0, 0, 0, 38550, 0, 0, 0, 'Corruption (3)', '', '', 0, 88, 88, 3, 14, 14, 0, 1, 1.14286, 1, 1, 548, 822, 0, 205, 16.4, 2000, 2000, 1, 524292, 0, 12, 0, 0, 0, 0, 0, 438, 658, 164, 4, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 109458, 109457, 109459, 105490, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 28.92, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617299967, 1, '', 15595),
(57937, 0, 0, 0, 0, 0, 39691, 0, 0, 0, 'Goriona', '', '', 0, 88, 88, 3, 14, 14, 0, 1.2, 1.5873, 1, 1, 411, 616, 0, 154, 21.9, 1500, 1500, 1, 524288, 2048, 0, 0, 0, 0, 0, 0, 329, 493, 123, 2, 108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 110214, 110598, 110212, 110213, 0, 0, 0, 0, 0, 1900, 0, 0, 'SmartAI', 0, 3, 1, 542.5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617299967, 1, '', 15595),
(57938, 0, 0, 0, 0, 0, 39691, 0, 0, 0, 'Goriona', '', '', 0, 88, 88, 3, 14, 14, 0, 1.2, 1.5873, 1, 1, 411, 616, 0, 154, 21.9, 1500, 1500, 1, 524288, 2048, 0, 0, 0, 0, 0, 0, 329, 493, 123, 2, 108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 110214, 110598, 110212, 110213, 0, 0, 0, 0, 0, 1900, 0, 0, 'SmartAI', 0, 3, 1, 290, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617299967, 1, '', 15595),
(57939, 0, 0, 0, 0, 0, 39691, 0, 0, 0, 'Goriona', '', '', 0, 88, 88, 3, 14, 14, 0, 1.2, 1.5873, 1, 1, 411, 616, 0, 154, 21.9, 1500, 1500, 1, 524288, 2048, 0, 0, 0, 0, 0, 0, 329, 493, 123, 2, 108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 110214, 110598, 110212, 110213, 0, 0, 0, 0, 0, 1900, 0, 0, 'SmartAI', 0, 3, 1, 940.25, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617299967, 1, '', 15595);

-- Зул\'Гуруб
UPDATE `creature_template` SET `unit_flags2`=0 WHERE `entry` in (52055, 52608, 52332, 52331, 52148);
UPDATE `creature_template` SET `modelid1`=25204, `modelid2`=0 WHERE `entry`=52387;
UPDATE `creature` SET `modelid`=25204 WHERE `id`=52387;
DELETE FROM `creature` WHERE `id`=52059;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (52059, 859, 2, 1, 37805, 1, -11503.8, -1626.41, 44.4014, 3.12452, 86400, 0, 0, 4564670, 46550, 0, 0, 0, 0);

-- Неприкосновенный запас
-- http://ru.wowhead.com/quest=11887
UPDATE `creature_template` SET `npcflag`=16777216 WHERE `entry`=25841;
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES (25841, 46362, 2);

-- Слова могущества
-- http://ru.wowhead.com/quest=11942
UPDATE `creature_template` SET `unit_flags`=0 WHERE `entry` in (26076, 26073);

-- Собаки-каки
-- http://ru.wowhead.com/quest=11728
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (187981, 35123, -100);

-- Прорыв
-- http://ru.wowhead.com/quest=11898
UPDATE `creature_template` SET `faction_A`=14, `faction_H`=14 WHERE `entry`=25601;

-- http://ru.wowhead.com/npc=25284
UPDATE `creature` SET `movementType`=0 WHERE `id`=25284;

-- Равнины Назама
-- http://ru.wowhead.com/quest=11652
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (25334, 46598, 1, 0);
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`) VALUES (18, 25334, 46598, 9, 11652);

-- Мешок Умейки
-- http://ru.wowhead.com/item=34871
REPLACE INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(34871, 34869, 100, 1, 0, 1, 1),
(34871, 34870, 100, 1, 0, 1, 1);

-- Верни их живыми!
-- http://ru.wowhead.com/quest=11690
REPLACE INTO `smart_scripts` VALUES (25596, 0, 1, 0, 23, 0, 100, 0, 45875, 1, 5000, 5000, 91, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Infected Kodo Beast");
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=25596;

-- Разрушитель XT-002
-- http://ru.wowhead.com/npc=33293
UPDATE `creature` SET `spawnMask`=3 WHERE `id`=33293;

-- Артас
-- http://ru.wowhead.com/npc=26499
DELETE FROM `creature` WHERE `id`=26499;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (26499, 595, 15, 1, 0, 1, 1920.87, 1287.12, 142.935, 6.25562, 43200, 0, 0, 44100, 15976, 0, 0, 0, 0);

-- Сумеречный Бастион
UPDATE `creature` SET `spawnMask`=15 WHERE `id`=44600;
DELETE FROM `creature` WHERE `id` in (45993, 45992);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(45993, 671, 15, 1, 0, 0, -741.134, -762.938, 836.691, 1.56001, 86400, 0, 0, 15750, 0, 0, 0, 0, 0),
(45992, 671, 15, 1, 0, 0, -740.897, -607.031, 836.691, 4.6859, 86400, 0, 0, 38229032, 0, 0, 0, 0, 0);
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `AIName`, `ScriptName`, `WDBVerified`) VALUES (205898, 35, 9952, 'Doodad_GrimBatolRaid_TrapDoor01', '', '', '', 0, 40, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);
DELETE FROM `gameobject` WHERE `id`=205898;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (205898, 671, 15, 1, -1161.88, -798.892, 834.34, 2.10426, 0, 0, 0.86848, 0.495725, 7200, 100, 1);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(57175, 59330, 0, 1, 1, 1, 1),
(57175, 59485, 0, 1, 3, 1, 1),
(57175, 59486, 0, 1, 1, 1, 1),
(57175, 59487, 0, 1, 3, 1, 1),
(57175, 59490, 0, 1, 1, 1, 1),
(57175, 59494, 0, 1, 3, 1, 1),
(57175, 59495, 0, 1, 1, 1, 1),
(57175, 59497, 0, 1, 3, 1, 1),
(57175, 59498, 0, 1, 1, 1, 1),
(57175, 59499, 0, 1, 3, 1, 1),
(57175, 59500, 0, 1, 1, 1, 1),
(57175, 59501, 0, 1, 3, 1, 1),
(57175, 63680, 0, 1, 1, 1, 1),
(57175, 64314, 0, 1, 2, 1, 1),
(57175, 64315, 0, 1, 2, 1, 1),
(57175, 64316, 0, 1, 2, 1, 1),
(57176, 65123, 0, 1, 3, 1, 1),
(57176, 65125, 0, 1, 3, 1, 1),
(57176, 65127, 0, 1, 3, 1, 1),
(57176, 65130, 0, 1, 3, 1, 1),
(57176, 65132, 0, 1, 3, 1, 1),
(57176, 68600, 0, 1, 3, 1, 1),
(57176, 65090, 0, 1, 1, 1, 1),
(57176, 65124, 0, 1, 1, 1, 1),
(57176, 65126, 0, 1, 1, 1, 1),
(57176, 65128, 0, 1, 1, 1, 1),
(57176, 65129, 0, 1, 1, 1, 1),
(57176, 65131, 0, 1, 1, 1, 1),
(57176, 65145, 0, 1, 1, 1, 1),
(57176, 65087, 0, 1, 2, 1, 1),
(57176, 65088, 0, 1, 2, 1, 1),
(57176, 65089, 0, 1, 2, 1, 1),
(57177, 65123, 0, 1, 3, 1, 1),
(57177, 65125, 0, 1, 3, 1, 1),
(57177, 65127, 0, 1, 3, 1, 1),
(57177, 65130, 0, 1, 3, 1, 1),
(57177, 65132, 0, 1, 3, 1, 1),
(57177, 68600, 0, 1, 3, 1, 1),
(57177, 65090, 0, 1, 1, 1, 1),
(57177, 65124, 0, 1, 1, 1, 1),
(57177, 65126, 0, 1, 1, 1, 1),
(57177, 65128, 0, 1, 1, 1, 1),
(57177, 65129, 0, 1, 1, 1, 1),
(57177, 65131, 0, 1, 1, 1, 1),
(57177, 65145, 0, 1, 1, 1, 1),
(57177, 65087, 0, 1, 2, 1, 1),
(57177, 65088, 0, 1, 2, 1, 1),
(57177, 65089, 0, 1, 2, 1, 1);
UPDATE `creature_template` SET `health_mod`=0.15 WHERE `entry`=15996;
UPDATE `creature_template` SET `health_mod`=0.15 WHERE `entry`=15997;
UPDATE `creature_template` SET `health_mod`=0.15 WHERE `entry`=15998;
UPDATE `creature_template` SET `health_mod`=0.15 WHERE `entry`=15999;
UPDATE `creature_template` SET `health_mod`=10 WHERE `entry`=22526;
UPDATE `creature_template` SET `health_mod`=12 WHERE `entry`=22527;
UPDATE `creature_template` SET `health_mod`=1 WHERE `entry`=22528;
UPDATE `creature_template` SET `health_mod`=0.7 WHERE `entry`=22529;
UPDATE `creature_template` SET `health_mod`=0.7 WHERE `entry`=22531;
UPDATE `creature_template` SET `health_mod`=0.7 WHERE `entry`=22534;
UPDATE `creature_template` SET `health_mod`=0.7 WHERE `entry`=22536;
UPDATE `creature_template` SET `health_mod`=1.3 WHERE `entry`=22538;
UPDATE `creature_template` SET `health_mod`=5 WHERE `entry`=22539;
UPDATE `creature_template` SET `health_mod`=3 WHERE `entry`=22540;
UPDATE `creature_template` SET `health_mod`=8 WHERE `entry`=22541;
UPDATE `creature_template` SET `health_mod`=20 WHERE `entry`=22542;
UPDATE `creature_template` SET `health_mod`=20 WHERE `entry`=22544;
UPDATE `creature_template` SET `health_mod`=3 WHERE `entry`=22546;
UPDATE `creature_template` SET `health_mod`=20 WHERE `entry`=22547;
UPDATE `creature_template` SET `health_mod`=20 WHERE `entry`=22548;
UPDATE `creature_template` SET `health_mod`=15 WHERE `entry`=22549;
UPDATE `creature_template` SET `health_mod`=7 WHERE `entry`=22550;
UPDATE `creature_template` SET `health_mod`=15 WHERE `entry`=22551;
UPDATE `creature_template` SET `health_mod`=8 WHERE `entry`=22552;
UPDATE `creature_template` SET `health_mod`=1.35 WHERE `entry`=22553;
UPDATE `creature_template` SET `health_mod`=15 WHERE `entry`=22554;
UPDATE `creature_template` SET `health_mod`=1.35 WHERE `entry`=22555;
UPDATE `creature_template` SET `health_mod`=10 WHERE `entry`=22558;
UPDATE `creature_template` SET `health_mod`=20 WHERE `entry`=22560;
UPDATE `creature_template` SET `health_mod`=20 WHERE `entry`=22561;
UPDATE `creature_template` SET `health_mod`=8 WHERE `entry`=22565;
UPDATE `creature_template` SET `health_mod`=10 WHERE `entry`=22567;
UPDATE `creature_template` SET `health_mod`=12 WHERE `entry`=22568;
UPDATE `creature_template` SET `health_mod`=1 WHERE `entry`=22569;
UPDATE `creature_template` SET `health_mod`=10 WHERE `entry`=22571;
UPDATE `creature_template` SET `health_mod`=20 WHERE `entry`=22572;
UPDATE `creature_template` SET `health_mod`=15 WHERE `entry`=22574;
UPDATE `creature_template` SET `health_mod`=8 WHERE `entry`=22575;
UPDATE `creature_template` SET `health_mod`=7 WHERE `entry`=22576;
UPDATE `creature_template` SET `health_mod`=15 WHERE `entry`=22577;
UPDATE `creature_template` SET `health_mod`=20 WHERE `entry`=22580;
UPDATE `creature_template` SET `health_mod`=3 WHERE `entry`=22581;
UPDATE `creature_template` SET `health_mod`=3 WHERE `entry`=22582;
UPDATE `creature_template` SET `health_mod`=3 WHERE `entry`=22583;
UPDATE `creature_template` SET `health_mod`=3 WHERE `entry`=22584;
UPDATE `creature_template` SET `health_mod`=3 WHERE `entry`=22585;
UPDATE `creature_template` SET `health_mod`=3 WHERE `entry`=22586;
UPDATE `creature_template` SET `health_mod`=0.6 WHERE `entry`=22588;
UPDATE `creature_template` SET `health_mod`=0.6 WHERE `entry`=22589;
UPDATE `creature_template` SET `health_mod`=3.7 WHERE `entry`=22590;
UPDATE `creature_template` SET `health_mod`=3.7 WHERE `entry`=22591;
UPDATE `creature_template` SET `health_mod`=20 WHERE `entry`=22596;
UPDATE `creature_template` SET `health_mod`=10 WHERE `entry`=22597;
UPDATE `creature_template` SET `health_mod`=10 WHERE `entry`=22598;
UPDATE `creature_template` SET `health_mod`=7 WHERE `entry`=22604;
UPDATE `creature_template` SET `health_mod`=30 WHERE `entry`=22605;
UPDATE `creature_template` SET `health_mod`=25 WHERE `entry`=22606;
UPDATE `creature_template` SET `health_mod`=0.7 WHERE `entry`=22608;
UPDATE `creature_template` SET `health_mod`=0.7 WHERE `entry`=22609;
UPDATE `creature_template` SET `health_mod`=3.7 WHERE `entry`=22610;
UPDATE `creature_template` SET `health_mod`=3.7 WHERE `entry`=22611;
UPDATE `creature_template` SET `health_mod`=10 WHERE `entry`=22613;
UPDATE `creature_template` SET `health_mod`=10 WHERE `entry`=22614;
UPDATE `creature_template` SET `health_mod`=6 WHERE `entry`=22622;
UPDATE `creature_template` SET `health_mod`=2.5 WHERE `entry`=22623;
UPDATE `creature_template` SET `health_mod`=5 WHERE `entry`=22624;
UPDATE `creature_template` SET `health_mod`=6.5 WHERE `entry`=22625;
UPDATE `creature_template` SET `health_mod`=8 WHERE `entry`=22626;
UPDATE `creature_template` SET `health_mod`=50 WHERE `entry`=22627;
UPDATE `creature_template` SET `health_mod`=50 WHERE `entry`=22629;
UPDATE `creature_template` SET `health_mod`=1 WHERE `entry`=22630;
UPDATE `creature_template` SET `health_mod`=8 WHERE `entry`=22631;
UPDATE `creature_template` SET `health_mod`=25 WHERE `entry`=22632;
UPDATE `creature_template` SET `health_mod`=6 WHERE `entry`=22633;
UPDATE `creature_template` SET `health_mod`=2.5 WHERE `entry`=22634;
UPDATE `creature_template` SET `health_mod`=12 WHERE `entry`=22636;
UPDATE `creature_template` SET `health_mod`=8 WHERE `entry`=22637;
UPDATE `creature_template` SET `health_mod`=1.05 WHERE `entry`=22638;
UPDATE `creature_template` SET `health_mod`=27.5 WHERE `entry`=22641;
UPDATE `creature_template` SET `health_mod`=25 WHERE `entry`=22642;
UPDATE `creature_template` SET `health_mod`=35 WHERE `entry`=22643;
UPDATE `creature_template` SET `health_mod`=27.5 WHERE `entry`=22644;
UPDATE `creature_template` SET `health_mod`=5 WHERE `entry`=22646;
UPDATE `creature_template` SET `health_mod`=10 WHERE `entry`=22648;
UPDATE `creature_template` SET `health_mod`=10 WHERE `entry`=22650;
UPDATE `creature_template` SET `health_mod`=10 WHERE `entry`=22651;
UPDATE `creature_template` SET `health_mod`=10 WHERE `entry`=22652;
UPDATE `creature_template` SET `health_mod`=10 WHERE `entry`=22653;
UPDATE `creature_template` SET `health_mod`=10 WHERE `entry`=22654;
UPDATE `creature_template` SET `health_mod`=10 WHERE `entry`=22655;
UPDATE `creature_template` SET `health_mod`=10 WHERE `entry`=22656;
UPDATE `creature_template` SET `health_mod`=10 WHERE `entry`=22658;
UPDATE `creature_template` SET `health_mod`=10 WHERE `entry`=22659;
UPDATE `creature_template` SET `health_mod`=10 WHERE `entry`=22660;
UPDATE `creature_template` SET `health_mod`=10 WHERE `entry`=22661;
UPDATE `creature_template` SET `health_mod`=1.1 WHERE `entry`=22662;
UPDATE `creature_template` SET `health_mod`=1.1 WHERE `entry`=22664;
UPDATE `creature_template` SET `health_mod`=0.6 WHERE `entry`=22665;
UPDATE `creature_template` SET `health_mod`=0.6 WHERE `entry`=22666;
UPDATE `creature_template` SET `health_mod`=1.2 WHERE `entry`=22669;
UPDATE `creature_template` SET `health_mod`=1 WHERE `entry`=22670;
UPDATE `creature_template` SET `health_mod`=1.3 WHERE `entry`=22673;
UPDATE `creature_template` SET `health_mod`=0.4 WHERE `entry`=22674;
UPDATE `creature_template` SET `health_mod`=3.7 WHERE `entry`=22675;
UPDATE `creature_template` SET `health_mod`=3 WHERE `entry`=22677;
UPDATE `creature_template` SET `health_mod`=8 WHERE `entry`=22678;
UPDATE `creature_template` SET `health_mod`=10 WHERE `entry`=22680;
UPDATE `creature_template` SET `health_mod`=10 WHERE `entry`=22681;
UPDATE `creature_template` SET `health_mod`=1 WHERE `entry`=22683;
UPDATE `creature_template` SET `health_mod`=1 WHERE `entry`=22684;
UPDATE `creature_template` SET `health_mod`=1 WHERE `entry`=22685;
UPDATE `creature_template` SET `health_mod`=3.7 WHERE `entry`=22689;
UPDATE `creature_template` SET `health_mod`=0.4 WHERE `entry`=22690;
UPDATE `creature_template` SET `health_mod`=3.7 WHERE `entry`=22692;
UPDATE `creature_template` SET `health_mod`=3 WHERE `entry`=22693;
UPDATE `creature_template` SET `health_mod`=1 WHERE `entry`=22694;
UPDATE `creature_template` SET `health_mod`=1 WHERE `entry`=22696;
UPDATE `creature_template` SET `health_mod`=10 WHERE `entry`=22697;
UPDATE `creature_template` SET `health_mod`=10 WHERE `entry`=22698;
UPDATE `creature_template` SET `health_mod`=1 WHERE `entry`=22699;
UPDATE `creature_template` SET `health_mod`=1 WHERE `entry`=22712;
UPDATE `creature_template` SET `health_mod`=0.5 WHERE `entry`=22714;
UPDATE `creature_template` SET `health_mod`=0.5 WHERE `entry`=22715;
UPDATE `creature_template` SET `health_mod`=3.7 WHERE `entry`=22716;
UPDATE `creature_template` SET `health_mod`=3.7 WHERE `entry`=22717;
UPDATE `creature_template` SET `health_mod`=1.2 WHERE `entry`=22720;
UPDATE `creature_template` SET `health_mod`=10 WHERE `entry`=22721;
UPDATE `creature_template` SET `health_mod`=10 WHERE `entry`=22722;
UPDATE `creature_template` SET `health_mod`=3.7 WHERE `entry`=22723;
UPDATE `creature_template` SET `health_mod`=3.7 WHERE `entry`=22724;
UPDATE `creature_template` SET `health_mod`=1 WHERE `entry`=22726;
UPDATE `creature_template` SET `health_mod`=5 WHERE `entry`=22728;
UPDATE `creature_template` SET `health_mod`=0.4 WHERE `entry`=22729;
UPDATE `creature_template` SET `health_mod`=0.4 WHERE `entry`=22730;
UPDATE `creature_template` SET `health_mod`=0.4 WHERE `entry`=22731;
UPDATE `creature_template` SET `health_mod`=0.3 WHERE `entry`=22732;
UPDATE `creature_template` SET `health_mod`=0.3 WHERE `entry`=22733;
UPDATE `creature_template` SET `health_mod`=0.4 WHERE `entry`=22734;
UPDATE `creature_template` SET `health_mod`=3 WHERE `entry`=22735;
UPDATE `creature_template` SET `health_mod`=3 WHERE `entry`=22736;
UPDATE `creature_template` SET `health_mod`=1.02 WHERE `entry`=22737;
UPDATE `creature_template` SET `health_mod`=0.4 WHERE `entry`=22738;
UPDATE `creature_template` SET `health_mod`=1.5 WHERE `entry`=22739;
UPDATE `creature_template` SET `health_mod`=3 WHERE `entry`=22740;
UPDATE `creature_template` SET `health_mod`=0.4 WHERE `entry`=22741;
UPDATE `creature_template` SET `health_mod`=3 WHERE `entry`=22742;
UPDATE `creature_template` SET `health_mod`=0.4 WHERE `entry`=22743;
UPDATE `creature_template` SET `health_mod`=0.3 WHERE `entry`=22744;
UPDATE `creature_template` SET `health_mod`=0.3 WHERE `entry`=22745;
UPDATE `creature_template` SET `health_mod`=0.4 WHERE `entry`=22746;
UPDATE `creature_template` SET `health_mod`=0.5 WHERE `entry`=22747;
UPDATE `creature_template` SET `health_mod`=0.5 WHERE `entry`=22748;
UPDATE `creature_template` SET `health_mod`=0.4 WHERE `entry`=22749;
UPDATE `creature_template` SET `health_mod`=0.5 WHERE `entry`=22750;
UPDATE `creature_template` SET `health_mod`=0.5 WHERE `entry`=22751;
UPDATE `creature_template` SET `health_mod`=0.5 WHERE `entry`=22752;
UPDATE `creature_template` SET `health_mod`=0.5 WHERE `entry`=22753;
UPDATE `creature_template` SET `health_mod`=0.5 WHERE `entry`=22755;
UPDATE `creature_template` SET `health_mod`=0.5 WHERE `entry`=22756;
UPDATE `creature_template` SET `health_mod`=0.5 WHERE `entry`=22757;
UPDATE `creature_template` SET `health_mod`=0.5 WHERE `entry`=22758;
UPDATE `creature_template` SET `health_mod`=3 WHERE `entry`=22759;
UPDATE `creature_template` SET `health_mod`=2 WHERE `entry`=22760;
UPDATE `creature_template` SET `health_mod`=1.3 WHERE `entry`=22761;
UPDATE `creature_template` SET `health_mod`=1.3 WHERE `entry`=22762;
UPDATE `creature_template` SET `health_mod`=1.3 WHERE `entry`=22763;
UPDATE `creature_template` SET `health_mod`=1.5 WHERE `entry`=22766;
UPDATE `creature_template` SET `health_mod`=0.4 WHERE `entry`=22767;
UPDATE `creature_template` SET `health_mod`=0.6 WHERE `entry`=22770;
UPDATE `creature_template` SET `health_mod`=0.6 WHERE `entry`=22771;
UPDATE `creature_template` SET `health_mod`=0.6 WHERE `entry`=22772;
UPDATE `creature_template` SET `health_mod`=0.6 WHERE `entry`=22773;
UPDATE `creature_template` SET `health_mod`=0.6 WHERE `entry`=22775;
UPDATE `creature_template` SET `health_mod`=0.6 WHERE `entry`=22777;
UPDATE `creature_template` SET `health_mod`=0.5 WHERE `entry`=22778;
UPDATE `creature_template` SET `health_mod`=0.5 WHERE `entry`=22779;
UPDATE `creature_template` SET `health_mod`=0.6 WHERE `entry`=22780;
UPDATE `creature_template` SET `health_mod`=0.5 WHERE `entry`=22781;
UPDATE `creature_template` SET `health_mod`=0.5 WHERE `entry`=22782;
UPDATE `creature_template` SET `health_mod`=1.35 WHERE `entry`=22783;
UPDATE `creature_template` SET `health_mod`=1.35 WHERE `entry`=22784;
UPDATE `creature_template` SET `health_mod`=1.3 WHERE `entry`=22785;
UPDATE `creature_template` SET `health_mod`=1.35 WHERE `entry`=22786;
UPDATE `creature_template` SET `health_mod`=1.3 WHERE `entry`=22787;
UPDATE `creature_template` SET `health_mod`=0.01 WHERE `entry`=25388;
UPDATE `creature_template` SET `health_mod`=0.01 WHERE `entry`=25389;
UPDATE `creature_template` SET `health_mod`=1 WHERE `entry`=25410;
UPDATE `creature_template` SET `health_mod`=2 WHERE `entry`=25412;
UPDATE `creature_template` SET `health_mod`=1 WHERE `entry`=25683;
UPDATE `creature_template` SET `health_mod`=1 WHERE `entry`=25704;
UPDATE `creature_template` SET `health_mod`=500 WHERE `entry`=26310;
UPDATE `creature_template` SET `health_mod`=35 WHERE `entry`=31055;
UPDATE `creature_template` SET `health_mod`=1400 WHERE `entry`=31734;
UPDATE `creature_template` SET `health_mod`=37.5 WHERE `entry`=31818;
UPDATE `creature_template` SET `health_mod`=37.5 WHERE `entry`=31819;
UPDATE `creature_template` SET `health_mod`=40 WHERE `entry`=31820;
UPDATE `creature_template` SET `health_mod`=65 WHERE `entry`=31821;
UPDATE `creature_template` SET `health_mod`=65 WHERE `entry`=31822;
UPDATE `creature_template` SET `health_mod`=12.5 WHERE `entry`=31823;
UPDATE `creature_template` SET `health_mod`=12.5 WHERE `entry`=31824;
UPDATE `creature_template` SET `health_mod`=15 WHERE `entry`=31825;
UPDATE `creature_template` SET `health_mod`=15 WHERE `entry`=31826;
UPDATE `creature_template` SET `health_mod`=12.5 WHERE `entry`=31828;
UPDATE `creature_template` SET `health_mod`=25 WHERE `entry`=31829;
UPDATE `creature_template` SET `health_mod`=4.81 WHERE `entry`=31905;
UPDATE `creature_template` SET `health_mod`=4.81 WHERE `entry`=31906;
UPDATE `creature_template` SET `health_mod`=26 WHERE `entry`=31909;
UPDATE `creature_template` SET `health_mod`=1.3 WHERE `entry`=31918;
UPDATE `creature_template` SET `health_mod`=13 WHERE `entry`=31920;
UPDATE `creature_template` SET `health_mod`=1.69 WHERE `entry`=31921;
UPDATE `creature_template` SET `health_mod`=9.1 WHERE `entry`=31922;
UPDATE `creature_template` SET `health_mod`=15.6 WHERE `entry`=31923;
UPDATE `creature_template` SET `health_mod`=1.3 WHERE `entry`=31924;
UPDATE `creature_template` SET `health_mod`=6.5 WHERE `entry`=31925;
UPDATE `creature_template` SET `health_mod`=6.5 WHERE `entry`=31926;
UPDATE `creature_template` SET `health_mod`=0.91 WHERE `entry`=31927;
UPDATE `creature_template` SET `health_mod`=0.91 WHERE `entry`=31929;
UPDATE `creature_template` SET `health_mod`=0.91 WHERE `entry`=31932;
UPDATE `creature_template` SET `health_mod`=0.91 WHERE `entry`=31933;
UPDATE `creature_template` SET `health_mod`=0.91 WHERE `entry`=31935;
UPDATE `creature_template` SET `health_mod`=0.91 WHERE `entry`=31937;
UPDATE `creature_template` SET `health_mod`=1.69 WHERE `entry`=31939;
UPDATE `creature_template` SET `health_mod`=4.81 WHERE `entry`=31941;
UPDATE `creature_template` SET `health_mod`=4.81 WHERE `entry`=31942;
UPDATE `creature_template` SET `health_mod`=1.69 WHERE `entry`=31945;
UPDATE `creature_template` SET `health_mod`=0.52 WHERE `entry`=31946;
UPDATE `creature_template` SET `health_mod`=0.52 WHERE `entry`=31947;
UPDATE `creature_template` SET `health_mod`=0.52 WHERE `entry`=31948;
UPDATE `creature_template` SET `health_mod`=0.39 WHERE `entry`=31949;
UPDATE `creature_template` SET `health_mod`=0.39 WHERE `entry`=31950;
UPDATE `creature_template` SET `health_mod`=0.52 WHERE `entry`=31951;
UPDATE `creature_template` SET `health_mod`=13 WHERE `entry`=31952;
UPDATE `creature_template` SET `health_mod`=13 WHERE `entry`=31953;
UPDATE `creature_template` SET `health_mod`=3.9 WHERE `entry`=31960;
UPDATE `creature_template` SET `health_mod`=3.9 WHERE `entry`=31961;
UPDATE `creature_template` SET `health_mod`=6.5 WHERE `entry`=31962;
UPDATE `creature_template` SET `health_mod`=1.3 WHERE `entry`=31963;
UPDATE `creature_template` SET `health_mod`=3.9 WHERE `entry`=31964;
UPDATE `creature_template` SET `health_mod`=10.4 WHERE `entry`=31965;
UPDATE `creature_template` SET `health_mod`=26 WHERE `entry`=31966;
UPDATE `creature_template` SET `health_mod`=26 WHERE `entry`=31968;
UPDATE `creature_template` SET `health_mod`=3.9 WHERE `entry`=31970;
UPDATE `creature_template` SET `health_mod`=26 WHERE `entry`=31971;
UPDATE `creature_template` SET `health_mod`=26 WHERE `entry`=31972;
UPDATE `creature_template` SET `health_mod`=32.5 WHERE `entry`=31974;
UPDATE `creature_template` SET `health_mod`=1.326 WHERE `entry`=31975;
UPDATE `creature_template` SET `health_mod`=7.8 WHERE `entry`=31976;
UPDATE `creature_template` SET `health_mod`=0.52 WHERE `entry`=31977;
UPDATE `creature_template` SET `health_mod`=1.95 WHERE `entry`=31978;
UPDATE `creature_template` SET `health_mod`=3.25 WHERE `entry`=31980;
UPDATE `creature_template` SET `health_mod`=0.52 WHERE `entry`=31981;
UPDATE `creature_template` SET `health_mod`=19.5 WHERE `entry`=31982;
UPDATE `creature_template` SET `health_mod`=0.78 WHERE `entry`=31983;
UPDATE `creature_template` SET `health_mod`=6.5 WHERE `entry`=31984;
UPDATE `creature_template` SET `health_mod`=4.81 WHERE `entry`=31985;
UPDATE `creature_template` SET `health_mod`=13 WHERE `entry`=31986;
UPDATE `creature_template` SET `health_mod`=3.9 WHERE `entry`=31988;
UPDATE `creature_template` SET `health_mod`=10.4 WHERE `entry`=31989;
UPDATE `creature_template` SET `health_mod`=9.1 WHERE `entry`=31990;
UPDATE `creature_template` SET `health_mod`=19.5 WHERE `entry`=31991;
UPDATE `creature_template` SET `health_mod`=10.4 WHERE `entry`=31994;
UPDATE `creature_template` SET `health_mod`=1.755 WHERE `entry`=31995;
UPDATE `creature_template` SET `health_mod`=13 WHERE `entry`=31996;
UPDATE `creature_template` SET `health_mod`=19.5 WHERE `entry`=31997;
UPDATE `creature_template` SET `health_mod`=8.45 WHERE `entry`=31998;
UPDATE `creature_template` SET `health_mod`=13 WHERE `entry`=31999;
UPDATE `creature_template` SET `health_mod`=1.755 WHERE `entry`=32000;
UPDATE `creature_template` SET `health_mod`=13 WHERE `entry`=32001;
UPDATE `creature_template` SET `health_mod`=13 WHERE `entry`=32004;
UPDATE `creature_template` SET `health_mod`=10.4 WHERE `entry`=32005;
UPDATE `creature_template` SET `health_mod`=26 WHERE `entry`=32007;
UPDATE `creature_template` SET `health_mod`=26 WHERE `entry`=32008;
UPDATE `creature_template` SET `health_mod`=3.9 WHERE `entry`=32011;
UPDATE `creature_template` SET `health_mod`=0.52 WHERE `entry`=32012;
UPDATE `creature_template` SET `health_mod`=3.9 WHERE `entry`=32013;
UPDATE `creature_template` SET `health_mod`=0.52 WHERE `entry`=32014;
UPDATE `creature_template` SET `health_mod`=0.39 WHERE `entry`=32015;
UPDATE `creature_template` SET `health_mod`=0.39 WHERE `entry`=32016;
UPDATE `creature_template` SET `health_mod`=0.52 WHERE `entry`=32017;
UPDATE `creature_template` SET `health_mod`=0.65 WHERE `entry`=32018;
UPDATE `creature_template` SET `health_mod`=0.65 WHERE `entry`=32019;
UPDATE `creature_template` SET `health_mod`=0.52 WHERE `entry`=32020;
UPDATE `creature_template` SET `health_mod`=0.65 WHERE `entry`=32021;
UPDATE `creature_template` SET `health_mod`=13 WHERE `entry`=32024;
UPDATE `creature_template` SET `health_mod`=4.81 WHERE `entry`=32025;
UPDATE `creature_template` SET `health_mod`=1.3 WHERE `entry`=32026;
UPDATE `creature_template` SET `health_mod`=45.5 WHERE `entry`=32027;
UPDATE `creature_template` SET `health_mod`=13 WHERE `entry`=32028;
UPDATE `creature_template` SET `health_mod`=13 WHERE `entry`=32029;
UPDATE `creature_template` SET `health_mod`=1.3 WHERE `entry`=32043;
UPDATE `creature_template` SET `health_mod`=10.4 WHERE `entry`=32044;
UPDATE `creature_template` SET `health_mod`=1.3 WHERE `entry`=32045;
UPDATE `creature_template` SET `health_mod`=4.81 WHERE `entry`=32046;
UPDATE `creature_template` SET `health_mod`=13 WHERE `entry`=32048;
UPDATE `creature_template` SET `health_mod`=1.3 WHERE `entry`=32049;
UPDATE `creature_template` SET `health_mod`=15.6 WHERE `entry`=32050;
UPDATE `creature_template` SET `health_mod`=1.3 WHERE `entry`=32051;
UPDATE `creature_template` SET `health_mod`=13 WHERE `entry`=32052;
UPDATE `creature_template` SET `health_mod`=1.3 WHERE `entry`=32053;
UPDATE `creature_template` SET `health_mod`=10.4 WHERE `entry`=32054;
UPDATE `creature_template` SET `health_mod`=32.5 WHERE `entry`=32055;
UPDATE `creature_template` SET `health_mod`=0.65 WHERE `entry`=32057;
UPDATE `creature_template` SET `health_mod`=0.65 WHERE `entry`=32058;
UPDATE `creature_template` SET `health_mod`=0.65 WHERE `entry`=32059;
UPDATE `creature_template` SET `health_mod`=0.65 WHERE `entry`=32062;
UPDATE `creature_template` SET `health_mod`=0.65 WHERE `entry`=32063;
UPDATE `creature_template` SET `health_mod`=0.65 WHERE `entry`=32065;
UPDATE `creature_template` SET `health_mod`=0.65 WHERE `entry`=32066;
UPDATE `creature_template` SET `health_mod`=0.65 WHERE `entry`=32067;
UPDATE `creature_template` SET `health_mod`=0.65 WHERE `entry`=32068;
UPDATE `creature_template` SET `health_mod`=1.43 WHERE `entry`=32070;
UPDATE `creature_template` SET `health_mod`=4.81 WHERE `entry`=32071;
UPDATE `creature_template` SET `health_mod`=4.81 WHERE `entry`=32072;
UPDATE `creature_template` SET `health_mod`=1.43 WHERE `entry`=32075;
UPDATE `creature_template` SET `health_mod`=3.9 WHERE `entry`=32076;
UPDATE `creature_template` SET `health_mod`=2.6 WHERE `entry`=32077;
UPDATE `creature_template` SET `health_mod`=13 WHERE `entry`=32078;
UPDATE `creature_template` SET `health_mod`=13 WHERE `entry`=32080;
UPDATE `creature_template` SET `health_mod`=1.69 WHERE `entry`=32081;
UPDATE `creature_template` SET `health_mod`=1.69 WHERE `entry`=32082;
UPDATE `creature_template` SET `health_mod`=1.69 WHERE `entry`=32083;
UPDATE `creature_template` SET `health_mod`=26 WHERE `entry`=32086;
UPDATE `creature_template` SET `health_mod`=7.8 WHERE `entry`=32088;
UPDATE `creature_template` SET `health_mod`=1.95 WHERE `entry`=32089;
UPDATE `creature_template` SET `health_mod`=4.81 WHERE `entry`=32090;
UPDATE `creature_template` SET `health_mod`=0.52 WHERE `entry`=32091;
UPDATE `creature_template` SET `health_mod`=13 WHERE `entry`=32092;
UPDATE `creature_template` SET `health_mod`=3.25 WHERE `entry`=32093;
UPDATE `creature_template` SET `health_mod`=0.78 WHERE `entry`=32094;
UPDATE `creature_template` SET `health_mod`=19.5 WHERE `entry`=32095;
UPDATE `creature_template` SET `health_mod`=0.52 WHERE `entry`=32098;
UPDATE `creature_template` SET `health_mod`=13 WHERE `entry`=32099;
UPDATE `creature_template` SET `health_mod`=10.4 WHERE `entry`=32101;
UPDATE `creature_template` SET `health_mod`=4.81 WHERE `entry`=32102;
UPDATE `creature_template` SET `health_mod`=3.9 WHERE `entry`=32103;
UPDATE `creature_template` SET `health_mod`=9.1 WHERE `entry`=32104;
UPDATE `creature_template` SET `health_mod`=19.5 WHERE `entry`=32105;
UPDATE `creature_template` SET `health_mod`=13 WHERE `entry`=32106;
UPDATE `creature_template` SET `health_mod`=1.3 WHERE `entry`=32110;
UPDATE `creature_template` SET `health_mod`=15.6 WHERE `entry`=32111;
UPDATE `creature_template` SET `health_mod`=3.9 WHERE `entry`=32113;
UPDATE `creature_template` SET `health_mod`=3.9 WHERE `entry`=32114;
UPDATE `creature_template` SET `health_mod`=3.9 WHERE `entry`=32115;
UPDATE `creature_template` SET `health_mod`=3.9 WHERE `entry`=32116;
UPDATE `creature_template` SET `health_mod`=3.9 WHERE `entry`=32117;
UPDATE `creature_template` SET `health_mod`=3.9 WHERE `entry`=32118;
UPDATE `creature_template` SET `health_mod`=1.3 WHERE `entry`=32119;
UPDATE `creature_template` SET `health_mod`=10.4 WHERE `entry`=32120;
UPDATE `creature_template` SET `health_mod`=0.78 WHERE `entry`=32121;
UPDATE `creature_template` SET `health_mod`=0.78 WHERE `entry`=32122;
UPDATE `creature_template` SET `health_mod`=0.78 WHERE `entry`=32123;
UPDATE `creature_template` SET `health_mod`=0.78 WHERE `entry`=32124;
UPDATE `creature_template` SET `health_mod`=0.78 WHERE `entry`=32125;
UPDATE `creature_template` SET `health_mod`=0.78 WHERE `entry`=32126;
UPDATE `creature_template` SET `health_mod`=0.78 WHERE `entry`=32129;
UPDATE `creature_template` SET `health_mod`=0.78 WHERE `entry`=32131;
UPDATE `creature_template` SET `health_mod`=1.56 WHERE `entry`=32132;
UPDATE `creature_template` SET `health_mod`=1.56 WHERE `entry`=32135;
UPDATE `creature_template` SET `health_mod`=1.365 WHERE `entry`=32137;
UPDATE `creature_template` SET `health_mod`=0.65 WHERE `entry`=32139;
UPDATE `creature_template` SET `health_mod`=0.65 WHERE `entry`=32140;
UPDATE `creature_template` SET `health_mod`=0.78 WHERE `entry`=32141;
UPDATE `creature_template` SET `health_mod`=0.65 WHERE `entry`=32142;
UPDATE `creature_template` SET `health_mod`=0.65 WHERE `entry`=32143;
UPDATE `creature_template` SET `health_mod`=1.755 WHERE `entry`=32144;
UPDATE `creature_template` SET `health_mod`=1.755 WHERE `entry`=32145;
UPDATE `creature_template` SET `health_mod`=1.69 WHERE `entry`=32146;
UPDATE `creature_template` SET `health_mod`=1.755 WHERE `entry`=32147;
UPDATE `creature_template` SET `health_mod`=1.69 WHERE `entry`=32148;
UPDATE `creature_template` SET `health_mod`=10 WHERE `entry`=32764;
UPDATE `creature_template` SET `health_mod`=10 WHERE `entry`=32765;
UPDATE `creature_template` SET `health_mod`=10 WHERE `entry`=32766;
UPDATE `creature_template` SET `health_mod`=1 WHERE `entry`=33535;
UPDATE `creature_template` SET `health_mod`=192 WHERE `entry`=34442;
UPDATE `creature_template` SET `health_mod`=48 WHERE `entry`=34443;
UPDATE `creature_template` SET `health_mod`=1500 WHERE `entry`=34566;
UPDATE `creature_template` SET `health_mod`=48.6 WHERE `entry`=34648;
UPDATE `creature_template` SET `health_mod`=0.714286 WHERE `entry`=34649;
UPDATE `creature_template` SET `health_mod`=9 WHERE `entry`=34650;
UPDATE `creature_template` SET `health_mod`=1450 WHERE `entry`=35216;
UPDATE `creature_template` SET `health_mod`=16 WHERE `entry`=35262;
UPDATE `creature_template` SET `health_mod`=7 WHERE `entry`=35263;
UPDATE `creature_template` SET `health_mod`=23 WHERE `entry`=35264;
UPDATE `creature_template` SET `health_mod`=1 WHERE `entry`=35265;
UPDATE `creature_template` SET `health_mod`=15 WHERE `entry`=35266;
UPDATE `creature_template` SET `health_mod`=64 WHERE `entry`=35267;
UPDATE `creature_template` SET `health_mod`=380 WHERE `entry`=35268;
UPDATE `creature_template` SET `health_mod`=1900 WHERE `entry`=35269;
UPDATE `creature_template` SET `health_mod`=70 WHERE `entry`=35270;
UPDATE `creature_template` SET `health_mod`=25 WHERE `entry`=35271;
UPDATE `creature_template` SET `health_mod`=70 WHERE `entry`=35272;
UPDATE `creature_template` SET `health_mod`=1 WHERE `entry`=35278;
UPDATE `creature_template` SET `health_mod`=15 WHERE `entry`=35279;
UPDATE `creature_template` SET `health_mod`=64 WHERE `entry`=35280;
UPDATE `creature_template` SET `health_mod`=2000 WHERE `entry`=35347;
UPDATE `creature_template` SET `health_mod`=600 WHERE `entry`=35348;
UPDATE `creature_template` SET `health_mod`=2800 WHERE `entry`=35349;
UPDATE `creature_template` SET `health_mod`=2000 WHERE `entry`=35350;
UPDATE `creature_template` SET `health_mod`=600 WHERE `entry`=35351;
UPDATE `creature_template` SET `health_mod`=2800 WHERE `entry`=35352;
UPDATE `creature_template` SET `health_mod`=30 WHERE `entry`=35353;
UPDATE `creature_template` SET `health_mod`=30 WHERE `entry`=35354;
UPDATE `creature_template` SET `health_mod`=30 WHERE `entry`=35355;
UPDATE `creature_template` SET `health_mod`=30 WHERE `entry`=35356;
UPDATE `creature_template` SET `health_mod`=30 WHERE `entry`=35357;
UPDATE `creature_template` SET `health_mod`=30 WHERE `entry`=35358;
UPDATE `creature_template` SET `health_mod`=640 WHERE `entry`=35438;
UPDATE `creature_template` SET `health_mod`=200 WHERE `entry`=35439;
UPDATE `creature_template` SET `health_mod`=850 WHERE `entry`=35440;
UPDATE `creature_template` SET `health_mod`=40 WHERE `entry`=35441;
UPDATE `creature_template` SET `health_mod`=14 WHERE `entry`=35442;
UPDATE `creature_template` SET `health_mod`=60 WHERE `entry`=35443;
UPDATE `creature_template` SET `health_mod`=950 WHERE `entry`=35447;
UPDATE `creature_template` SET `health_mod`=300 WHERE `entry`=35448;
UPDATE `creature_template` SET `health_mod`=1300 WHERE `entry`=35449;
UPDATE `creature_template` SET `health_mod`=360 WHERE `entry`=35511;
UPDATE `creature_template` SET `health_mod`=120 WHERE `entry`=35512;
UPDATE `creature_template` SET `health_mod`=480 WHERE `entry`=35513;
UPDATE `creature_template` SET `health_mod`=360 WHERE `entry`=35514;
UPDATE `creature_template` SET `health_mod`=120 WHERE `entry`=35515;
UPDATE `creature_template` SET `health_mod`=480 WHERE `entry`=35516;
UPDATE `creature_template` SET `health_mod`=390 WHERE `entry`=35615;
UPDATE `creature_template` SET `health_mod`=1950 WHERE `entry`=35616;
UPDATE `creature_template` SET `health_mod`=18 WHERE `entry`=35655;
UPDATE `creature_template` SET `health_mod`=54 WHERE `entry`=35656;
UPDATE `creature_template` SET `health_mod`=1.95 WHERE `entry`=35658;
UPDATE `creature_template` SET `health_mod`=11.7 WHERE `entry`=35659;
UPDATE `creature_template` SET `health_mod`=192 WHERE `entry`=35662;
UPDATE `creature_template` SET `health_mod`=48 WHERE `entry`=35663;
UPDATE `creature_template` SET `health_mod`=256 WHERE `entry`=35664;
UPDATE `creature_template` SET `health_mod`=192 WHERE `entry`=35665;
UPDATE `creature_template` SET `health_mod`=48 WHERE `entry`=35666;
UPDATE `creature_template` SET `health_mod`=256 WHERE `entry`=35667;
UPDATE `creature_template` SET `health_mod`=192 WHERE `entry`=35668;
UPDATE `creature_template` SET `health_mod`=48 WHERE `entry`=35669;
UPDATE `creature_template` SET `health_mod`=256 WHERE `entry`=35670;
UPDATE `creature_template` SET `health_mod`=192 WHERE `entry`=35671;
UPDATE `creature_template` SET `health_mod`=48 WHERE `entry`=35672;
UPDATE `creature_template` SET `health_mod`=256 WHERE `entry`=35673;
UPDATE `creature_template` SET `health_mod`=192 WHERE `entry`=35674;
UPDATE `creature_template` SET `health_mod`=48 WHERE `entry`=35675;
UPDATE `creature_template` SET `health_mod`=256 WHERE `entry`=35676;
UPDATE `creature_template` SET `health_mod`=192 WHERE `entry`=35680;
UPDATE `creature_template` SET `health_mod`=48 WHERE `entry`=35681;
UPDATE `creature_template` SET `health_mod`=256 WHERE `entry`=35682;
UPDATE `creature_template` SET `health_mod`=192 WHERE `entry`=35683;
UPDATE `creature_template` SET `health_mod`=48 WHERE `entry`=35684;
UPDATE `creature_template` SET `health_mod`=256 WHERE `entry`=35685;
UPDATE `creature_template` SET `health_mod`=192 WHERE `entry`=35686;
UPDATE `creature_template` SET `health_mod`=48 WHERE `entry`=35687;
UPDATE `creature_template` SET `health_mod`=256 WHERE `entry`=35688;
UPDATE `creature_template` SET `health_mod`=192 WHERE `entry`=35689;
UPDATE `creature_template` SET `health_mod`=48 WHERE `entry`=35690;
UPDATE `creature_template` SET `health_mod`=256 WHERE `entry`=35691;
UPDATE `creature_template` SET `health_mod`=192 WHERE `entry`=35692;
UPDATE `creature_template` SET `health_mod`=48 WHERE `entry`=35693;
UPDATE `creature_template` SET `health_mod`=256 WHERE `entry`=35694;
UPDATE `creature_template` SET `health_mod`=192 WHERE `entry`=35695;
UPDATE `creature_template` SET `health_mod`=48 WHERE `entry`=35696;
UPDATE `creature_template` SET `health_mod`=256 WHERE `entry`=35697;
UPDATE `creature_template` SET `health_mod`=192 WHERE `entry`=35699;
UPDATE `creature_template` SET `health_mod`=48 WHERE `entry`=35700;
UPDATE `creature_template` SET `health_mod`=256 WHERE `entry`=35701;
UPDATE `creature_template` SET `health_mod`=192 WHERE `entry`=35702;
UPDATE `creature_template` SET `health_mod`=48 WHERE `entry`=35703;
UPDATE `creature_template` SET `health_mod`=256 WHERE `entry`=35704;
UPDATE `creature_template` SET `health_mod`=192 WHERE `entry`=35705;
UPDATE `creature_template` SET `health_mod`=48 WHERE `entry`=35706;
UPDATE `creature_template` SET `health_mod`=256 WHERE `entry`=35707;
UPDATE `creature_template` SET `health_mod`=192 WHERE `entry`=35708;
UPDATE `creature_template` SET `health_mod`=48 WHERE `entry`=35709;
UPDATE `creature_template` SET `health_mod`=256 WHERE `entry`=35710;
UPDATE `creature_template` SET `health_mod`=192 WHERE `entry`=35711;
UPDATE `creature_template` SET `health_mod`=48 WHERE `entry`=35712;
UPDATE `creature_template` SET `health_mod`=256 WHERE `entry`=35713;
UPDATE `creature_template` SET `health_mod`=192 WHERE `entry`=35714;
UPDATE `creature_template` SET `health_mod`=48 WHERE `entry`=35715;
UPDATE `creature_template` SET `health_mod`=256 WHERE `entry`=35716;
UPDATE `creature_template` SET `health_mod`=192 WHERE `entry`=35718;
UPDATE `creature_template` SET `health_mod`=48 WHERE `entry`=35719;
UPDATE `creature_template` SET `health_mod`=256 WHERE `entry`=35720;
UPDATE `creature_template` SET `health_mod`=192 WHERE `entry`=35721;
UPDATE `creature_template` SET `health_mod`=48 WHERE `entry`=35722;
UPDATE `creature_template` SET `health_mod`=256 WHERE `entry`=35723;
UPDATE `creature_template` SET `health_mod`=192 WHERE `entry`=35724;
UPDATE `creature_template` SET `health_mod`=48 WHERE `entry`=35725;
UPDATE `creature_template` SET `health_mod`=256 WHERE `entry`=35726;
UPDATE `creature_template` SET `health_mod`=192 WHERE `entry`=35728;
UPDATE `creature_template` SET `health_mod`=48 WHERE `entry`=35729;
UPDATE `creature_template` SET `health_mod`=256 WHERE `entry`=35730;
UPDATE `creature_template` SET `health_mod`=192 WHERE `entry`=35731;
UPDATE `creature_template` SET `health_mod`=48 WHERE `entry`=35732;
UPDATE `creature_template` SET `health_mod`=256 WHERE `entry`=35733;
UPDATE `creature_template` SET `health_mod`=192 WHERE `entry`=35734;
UPDATE `creature_template` SET `health_mod`=48 WHERE `entry`=35735;
UPDATE `creature_template` SET `health_mod`=256 WHERE `entry`=35736;
UPDATE `creature_template` SET `health_mod`=192 WHERE `entry`=35737;
UPDATE `creature_template` SET `health_mod`=48 WHERE `entry`=35738;
UPDATE `creature_template` SET `health_mod`=256 WHERE `entry`=35739;
UPDATE `creature_template` SET `health_mod`=192 WHERE `entry`=35740;
UPDATE `creature_template` SET `health_mod`=48 WHERE `entry`=35741;
UPDATE `creature_template` SET `health_mod`=256 WHERE `entry`=35742;
UPDATE `creature_template` SET `health_mod`=192 WHERE `entry`=35743;
UPDATE `creature_template` SET `health_mod`=48 WHERE `entry`=35744;
UPDATE `creature_template` SET `health_mod`=256 WHERE `entry`=35745;
UPDATE `creature_template` SET `health_mod`=192 WHERE `entry`=35746;
UPDATE `creature_template` SET `health_mod`=48 WHERE `entry`=35747;
UPDATE `creature_template` SET `health_mod`=256 WHERE `entry`=35748;
UPDATE `creature_template` SET `health_mod`=256 WHERE `entry`=35749;
UPDATE `creature_template` SET `health_mod`=35 WHERE `entry`=35774;
UPDATE `creature_template` SET `health_mod`=15 WHERE `entry`=35775;
UPDATE `creature_template` SET `health_mod`=55 WHERE `entry`=35776;
UPDATE `creature_template` SET `health_mod`=35 WHERE `entry`=36301;
UPDATE `creature_template` SET `health_mod`=15 WHERE `entry`=36302;
UPDATE `creature_template` SET `health_mod`=55 WHERE `entry`=36303;
UPDATE `creature_template` SET `health_mod`=3 WHERE `entry`=36473;
UPDATE `creature_template` SET `health_mod`=2.5 WHERE `entry`=36474;
UPDATE `creature_template` SET `health_mod`=6 WHERE `entry`=36475;
UPDATE `creature_template` SET `health_mod`=15.6 WHERE `entry`=37239;
UPDATE `creature_template` SET `health_mod`=6.5 WHERE `entry`=37241;
UPDATE `creature_template` SET `health_mod`=0.91 WHERE `entry`=37253;
UPDATE `creature_template` SET `health_mod`=0.91 WHERE `entry`=37255;
UPDATE `creature_template` SET `health_mod`=1.69 WHERE `entry`=37257;
UPDATE `creature_template` SET `health_mod`=4.81 WHERE `entry`=37259;
UPDATE `creature_template` SET `health_mod`=4.81 WHERE `entry`=37260;
UPDATE `creature_template` SET `health_mod`=1.69 WHERE `entry`=37263;
UPDATE `creature_template` SET `health_mod`=13 WHERE `entry`=37270;
UPDATE `creature_template` SET `health_mod`=13 WHERE `entry`=37271;
UPDATE `creature_template` SET `health_mod`=3.9 WHERE `entry`=37279;
UPDATE `creature_template` SET `health_mod`=6.5 WHERE `entry`=37280;
UPDATE `creature_template` SET `health_mod`=37.5 WHERE `entry`=37283;
UPDATE `creature_template` SET `health_mod`=26 WHERE `entry`=37290;
UPDATE `creature_template` SET `health_mod`=32.5 WHERE `entry`=37293;
UPDATE `creature_template` SET `health_mod`=7.8 WHERE `entry`=37295;
UPDATE `creature_template` SET `health_mod`=3.25 WHERE `entry`=37299;
UPDATE `creature_template` SET `health_mod`=19.5 WHERE `entry`=37301;
UPDATE `creature_template` SET `health_mod`=6.5 WHERE `entry`=37303;
UPDATE `creature_template` SET `health_mod`=4.81 WHERE `entry`=37304;
UPDATE `creature_template` SET `health_mod`=3.9 WHERE `entry`=37307;
UPDATE `creature_template` SET `health_mod`=9.1 WHERE `entry`=37309;
UPDATE `creature_template` SET `health_mod`=19.5 WHERE `entry`=37310;
UPDATE `creature_template` SET `health_mod`=1.755 WHERE `entry`=37314;
UPDATE `creature_template` SET `health_mod`=19.5 WHERE `entry`=37316;
UPDATE `creature_template` SET `health_mod`=8.45 WHERE `entry`=37317;
UPDATE `creature_template` SET `health_mod`=1.755 WHERE `entry`=37319;
UPDATE `creature_template` SET `health_mod`=10.4 WHERE `entry`=37324;
UPDATE `creature_template` SET `health_mod`=3.9 WHERE `entry`=37330;
UPDATE `creature_template` SET `health_mod`=3.9 WHERE `entry`=37332;
UPDATE `creature_template` SET `health_mod`=45.5 WHERE `entry`=37347;
UPDATE `creature_template` SET `health_mod`=10.4 WHERE `entry`=37365;
UPDATE `creature_template` SET `health_mod`=1.3 WHERE `entry`=37374;
UPDATE `creature_template` SET `health_mod`=10.4 WHERE `entry`=37375;
UPDATE `creature_template` SET `health_mod`=32.5 WHERE `entry`=37376;
UPDATE `creature_template` SET `health_mod`=1.43 WHERE `entry`=37391;
UPDATE `creature_template` SET `health_mod`=4.81 WHERE `entry`=37392;
UPDATE `creature_template` SET `health_mod`=4.81 WHERE `entry`=37393;
UPDATE `creature_template` SET `health_mod`=1.43 WHERE `entry`=37396;
UPDATE `creature_template` SET `health_mod`=3.9 WHERE `entry`=37397;
UPDATE `creature_template` SET `health_mod`=4.81 WHERE `entry`=37411;
UPDATE `creature_template` SET `health_mod`=13 WHERE `entry`=37413;
UPDATE `creature_template` SET `health_mod`=3.25 WHERE `entry`=37414;
UPDATE `creature_template` SET `health_mod`=10.4 WHERE `entry`=37422;
UPDATE `creature_template` SET `health_mod`=4.81 WHERE `entry`=37423;
UPDATE `creature_template` SET `health_mod`=3.9 WHERE `entry`=37424;
UPDATE `creature_template` SET `health_mod`=9.1 WHERE `entry`=37425;
UPDATE `creature_template` SET `health_mod`=15.6 WHERE `entry`=37432;
UPDATE `creature_template` SET `health_mod`=3.9 WHERE `entry`=37436;
UPDATE `creature_template` SET `health_mod`=3.9 WHERE `entry`=37437;
UPDATE `creature_template` SET `health_mod`=3.9 WHERE `entry`=37438;
UPDATE `creature_template` SET `health_mod`=3.9 WHERE `entry`=37439;
UPDATE `creature_template` SET `health_mod`=3.9 WHERE `entry`=37440;
UPDATE `creature_template` SET `health_mod`=3.9 WHERE `entry`=37441;
UPDATE `creature_template` SET `health_mod`=10.4 WHERE `entry`=37443;
UPDATE `creature_template` SET `health_mod`=37.5 WHERE `entry`=37444;
UPDATE `creature_template` SET `health_mod`=4.81 WHERE `entry`=37459;
UPDATE `creature_template` SET `health_mod`=4.81 WHERE `entry`=37460;
UPDATE `creature_template` SET `health_mod`=1.56 WHERE `entry`=37463;
UPDATE `creature_template` SET `health_mod`=1.365 WHERE `entry`=37465;
UPDATE `creature_template` SET `health_mod`=0.65 WHERE `entry`=37472;
UPDATE `creature_template` SET `health_mod`=2900 WHERE `entry`=37504;
UPDATE `creature_template` SET `health_mod`=980 WHERE `entry`=37505;
UPDATE `creature_template` SET `health_mod`=3750 WHERE `entry`=37506;
UPDATE `creature_template` SET `health_mod`=55 WHERE `entry`=37525;
UPDATE `creature_template` SET `health_mod`=75 WHERE `entry`=37526;
UPDATE `creature_template` SET `health_mod`=10 WHERE `entry`=37920;
UPDATE `creature_template` SET `health_mod`=1700 WHERE `entry`=37957;
UPDATE `creature_template` SET `health_mod`=750 WHERE `entry`=37958;
UPDATE `creature_template` SET `health_mod`=2250 WHERE `entry`=37959;
UPDATE `creature_template` SET `health_mod`=100 WHERE `entry`=38057;
UPDATE `creature_template` SET `health_mod`=90 WHERE `entry`=38059;
UPDATE `creature_template` SET `health_mod`=65 WHERE `entry`=38062;
UPDATE `creature_template` SET `health_mod`=50 WHERE `entry`=38063;
UPDATE `creature_template` SET `health_mod`=75 WHERE `entry`=38072;
UPDATE `creature_template` SET `health_mod`=75 WHERE `entry`=38073;
UPDATE `creature_template` SET `health_mod`=75 WHERE `entry`=38075;
UPDATE `creature_template` SET `health_mod`=90 WHERE `entry`=38076;
UPDATE `creature_template` SET `health_mod`=150 WHERE `entry`=38098;
UPDATE `creature_template` SET `health_mod`=120 WHERE `entry`=38099;
UPDATE `creature_template` SET `health_mod`=120 WHERE `entry`=38100;
UPDATE `creature_template` SET `health_mod`=160 WHERE `entry`=38101;
UPDATE `creature_template` SET `health_mod`=160 WHERE `entry`=38102;
UPDATE `creature_template` SET `health_mod`=1200 WHERE `entry`=38106;
UPDATE `creature_template` SET `health_mod`=225 WHERE `entry`=38108;
UPDATE `creature_template` SET `health_mod`=180 WHERE `entry`=38110;
UPDATE `creature_template` SET `health_mod`=900 WHERE `entry`=38123;
UPDATE `creature_template` SET `health_mod`=98.9602 WHERE `entry`=38128;
UPDATE `creature_template` SET `health_mod`=98.9602 WHERE `entry`=38129;
UPDATE `creature_template` SET `health_mod`=100 WHERE `entry`=38131;
UPDATE `creature_template` SET `health_mod`=150 WHERE `entry`=38132;
UPDATE `creature_template` SET `health_mod`=160 WHERE `entry`=38133;
UPDATE `creature_template` SET `health_mod`=350 WHERE `entry`=38156;
UPDATE `creature_template` SET `health_mod`=350 WHERE `entry`=38157;
UPDATE `creature_template` SET `health_mod`=65 WHERE `entry`=38166;
UPDATE `creature_template` SET `health_mod`=25 WHERE `entry`=38167;
UPDATE `creature_template` SET `health_mod`=5 WHERE `entry`=38168;
UPDATE `creature_template` SET `health_mod`=18 WHERE `entry`=38169;
UPDATE `creature_template` SET `health_mod`=20 WHERE `entry`=38170;
UPDATE `creature_template` SET `health_mod`=10 WHERE `entry`=38171;
UPDATE `creature_template` SET `health_mod`=5.1 WHERE `entry`=38233;
UPDATE `creature_template` SET `health_mod`=60 WHERE `entry`=38256;
UPDATE `creature_template` SET `health_mod`=60 WHERE `entry`=38257;
UPDATE `creature_template` SET `health_mod`=40 WHERE `entry`=38261;
UPDATE `creature_template` SET `health_mod`=40 WHERE `entry`=38262;
UPDATE `creature_template` SET `health_mod`=2750 WHERE `entry`=38265;
UPDATE `creature_template` SET `health_mod`=1000 WHERE `entry`=38266;
UPDATE `creature_template` SET `health_mod`=3300 WHERE `entry`=38267;
UPDATE `creature_template` SET `health_mod`=600 WHERE `entry`=38296;
UPDATE `creature_template` SET `health_mod`=2400 WHERE `entry`=38297;
UPDATE `creature_template` SET `health_mod`=36 WHERE `entry`=38320;
UPDATE `creature_template` SET `health_mod`=9 WHERE `entry`=38321;
UPDATE `creature_template` SET `health_mod`=36 WHERE `entry`=38322;
UPDATE `creature_template` SET `health_mod`=2600 WHERE `entry`=38390;
UPDATE `creature_template` SET `health_mod`=15 WHERE `entry`=38393;
UPDATE `creature_template` SET `health_mod`=15 WHERE `entry`=38394;
UPDATE `creature_template` SET `health_mod`=15 WHERE `entry`=38395;
UPDATE `creature_template` SET `health_mod`=15 WHERE `entry`=38396;
UPDATE `creature_template` SET `health_mod`=15 WHERE `entry`=38397;
UPDATE `creature_template` SET `health_mod`=15 WHERE `entry`=38398;
UPDATE `creature_template` SET `health_mod`=1620 WHERE `entry`=38399;
UPDATE `creature_template` SET `health_mod`=1620 WHERE `entry`=38400;
UPDATE `creature_template` SET `health_mod`=1620 WHERE `entry`=38401;
UPDATE `creature_template` SET `health_mod`=2250 WHERE `entry`=38402;
UPDATE `creature_template` SET `health_mod`=16 WHERE `entry`=38403;
UPDATE `creature_template` SET `health_mod`=16 WHERE `entry`=38404;
UPDATE `creature_template` SET `health_mod`=7 WHERE `entry`=38405;
UPDATE `creature_template` SET `health_mod`=16 WHERE `entry`=38406;
UPDATE `creature_template` SET `health_mod`=7 WHERE `entry`=38407;
UPDATE `creature_template` SET `health_mod`=16 WHERE `entry`=38408;
UPDATE `creature_template` SET `health_mod`=3000 WHERE `entry`=38431;
UPDATE `creature_template` SET `health_mod`=4261 WHERE `entry`=38434;
UPDATE `creature_template` SET `health_mod`=1355.3 WHERE `entry`=38435;
UPDATE `creature_template` SET `health_mod`=5113 WHERE `entry`=38436;
UPDATE `creature_template` SET `health_mod`=9 WHERE `entry`=38459;
UPDATE `creature_template` SET `health_mod`=9 WHERE `entry`=38460;
UPDATE `creature_template` SET `health_mod`=160 WHERE `entry`=38479;
UPDATE `creature_template` SET `health_mod`=120 WHERE `entry`=38480;
UPDATE `creature_template` SET `health_mod`=750 WHERE `entry`=38549;
UPDATE `creature_template` SET `health_mod`=3400 WHERE `entry`=38550;
UPDATE `creature_template` SET `health_mod`=882 WHERE `entry`=38582;
UPDATE `creature_template` SET `health_mod`=3150 WHERE `entry`=38583;
UPDATE `creature_template` SET `health_mod`=980 WHERE `entry`=38585;
UPDATE `creature_template` SET `health_mod`=3600 WHERE `entry`=38586;
UPDATE `creature_template` SET `health_mod`=6.75 WHERE `entry`=38596;
UPDATE `creature_template` SET `health_mod`=10.395 WHERE `entry`=38597;
UPDATE `creature_template` SET `health_mod`=9.45 WHERE `entry`=38598;
UPDATE `creature_template` SET `health_mod`=280 WHERE `entry`=38602;
UPDATE `creature_template` SET `health_mod`=280 WHERE `entry`=38604;
UPDATE `creature_template` SET `health_mod`=75 WHERE `entry`=38605;
UPDATE `creature_template` SET `health_mod`=14 WHERE `entry`=38625;
UPDATE `creature_template` SET `health_mod`=30 WHERE `entry`=38626;
UPDATE `creature_template` SET `health_mod`=15 WHERE `entry`=38628;
UPDATE `creature_template` SET `health_mod`=30 WHERE `entry`=38629;
UPDATE `creature_template` SET `health_mod`=15 WHERE `entry`=38630;
UPDATE `creature_template` SET `health_mod`=30 WHERE `entry`=38631;
UPDATE `creature_template` SET `health_mod`=14 WHERE `entry`=38632;
UPDATE `creature_template` SET `health_mod`=30 WHERE `entry`=38633;
UPDATE `creature_template` SET `health_mod`=15 WHERE `entry`=38634;
UPDATE `creature_template` SET `health_mod`=30 WHERE `entry`=38635;
UPDATE `creature_template` SET `health_mod`=350 WHERE `entry`=38637;
UPDATE `creature_template` SET `health_mod`=500 WHERE `entry`=38638;
UPDATE `creature_template` SET `health_mod`=350 WHERE `entry`=38639;
UPDATE `creature_template` SET `health_mod`=500 WHERE `entry`=38640;
UPDATE `creature_template` SET `health_mod`=11.2 WHERE `entry`=38675;
UPDATE `creature_template` SET `health_mod`=22.4 WHERE `entry`=38676;
UPDATE `creature_template` SET `health_mod`=21 WHERE `entry`=38677;
UPDATE `creature_template` SET `health_mod`=84 WHERE `entry`=38678;
UPDATE `creature_template` SET `health_mod`=11.2 WHERE `entry`=38679;
UPDATE `creature_template` SET `health_mod`=22.4 WHERE `entry`=38680;
UPDATE `creature_template` SET `health_mod`=4.9 WHERE `entry`=38681;
UPDATE `creature_template` SET `health_mod`=9.8 WHERE `entry`=38682;
UPDATE `creature_template` SET `health_mod`=28 WHERE `entry`=38683;
UPDATE `creature_template` SET `health_mod`=56 WHERE `entry`=38684;
UPDATE `creature_template` SET `health_mod`=11.2 WHERE `entry`=38685;
UPDATE `creature_template` SET `health_mod`=4.9 WHERE `entry`=38687;
UPDATE `creature_template` SET `health_mod`=9.8 WHERE `entry`=38688;
UPDATE `creature_template` SET `health_mod`=11.2 WHERE `entry`=38689;
UPDATE `creature_template` SET `health_mod`=22.4 WHERE `entry`=38690;
UPDATE `creature_template` SET `health_mod`=28 WHERE `entry`=38691;
UPDATE `creature_template` SET `health_mod`=56 WHERE `entry`=38692;
UPDATE `creature_template` SET `health_mod`=21 WHERE `entry`=38693;
UPDATE `creature_template` SET `health_mod`=84 WHERE `entry`=38694;
UPDATE `creature_template` SET `health_mod`=56.9021 WHERE `entry`=38699;
UPDATE `creature_template` SET `health_mod`=113.804 WHERE `entry`=38700;
UPDATE `creature_template` SET `health_mod`=56.9021 WHERE `entry`=38701;
UPDATE `creature_template` SET `health_mod`=113.804 WHERE `entry`=38702;
UPDATE `creature_template` SET `health_mod`=9 WHERE `entry`=38721;
UPDATE `creature_template` SET `health_mod`=25 WHERE `entry`=38722;
UPDATE `creature_template` SET `health_mod`=8 WHERE `entry`=38723;
UPDATE `creature_template` SET `health_mod`=27 WHERE `entry`=38724;
UPDATE `creature_template` SET `health_mod`=10 WHERE `entry`=38725;
UPDATE `creature_template` SET `health_mod`=3 WHERE `entry`=38726;
UPDATE `creature_template` SET `health_mod`=4 WHERE `entry`=38727;
UPDATE `creature_template` SET `health_mod`=24 WHERE `entry`=38733;
UPDATE `creature_template` SET `health_mod`=94 WHERE `entry`=38734;
UPDATE `creature_template` SET `health_mod`=30 WHERE `entry`=38735;
UPDATE `creature_template` SET `health_mod`=8 WHERE `entry`=38736;
UPDATE `creature_template` SET `health_mod`=12 WHERE `entry`=38737;
UPDATE `creature_template` SET `health_mod`=80 WHERE `entry`=38758;
UPDATE `creature_template` SET `health_mod`=350 WHERE `entry`=38759;
UPDATE `creature_template` SET `health_mod`=80 WHERE `entry`=38760;
UPDATE `creature_template` SET `health_mod`=350 WHERE `entry`=38761;
UPDATE `creature_template` SET `health_mod`=546.75 WHERE `entry`=38769;
UPDATE `creature_template` SET `health_mod`=2187 WHERE `entry`=38770;
UPDATE `creature_template` SET `health_mod`=546.75 WHERE `entry`=38771;
UPDATE `creature_template` SET `health_mod`=2187 WHERE `entry`=38772;
UPDATE `creature_template` SET `health_mod`=0.074179 WHERE `entry`=38775;
UPDATE `creature_template` SET `health_mod`=0.074179 WHERE `entry`=38776;
UPDATE `creature_template` SET `health_mod`=0.074179 WHERE `entry`=38777;
UPDATE `creature_template` SET `health_mod`=546.75 WHERE `entry`=38784;
UPDATE `creature_template` SET `health_mod`=2187 WHERE `entry`=38785;
UPDATE `creature_template` SET `health_mod`=35 WHERE `entry`=38786;
UPDATE `creature_template` SET `health_mod`=35 WHERE `entry`=38787;
UPDATE `creature_template` SET `health_mod`=75 WHERE `entry`=38788;
UPDATE `creature_template` SET `health_mod`=35 WHERE `entry`=38789;
UPDATE `creature_template` SET `health_mod`=35 WHERE `entry`=38790;
UPDATE `creature_template` SET `health_mod`=5 WHERE `entry`=38973;
UPDATE `creature_template` SET `health_mod`=9 WHERE `entry`=38974;
UPDATE `creature_template` SET `health_mod`=9 WHERE `entry`=38975;
UPDATE `creature_template` SET `health_mod`=14 WHERE `entry`=39000;
UPDATE `creature_template` SET `health_mod`=30 WHERE `entry`=39001;
UPDATE `creature_template` SET `health_mod`=55 WHERE `entry`=39120;
UPDATE `creature_template` SET `health_mod`=112.5 WHERE `entry`=39121;
UPDATE `creature_template` SET `health_mod`=237.5 WHERE `entry`=39122;
UPDATE `creature_template` SET `health_mod`=4375 WHERE `entry`=39166;
UPDATE `creature_template` SET `health_mod`=2112.5 WHERE `entry`=39167;
UPDATE `creature_template` SET `health_mod`=7397 WHERE `entry`=39168;
UPDATE `creature_template` SET `health_mod`=2000 WHERE `entry`=39232;
UPDATE `creature_template` SET `health_mod`=2000 WHERE `entry`=39233;
UPDATE `creature_template` SET `health_mod`=2000 WHERE `entry`=39234;
UPDATE `creature_template` SET `health_mod`=9.52381 WHERE `entry`=39284;
UPDATE `creature_template` SET `health_mod`=4.28571 WHERE `entry`=39285;
UPDATE `creature_template` SET `health_mod`=12.8571 WHERE `entry`=39286;
UPDATE `creature_template` SET `health_mod`=0.47619 WHERE `entry`=39287;
UPDATE `creature_template` SET `health_mod`=0.31746 WHERE `entry`=39288;
UPDATE `creature_template` SET `health_mod`=0.634921 WHERE `entry`=39289;
UPDATE `creature_template` SET `health_mod`=286.841 WHERE `entry`=39299;
UPDATE `creature_template` SET `health_mod`=215.131 WHERE `entry`=39300;
UPDATE `creature_template` SET `health_mod`=430.262 WHERE `entry`=39301;
UPDATE `creature_template` SET `health_mod`=190.477 WHERE `entry`=39302;
UPDATE `creature_template` SET `health_mod`=88 WHERE `entry`=39303;
UPDATE `creature_template` SET `health_mod`=297.6 WHERE `entry`=39304;
UPDATE `creature_template` SET `health_mod`=1.42857 WHERE `entry`=39305;
UPDATE `creature_template` SET `health_mod`=1.19048 WHERE `entry`=39306;
UPDATE `creature_template` SET `health_mod`=4.28571 WHERE `entry`=39307;
UPDATE `creature_template` SET `health_mod`=40 WHERE `entry`=39309;
UPDATE `creature_template` SET `health_mod`=30 WHERE `entry`=39310;
UPDATE `creature_template` SET `health_mod`=60 WHERE `entry`=39311;
UPDATE `creature_template` SET `health_mod`=2900 WHERE `entry`=39864;
UPDATE `creature_template` SET `health_mod`=1100 WHERE `entry`=39944;
UPDATE `creature_template` SET `health_mod`=4200 WHERE `entry`=39945;
UPDATE `creature_template` SET `health_mod`=2900 WHERE `entry`=40143;
UPDATE `creature_template` SET `health_mod`=1100 WHERE `entry`=40144;
UPDATE `creature_template` SET `health_mod`=4200 WHERE `entry`=40145;
UPDATE `creature_template` SET `health_mod`=1 WHERE `entry`=40470;
UPDATE `creature_template` SET `health_mod`=1 WHERE `entry`=40471;
UPDATE `creature_template` SET `health_mod`=1 WHERE `entry`=40472;
UPDATE `creature_template` SET `health_mod`=1 WHERE `entry`=43280;
UPDATE `creature_template` SET `health_mod`=1 WHERE `entry`=43281;
UPDATE `creature_template` SET `health_mod`=1 WHERE `entry`=43282;
UPDATE `creature_template` SET `health_mod`=312 WHERE `entry`=43324;
UPDATE `creature_template` SET `health_mod`=80 WHERE `entry`=43686;
UPDATE `creature_template` SET `health_mod`=73.2054 WHERE `entry`=43687;
UPDATE `creature_template` SET `health_mod`=55 WHERE `entry`=43688;
UPDATE `creature_template` SET `health_mod`=55 WHERE `entry`=43689;
UPDATE `creature_template` SET `health_mod`=1 WHERE `entry`=43691;
UPDATE `creature_template` SET `health_mod`=2 WHERE `entry`=43999;
UPDATE `creature_template` SET `health_mod`=302 WHERE `entry`=44600;
UPDATE `creature_template` SET `health_mod`=5 WHERE `entry`=44641;
UPDATE `creature_template` SET `health_mod`=50 WHERE `entry`=44645;
UPDATE `creature_template` SET `health_mod`=50 WHERE `entry`=44650;
UPDATE `creature_template` SET `health_mod`=50 WHERE `entry`=44652;
UPDATE `creature_template` SET `health_mod`=315 WHERE `entry`=44687;
UPDATE `creature_template` SET `health_mod`=50 WHERE `entry`=44797;
UPDATE `creature_template` SET `health_mod`=0.0712028 WHERE `entry`=45213;
UPDATE `creature_template` SET `health_mod`=15 WHERE `entry`=45261;
UPDATE `creature_template` SET `health_mod`=15 WHERE `entry`=45264;
UPDATE `creature_template` SET `health_mod`=20 WHERE `entry`=45265;
UPDATE `creature_template` SET `health_mod`=15 WHERE `entry`=45266;
UPDATE `creature_template` SET `health_mod`=6 WHERE `entry`=45267;
UPDATE `creature_template` SET `health_mod`=300 WHERE `entry`=45992;
UPDATE `creature_template` SET `health_mod`=300 WHERE `entry`=45993;
UPDATE `creature_template` SET `health_mod`=1080 WHERE `entry`=46209;
UPDATE `creature_template` SET `health_mod`=600 WHERE `entry`=46210;
UPDATE `creature_template` SET `health_mod`=2150 WHERE `entry`=46211;
UPDATE `creature_template` SET `health_mod`=144 WHERE `entry`=46212;
UPDATE `creature_template` SET `health_mod`=70 WHERE `entry`=46213;
UPDATE `creature_template` SET `health_mod`=200 WHERE `entry`=46214;
UPDATE `creature_template` SET `health_mod`=144 WHERE `entry`=46215;
UPDATE `creature_template` SET `health_mod`=70 WHERE `entry`=46216;
UPDATE `creature_template` SET `health_mod`=200 WHERE `entry`=46217;
UPDATE `creature_template` SET `health_mod`=144 WHERE `entry`=46218;
UPDATE `creature_template` SET `health_mod`=70 WHERE `entry`=46219;
UPDATE `creature_template` SET `health_mod`=200 WHERE `entry`=46220;
UPDATE `creature_template` SET `health_mod`=144 WHERE `entry`=46221;
UPDATE `creature_template` SET `health_mod`=70 WHERE `entry`=46222;
UPDATE `creature_template` SET `health_mod`=200 WHERE `entry`=46223;
UPDATE `creature_template` SET `health_mod`=18 WHERE `entry`=46224;
UPDATE `creature_template` SET `health_mod`=8.75 WHERE `entry`=46225;
UPDATE `creature_template` SET `health_mod`=28.125 WHERE `entry`=46226;
UPDATE `creature_template` SET `health_mod`=1050 WHERE `entry`=46900;
UPDATE `creature_template` SET `health_mod`=6 WHERE `entry`=46951;
UPDATE `creature_template` SET `health_mod`=4 WHERE `entry`=46952;
UPDATE `creature_template` SET `health_mod`=15 WHERE `entry`=47081;
UPDATE `creature_template` SET `health_mod`=15 WHERE `entry`=47086;
UPDATE `creature_template` SET `health_mod`=15 WHERE `entry`=47087;
UPDATE `creature_template` SET `health_mod`=15 WHERE `entry`=47150;
UPDATE `creature_template` SET `health_mod`=15 WHERE `entry`=47151;
UPDATE `creature_template` SET `health_mod`=10 WHERE `entry`=47152;
UPDATE `creature_template` SET `health_mod`=15 WHERE `entry`=47161;
UPDATE `creature_template` SET `health_mod`=1100 WHERE `entry`=47774;
UPDATE `creature_template` SET `health_mod`=422 WHERE `entry`=47775;
UPDATE `creature_template` SET `health_mod`=1476 WHERE `entry`=47776;
UPDATE `creature_template` SET `health_mod`=45 WHERE `entry`=48588;
UPDATE `creature_template` SET `health_mod`=45 WHERE `entry`=48589;
UPDATE `creature_template` SET `health_mod`=21 WHERE `entry`=48590;
UPDATE `creature_template` SET `health_mod`=45 WHERE `entry`=48592;
UPDATE `creature_template` SET `health_mod`=60 WHERE `entry`=48593;
UPDATE `creature_template` SET `health_mod`=924 WHERE `entry`=49047;
UPDATE `creature_template` SET `health_mod`=432 WHERE `entry`=49048;
UPDATE `creature_template` SET `health_mod`=1323 WHERE `entry`=49049;
UPDATE `creature_template` SET `health_mod`=10400 WHERE `entry`=49050;
UPDATE `creature_template` SET `health_mod`=432 WHERE `entry`=49051;
UPDATE `creature_template` SET `health_mod`=1323 WHERE `entry`=49052;
UPDATE `creature_template` SET `health_mod`=924 WHERE `entry`=49053;
UPDATE `creature_template` SET `health_mod`=432 WHERE `entry`=49054;
UPDATE `creature_template` SET `health_mod`=1323 WHERE `entry`=49055;
UPDATE `creature_template` SET `health_mod`=924 WHERE `entry`=49056;
UPDATE `creature_template` SET `health_mod`=432 WHERE `entry`=49057;
UPDATE `creature_template` SET `health_mod`=1323 WHERE `entry`=49058;
UPDATE `creature_template` SET `health_mod`=1130 WHERE `entry`=49583;
UPDATE `creature_template` SET `health_mod`=405 WHERE `entry`=49584;
UPDATE `creature_template` SET `health_mod`=1200 WHERE `entry`=49585;
UPDATE `creature_template` SET `health_mod`=170 WHERE `entry`=49606;
UPDATE `creature_template` SET `health_mod`=97.5 WHERE `entry`=49607;
UPDATE `creature_template` SET `health_mod`=286 WHERE `entry`=49608;
UPDATE `creature_template` SET `health_mod`=170 WHERE `entry`=49609;
UPDATE `creature_template` SET `health_mod`=97.5 WHERE `entry`=49610;
UPDATE `creature_template` SET `health_mod`=286 WHERE `entry`=49611;
UPDATE `creature_template` SET `health_mod`=255 WHERE `entry`=49612;
UPDATE `creature_template` SET `health_mod`=149.5 WHERE `entry`=49613;
UPDATE `creature_template` SET `health_mod`=442 WHERE `entry`=49614;
UPDATE `creature_template` SET `health_mod`=255 WHERE `entry`=49615;
UPDATE `creature_template` SET `health_mod`=149.5 WHERE `entry`=49616;
UPDATE `creature_template` SET `health_mod`=442 WHERE `entry`=49617;
UPDATE `creature_template` SET `health_mod`=1500 WHERE `entry`=49744;
UPDATE `creature_template` SET `health_mod`=70 WHERE `entry`=49813;
UPDATE `creature_template` SET `health_mod`=210 WHERE `entry`=49814;
UPDATE `creature_template` SET `health_mod`=25 WHERE `entry`=49817;
UPDATE `creature_template` SET `health_mod`=25 WHERE `entry`=49821;
UPDATE `creature_template` SET `health_mod`=25 WHERE `entry`=49825;
UPDATE `creature_template` SET `health_mod`=25 WHERE `entry`=49826;
UPDATE `creature_template` SET `health_mod`=80 WHERE `entry`=49827;
UPDATE `creature_template` SET `health_mod`=90 WHERE `entry`=49828;
UPDATE `creature_template` SET `health_mod`=80 WHERE `entry`=49829;
UPDATE `creature_template` SET `health_mod`=90 WHERE `entry`=49830;
UPDATE `creature_template` SET `health_mod`=912 WHERE `entry`=49897;
UPDATE `creature_template` SET `health_mod`=560 WHERE `entry`=49898;
UPDATE `creature_template` SET `health_mod`=1920 WHERE `entry`=49899;
UPDATE `creature_template` SET `health_mod`=912 WHERE `entry`=49903;
UPDATE `creature_template` SET `health_mod`=560 WHERE `entry`=49904;
UPDATE `creature_template` SET `health_mod`=1920 WHERE `entry`=49905;
UPDATE `creature_template` SET `health_mod`=1100 WHERE `entry`=49974;
UPDATE `creature_template` SET `health_mod`=403.2 WHERE `entry`=49980;
UPDATE `creature_template` SET `health_mod`=1411.2 WHERE `entry`=49986;
UPDATE `creature_template` SET `health_mod`=4 WHERE `entry`=50100;
UPDATE `creature_template` SET `health_mod`=170 WHERE `entry`=50103;
UPDATE `creature_template` SET `health_mod`=2.4 WHERE `entry`=50110;
UPDATE `creature_template` SET `health_mod`=80 WHERE `entry`=50113;
UPDATE `creature_template` SET `health_mod`=8 WHERE `entry`=50120;
UPDATE `creature_template` SET `health_mod`=272 WHERE `entry`=50123;
UPDATE `creature_template` SET `health_mod`=48 WHERE `entry`=50184;
UPDATE `creature_template` SET `health_mod`=25 WHERE `entry`=50185;
UPDATE `creature_template` SET `health_mod`=40 WHERE `entry`=50186;
UPDATE `creature_template` SET `health_mod`=45 WHERE `entry`=50287;
UPDATE `creature_template` SET `health_mod`=12 WHERE `entry`=50288;
UPDATE `creature_template` SET `health_mod`=18 WHERE `entry`=50289;
UPDATE `creature_template` SET `health_mod`=45 WHERE `entry`=50290;
UPDATE `creature_template` SET `health_mod`=45 WHERE `entry`=50292;
UPDATE `creature_template` SET `health_mod`=45 WHERE `entry`=50293;
UPDATE `creature_template` SET `health_mod`=45 WHERE `entry`=50294;
UPDATE `creature_template` SET `health_mod`=30 WHERE `entry`=50295;
UPDATE `creature_template` SET `health_mod`=45 WHERE `entry`=50296;
UPDATE `creature_template` SET `health_mod`=1072 WHERE `entry`=51101;
UPDATE `creature_template` SET `health_mod`=456.86 WHERE `entry`=51102;
UPDATE `creature_template` SET `health_mod`=1397.29 WHERE `entry`=51103;
UPDATE `creature_template` SET `health_mod`=1600 WHERE `entry`=51104;
UPDATE `creature_template` SET `health_mod`=598 WHERE `entry`=51105;
UPDATE `creature_template` SET `health_mod`=2088 WHERE `entry`=51106;
UPDATE `creature_template` SET `health_mod`=230 WHERE `entry`=51116;
UPDATE `creature_template` SET `health_mod`=115 WHERE `entry`=51117;
UPDATE `creature_template` SET `health_mod`=405 WHERE `entry`=51118;
UPDATE `creature_template` SET `health_mod`=465.701 WHERE `entry`=52559;
UPDATE `creature_template` SET `health_mod`=232.851 WHERE `entry`=52560;
UPDATE `creature_template` SET `health_mod`=698.552 WHERE `entry`=52561;
UPDATE `creature_template` SET `health_mod`=5 WHERE `entry`=53246;
UPDATE `creature_template` SET `health_mod`=61 WHERE `entry`=53247;
UPDATE `creature_template` SET `health_mod`=5 WHERE `entry`=53248;
UPDATE `creature_template` SET `health_mod`=232.851 WHERE `entry`=53358;
UPDATE `creature_template` SET `health_mod`=232.851 WHERE `entry`=53359;
UPDATE `creature_template` SET `health_mod`=619 WHERE `entry`=53576;
UPDATE `creature_template` SET `health_mod`=324 WHERE `entry`=53577;
UPDATE `creature_template` SET `health_mod`=974 WHERE `entry`=53578;
UPDATE `creature_template` SET `health_mod`=1.1 WHERE `entry`=53579;
UPDATE `creature_template` SET `health_mod`=1.15001 WHERE `entry`=53580;
UPDATE `creature_template` SET `health_mod`=1.53 WHERE `entry`=53581;
UPDATE `creature_template` SET `health_mod`=64.25 WHERE `entry`=53582;
UPDATE `creature_template` SET `health_mod`=29.83 WHERE `entry`=53583;
UPDATE `creature_template` SET `health_mod`=98.6 WHERE `entry`=53584;
UPDATE `creature_template` SET `health_mod`=1164 WHERE `entry`=53587;
UPDATE `creature_template` SET `health_mod`=691.9 WHERE `entry`=53588;
UPDATE `creature_template` SET `health_mod`=1935.45 WHERE `entry`=53589;
UPDATE `creature_template` SET `health_mod`=2.55 WHERE `entry`=53599;
UPDATE `creature_template` SET `health_mod`=3.4 WHERE `entry`=53600;
UPDATE `creature_template` SET `health_mod`=3.4 WHERE `entry`=53601;
UPDATE `creature_template` SET `health_mod`=28 WHERE `entry`=53650;
UPDATE `creature_template` SET `health_mod`=91 WHERE `entry`=53651;
UPDATE `creature_template` SET `health_mod`=2.55 WHERE `entry`=53653;
UPDATE `creature_template` SET `health_mod`=8.4 WHERE `entry`=53654;
UPDATE `creature_template` SET `health_mod`=116.425 WHERE `entry`=53719;
UPDATE `creature_template` SET `health_mod`=349.276 WHERE `entry`=53720;
UPDATE `creature_template` SET `health_mod`=116.425 WHERE `entry`=53721;
UPDATE `creature_template` SET `health_mod`=349.276 WHERE `entry`=53722;
UPDATE `creature_template` SET `health_mod`=3.25 WHERE `entry`=53725;
UPDATE `creature_template` SET `health_mod`=6 WHERE `entry`=53726;
UPDATE `creature_template` SET `health_mod`=8.15999 WHERE `entry`=53746;
UPDATE `creature_template` SET `health_mod`=2.72 WHERE `entry`=53747;
UPDATE `creature_template` SET `health_mod`=8.15999 WHERE `entry`=53748;
UPDATE `creature_template` SET `health_mod`=465 WHERE `entry`=53773;
UPDATE `creature_template` SET `health_mod`=232.003 WHERE `entry`=53774;
UPDATE `creature_template` SET `health_mod`=698.795 WHERE `entry`=53775;
UPDATE `creature_template` SET `health_mod`=1755 WHERE `entry`=53797;
UPDATE `creature_template` SET `health_mod`=863.94 WHERE `entry`=53798;
UPDATE `creature_template` SET `health_mod`=2874.66 WHERE `entry`=53799;
UPDATE `creature_template` SET `health_mod`=7.5 WHERE `entry`=53800;
UPDATE `creature_template` SET `health_mod`=2.55 WHERE `entry`=53801;
UPDATE `creature_template` SET `health_mod`=12.75 WHERE `entry`=53802;
UPDATE `creature_template` SET `health_mod`=2.25001 WHERE `entry`=53810;
UPDATE `creature_template` SET `health_mod`=2.8 WHERE `entry`=53811;
UPDATE `creature_template` SET `health_mod`=3.57 WHERE `entry`=53812;
UPDATE `creature_template` SET `health_mod`=1500 WHERE `entry`=53813;
UPDATE `creature_template` SET `health_mod`=8.5 WHERE `entry`=53814;
UPDATE `creature_template` SET `health_mod`=34 WHERE `entry`=53815;
UPDATE `creature_template` SET `health_mod`=56.25 WHERE `entry`=53816;
UPDATE `creature_template` SET `health_mod`=29.75 WHERE `entry`=53817;
UPDATE `creature_template` SET `health_mod`=89.25 WHERE `entry`=53818;
UPDATE `creature_template` SET `health_mod`=12 WHERE `entry`=53820;
UPDATE `creature_template` SET `health_mod`=5 WHERE `entry`=53821;
UPDATE `creature_template` SET `health_mod`=15 WHERE `entry`=53822;
UPDATE `creature_template` SET `health_mod`=1559 WHERE `entry`=53856;
UPDATE `creature_template` SET `health_mod`=1234 WHERE `entry`=53857;
UPDATE `creature_template` SET `health_mod`=4276 WHERE `entry`=53858;
UPDATE `creature_template` SET `health_mod`=11.25 WHERE `entry`=53859;
UPDATE `creature_template` SET `health_mod`=4.7 WHERE `entry`=53860;
UPDATE `creature_template` SET `health_mod`=15.3 WHERE `entry`=53861;
UPDATE `creature_template` SET `health_mod`=807.5 WHERE `entry`=53979;
UPDATE `creature_template` SET `health_mod`=333.2 WHERE `entry`=53980;
UPDATE `creature_template` SET `health_mod`=333.2 WHERE `entry`=53981;
UPDATE `creature_template` SET `health_mod`=1155 WHERE `entry`=54016;
UPDATE `creature_template` SET `health_mod`=660 WHERE `entry`=54017;
UPDATE `creature_template` SET `health_mod`=2310 WHERE `entry`=54018;
UPDATE `creature_template` SET `health_mod`=1350 WHERE `entry`=54044;
UPDATE `creature_template` SET `health_mod`=765 WHERE `entry`=54045;
UPDATE `creature_template` SET `health_mod`=2295 WHERE `entry`=54046;
UPDATE `creature_template` SET `health_mod`=12 WHERE `entry`=54047;
UPDATE `creature_template` SET `health_mod`=10 WHERE `entry`=54048;
UPDATE `creature_template` SET `health_mod`=30 WHERE `entry`=54049;
UPDATE `creature_template` SET `health_mod`=266 WHERE `entry`=54052;
UPDATE `creature_template` SET `health_mod`=76.5 WHERE `entry`=54053;
UPDATE `creature_template` SET `health_mod`=110.5 WHERE `entry`=54054;
UPDATE `creature_template` SET `health_mod`=266 WHERE `entry`=54060;
UPDATE `creature_template` SET `health_mod`=76.5 WHERE `entry`=54061;
UPDATE `creature_template` SET `health_mod`=110.5 WHERE `entry`=54062;
UPDATE `creature_template` SET `health_mod`=12 WHERE `entry`=54063;
UPDATE `creature_template` SET `health_mod`=10 WHERE `entry`=54064;
UPDATE `creature_template` SET `health_mod`=30 WHERE `entry`=54065;
UPDATE `creature_template` SET `health_mod`=425 WHERE `entry`=54075;
UPDATE `creature_template` SET `health_mod`=1487.5 WHERE `entry`=54076;
UPDATE `creature_template` SET `health_mod`=47.6 WHERE `entry`=54077;
UPDATE `creature_template` SET `health_mod`=166.6 WHERE `entry`=54078;
UPDATE `creature_template` SET `health_mod`=333.2 WHERE `entry`=54079;
UPDATE `creature_template` SET `health_mod`=1130.5 WHERE `entry`=54080;
UPDATE `creature_template` SET `health_mod`=2378 WHERE `entry`=55309;
UPDATE `creature_template` SET `health_mod`=1007 WHERE `entry`=55310;
UPDATE `creature_template` SET `health_mod`=3021 WHERE `entry`=55311;
UPDATE `creature_template` SET `health_mod`=1650 WHERE `entry`=55313;
UPDATE `creature_template` SET `health_mod`=1042 WHERE `entry`=55314;
UPDATE `creature_template` SET `health_mod`=3010 WHERE `entry`=55315;
UPDATE `creature_template` SET `health_mod`=3 WHERE `entry`=55751;
UPDATE `creature_template` SET `health_mod`=9.2 WHERE `entry`=55752;
UPDATE `creature_template` SET `health_mod`=13.8 WHERE `entry`=55753;
UPDATE `creature_template` SET `health_mod`=3 WHERE `entry`=55754;
UPDATE `creature_template` SET `health_mod`=4 WHERE `entry`=55755;
UPDATE `creature_template` SET `health_mod`=5 WHERE `entry`=55756;
UPDATE `creature_template` SET `health_mod`=3 WHERE `entry`=55757;
UPDATE `creature_template` SET `health_mod`=23 WHERE `entry`=55758;
UPDATE `creature_template` SET `health_mod`=29.6 WHERE `entry`=55759;
UPDATE `creature_template` SET `health_mod`=263.5 WHERE `entry`=56516;
UPDATE `creature_template` SET `health_mod`=114.75 WHERE `entry`=56517;
UPDATE `creature_template` SET `health_mod`=355.73 WHERE `entry`=56518;
UPDATE `creature_template` SET `health_mod`=2145 WHERE `entry`=56576;
UPDATE `creature_template` SET `health_mod`=990 WHERE `entry`=56577;
UPDATE `creature_template` SET `health_mod`=3217 WHERE `entry`=56578;
UPDATE `creature_template` SET `health_mod`=1 WHERE `entry`=57177;
UPDATE `creature_template` SET `health_mod`=66 WHERE `entry`=57359;
UPDATE `creature_template` SET `health_mod`=30 WHERE `entry`=57360;
UPDATE `creature_template` SET `health_mod`=99 WHERE `entry`=57361;
UPDATE `creature_template` SET `health_mod`=66 WHERE `entry`=57362;
UPDATE `creature_template` SET `health_mod`=30 WHERE `entry`=57363;
UPDATE `creature_template` SET `health_mod`=99 WHERE `entry`=57364;
UPDATE `creature_template` SET `health_mod`=66 WHERE `entry`=57365;
UPDATE `creature_template` SET `health_mod`=30 WHERE `entry`=57366;
UPDATE `creature_template` SET `health_mod`=99 WHERE `entry`=57367;
UPDATE `creature_template` SET `health_mod`=66 WHERE `entry`=57368;
UPDATE `creature_template` SET `health_mod`=30 WHERE `entry`=57369;
UPDATE `creature_template` SET `health_mod`=99 WHERE `entry`=57370;
UPDATE `creature_template` SET `health_mod`=66 WHERE `entry`=57371;
UPDATE `creature_template` SET `health_mod`=30 WHERE `entry`=57372;
UPDATE `creature_template` SET `health_mod`=99 WHERE `entry`=57373;
UPDATE `creature_template` SET `health_mod`=66 WHERE `entry`=57374;
UPDATE `creature_template` SET `health_mod`=30 WHERE `entry`=57375;
UPDATE `creature_template` SET `health_mod`=99 WHERE `entry`=57376;
UPDATE `creature_template` SET `health_mod`=1187.54 WHERE `entry`=57409;
UPDATE `creature_template` SET `health_mod`=17.9 WHERE `entry`=57434;
UPDATE `creature_template` SET `health_mod`=10 WHERE `entry`=57435;
UPDATE `creature_template` SET `health_mod`=30 WHERE `entry`=57436;
UPDATE `creature_template` SET `health_mod`=1200 WHERE `entry`=57462;
UPDATE `creature_template` SET `health_mod`=45 WHERE `entry`=57463;
UPDATE `creature_template` SET `health_mod`=605.51 WHERE `entry`=57698;
UPDATE `creature_template` SET `health_mod`=600 WHERE `entry`=57699;
UPDATE `creature_template` SET `health_mod`=41.25 WHERE `entry`=57700;
UPDATE `creature_template` SET `health_mod`=41.25 WHERE `entry`=57701;
UPDATE `creature_template` SET `health_mod`=126 WHERE `entry`=57702;
UPDATE `creature_template` SET `health_mod`=126 WHERE `entry`=57703;
UPDATE `creature_template` SET `health_mod`=250 WHERE `entry`=57771;
UPDATE `creature_template` SET `health_mod`=1050.18 WHERE `entry`=57772;
UPDATE `creature_template` SET `health_mod`=1187.54 WHERE `entry`=57774;
UPDATE `creature_template` SET `health_mod`=15 WHERE `entry`=57813;
UPDATE `creature_template` SET `health_mod`=30 WHERE `entry`=57832;
UPDATE `creature_template` SET `health_mod`=90 WHERE `entry`=57833;
UPDATE `creature_template` SET `health_mod`=20 WHERE `entry`=57837;
UPDATE `creature_template` SET `health_mod`=60 WHERE `entry`=57838;
UPDATE `creature_template` SET `health_mod`=20 WHERE `entry`=57839;
UPDATE `creature_template` SET `health_mod`=60 WHERE `entry`=57840;
UPDATE `creature_template` SET `health_mod`=54 WHERE `entry`=57841;
UPDATE `creature_template` SET `health_mod`=170.1 WHERE `entry`=57842;
UPDATE `creature_template` SET `health_mod`=54 WHERE `entry`=57843;
UPDATE `creature_template` SET `health_mod`=170.1 WHERE `entry`=57844;
UPDATE `creature_template` SET `health_mod`=363.306 WHERE `entry`=57845;
UPDATE `creature_template` SET `health_mod`=908.265 WHERE `entry`=57846;
UPDATE `creature_template` SET `health_mod`=435 WHERE `entry`=57847;
UPDATE `creature_template` SET `health_mod`=1044 WHERE `entry`=57848;
UPDATE `creature_template` SET `health_mod`=16.52 WHERE `entry`=57879;
UPDATE `creature_template` SET `health_mod`=9.33 WHERE `entry`=57880;
UPDATE `creature_template` SET `health_mod`=28.92 WHERE `entry`=57881;
UPDATE `creature_template` SET `health_mod`=108.5 WHERE `entry`=57884;
UPDATE `creature_template` SET `health_mod`=125.46 WHERE `entry`=57885;
UPDATE `creature_template` SET `health_mod`=388.875 WHERE `entry`=57886;
UPDATE `creature_template` SET `health_mod`=108.5 WHERE `entry`=57887;
UPDATE `creature_template` SET `health_mod`=125.46 WHERE `entry`=57888;
UPDATE `creature_template` SET `health_mod`=388.875 WHERE `entry`=57889;
UPDATE `creature_template` SET `health_mod`=6.2 WHERE `entry`=57895;
UPDATE `creature_template` SET `health_mod`=3.5 WHERE `entry`=57896;
UPDATE `creature_template` SET `health_mod`=10.85 WHERE `entry`=57897;
UPDATE `creature_template` SET `health_mod`=16.52 WHERE `entry`=57901;
UPDATE `creature_template` SET `health_mod`=9.33 WHERE `entry`=57902;
UPDATE `creature_template` SET `health_mod`=28.92 WHERE `entry`=57903;
UPDATE `creature_template` SET `health_mod`=16.52 WHERE `entry`=57904;
UPDATE `creature_template` SET `health_mod`=9.33 WHERE `entry`=57905;
UPDATE `creature_template` SET `health_mod`=28.92 WHERE `entry`=57906;
UPDATE `creature_template` SET `health_mod`=542.5 WHERE `entry`=57937;
UPDATE `creature_template` SET `health_mod`=290 WHERE `entry`=57938;
UPDATE `creature_template` SET `health_mod`=940.25 WHERE `entry`=57939;
UPDATE `creature_template` SET `health_mod`=600 WHERE `entry`=57955;
UPDATE `creature_template` SET `health_mod`=1800 WHERE `entry`=57956;
UPDATE `creature_template` SET `health_mod`=4440 WHERE `entry`=57969;
UPDATE `creature_template` SET `health_mod`=4440 WHERE `entry`=57970;
UPDATE `creature_template` SET `health_mod`=975 WHERE `entry`=57972;
UPDATE `creature_template` SET `health_mod`=975 WHERE `entry`=57973;
UPDATE `creature_template` SET `health_mod`=975 WHERE `entry`=57974;
UPDATE `creature_template` SET `health_mod`=390 WHERE `entry`=57976;
UPDATE `creature_template` SET `health_mod`=6 WHERE `entry`=57978;
UPDATE `creature_template` SET `health_mod`=30 WHERE `entry`=57979;
UPDATE `creature_template` SET `health_mod`=250 WHERE `entry`=57995;
UPDATE `creature_template` SET `health_mod`=1050.18 WHERE `entry`=57996;
UPDATE `creature_template` SET `health_mod`=1778 WHERE `entry`=58000;
UPDATE `creature_template` SET `health_mod`=5335 WHERE `entry`=58001;
UPDATE `creature_template` SET `health_mod`=1778 WHERE `entry`=58125;
UPDATE `creature_template` SET `health_mod`=5335 WHERE `entry`=58126;
UPDATE `creature_template` SET `health_mod`=468 WHERE `entry`=58129;
UPDATE `creature_template` SET `health_mod`=1404 WHERE `entry`=58130;
UPDATE `creature_template` SET `health_mod`=468 WHERE `entry`=58131;
UPDATE `creature_template` SET `health_mod`=1404 WHERE `entry`=58132;
UPDATE `creature_template` SET `health_mod`=468 WHERE `entry`=58133;
UPDATE `creature_template` SET `health_mod`=1404 WHERE `entry`=58134;
UPDATE `creature_template` SET `health_mod`=210 WHERE `entry`=58137;
UPDATE `creature_template` SET `health_mod`=600 WHERE `entry`=58138;
UPDATE `creature_template` SET `health_mod`=3 WHERE `entry`=58142;
UPDATE `creature_template` SET `health_mod`=9 WHERE `entry`=58143;
UPDATE `creature_template` SET `health_mod`=12 WHERE `entry`=58144;
UPDATE `creature_template` SET `health_mod`=36 WHERE `entry`=58145;
UPDATE `creature_template` SET `health_mod`=20 WHERE `entry`=58250;
UPDATE `creature_template` SET `health_mod`=50 WHERE `entry`=58251;
UPDATE `creature_template` SET `health_mod`=349 WHERE `entry`=58862;
UPDATE `creature_template` SET `health_mod`=349 WHERE `entry`=58863;
UPDATE `creature_template` SET `health_mod`=349 WHERE `entry`=58864;
UPDATE `creature_template` SET `health_mod`=1 WHERE `entry`=60001;
UPDATE `creature_template` SET `health_mod`=15 WHERE `entry`=60002;
UPDATE `creature_template` SET `health_mod`=1 WHERE `entry`=60003;

-- Полководец Зон'озз
-- http://ru.wowhead.com/npc=55308
UPDATE `smart_scripts` SET `link`=29 WHERE `entryorguid`=55308 AND `source_type`=0 AND `id`=9 AND `link`=0;
REPLACE INTO `smart_scripts` VALUES 
(55308, 0, 29, 0, 61, 0, 100, 0, 0, 0, 0, 0, 28, 104543, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Zon'ozz - Focused Anger (done in combat)"),
(55308, 0, 30, 0, 7, 0, 100, 0, 0, 0, 0, 0, 28, 104543, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Zon'ozz - Focused Anger (done out combat)"),
(55308, 0, 31, 0, 7, 0, 100, 0, 0, 0, 0, 0, 28, 26662, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Zon'ozz - Berserk (done out combat)");

-- Ульдаман
DELETE FROM `creature` WHERE `id`=2748;
DELETE FROM `gameobject` WHERE `id`=133234;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (2748, 70, 1, 1, 0, 0, 104.712, 273.097, -51.7792, 3.58141, 43200, 0, 0, 45720, 0, 0, 0, 0, 0);

-- КД ИНСТОВ
UPDATE `creature` SET `spawntimesecs`=10800 WHERE `map`=671; /* СБ */
UPDATE `creature` SET `spawntimesecs`=604800 WHERE `id` in (44600, 45993, 45992, 43687, 43686, 43689, 43735, 43324, 45213);
UPDATE `creature` SET `spawntimesecs`=604800 WHERE `map`=669; /* ТКТ */

-- Берег Древних
REPLACE INTO `battleground_template` (`id`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `AllianceStartO`, `HordeStartLoc`, `HordeStartO`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (9, 7, 15, 65, 90, 1367, 0, 1368, 0, 0, 6, '', 'Strand of the Ancients');

-- Офицер Арейн 
-- http://ru.wowhead.com/npc=12805
DELETE FROM `npc_vendor` WHERE `entry`=12805 and `item` in (52722, 52721, 53010, 52719, 52185, 52976, 52555);

-- Повелитель времени Дежа
-- http://ru.wowhead.com/npc=17879
DELETE FROM `creature_loot_template` WHERE `entry`=17879;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(17879, 27987, 0, 1, 1, 1, 1),
(17879, 27988, 0, 1, 1, 1, 1),
(17879, 27993, 0, 1, 1, 1, 1),
(17879, 27994, 0, 1, 1, 1, 1),
(17879, 27995, 0, 1, 1, 1, 1),
(17879, 27996, 0, 1, 1, 1, 1),
(17879, 29675, 1, 1, 0, 1, 1);

-- Странный оруженосец
-- http://ru.wowhead.com/quest=13654
DELETE FROM `conditions` WHERE `SourceEntry`=63126;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 63126, 0, 0, 9, 1, 13654, 0, 0, 0, 0, 0, '', 'Needs taken Quest 13654 to perform Spell: Search Maloric'),
(18, 33498, 63126, 0, 0, 8, 0, 13654, 0, 0, 1, 0, 0, '', 'Forbidden rewarded quest for spellclick'),
(18, 33498, 63126, 0, 0, 9, 0, 13654, 0, 0, 0, 0, 0, '', 'Required quest active for spellclick');
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (33498, 63126, 3, 0);
UPDATE `creature_template` SET `npcflag`=16777216 WHERE `entry`=33498;

-- Союзник Крыльев Пустоты
-- http://ru.wowhead.com/quest=10870
UPDATE `quest_template` SET `RewardChoiceItemId1`=31492, `RewardChoiceItemId2`=31490, `RewardChoiceItemId3`=31493, `RewardChoiceItemId4`=31491, `RewardChoiceItemId5`=31494, `RewardChoiceItemCount1`=1, `RewardChoiceItemCount2`=1, `RewardChoiceItemCount3`=1, `RewardChoiceItemCount4`=1, `RewardChoiceItemCount5`=1 WHERE `id`=10870;

-- Древние с нами
-- http://ru.wowhead.com/quest=25653
UPDATE `quest_template` SET `RequiredNpcOrGo1`=0, `RequiredNpcOrGoCount1`=0 WHERE `id`=25653;

-- Тельдрассил: отрицание Аспектов
-- http://ru.wowhead.com/quest=929
DELETE FROM `gameobject` WHERE `id`=19550;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (19550, 1, 1, 1, 9859.68, 587.283, 1299.92, 3.14159, 0, 0, 0, 1, 120, 255, 1);
SET NAMES utf8;

-- --------------------------
-- Исправления по саду чудес
-- --------------------------

-- Торговцы сада чудес (товары)
-- http://ru.wowhead.com/npc=32837 / http://ru.wowhead.com/npc=32836
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `type`) VALUES
(32837, 0, 72145, 0, 0, 3689, 1), 
(32837, 0, 74282, 0, 0, 2573, 1),
(32837, 0, 74283, 0, 0, 2573, 1),
(32836, 0, 72145, 0, 0, 3689, 1),
(32836, 0, 74282, 0, 0, 2573, 1),
(32836, 0, 74283, 0, 0, 2573, 1);

-- Торговец сада чудес (заселение)
DELETE FROM `creature` WHERE `id`=32837 and `map`=0;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (32837, 0, 1, 1, 0, 0, 2241.44, 260.866, 33.6569, 2.37365, 600, 0, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM `game_event_creature` WHERE `guid`=(select `guid` from `creature` where `id`=32837 and `map`=0);
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES (9, (select `guid` from `creature` where `id`=32837 and `map`=0));

-- Весенние сборщики (фракция)
-- http://ru.wowhead.com/npc=32798 / http://ru.wowhead.com/npc=32837
UPDATE `creature_template` SET `faction_A`=1735, `faction_H`=1735 WHERE `entry` in (32837, 32798);

REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (113772, 45072, 100, 1, 0, 1, 1);

-- Раскрашенное яйцо (лут)
-- http://ru.wowhead.com/item=45072
DELETE FROM `item_loot_template` WHERE `entry`=45072;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(45072, 6833, 1, 1, 0, 1, 1),
(45072, 6835, 1, 1, 0, 1, 1),
(45072, 19028, 1, 1, 0, 1, 1),
(45072, 44791, 95, 1, 0, 1, 1),
(45072, 44792, 1, 1, 0, 1, 1),
(45072, 44794, 1, 1, 0, 1, 1),
(45072, 44800, 1, 1, 0, 1, 1),
(45072, 44803, 1, 1, 0, 1, 1),
(45072, 44806, -100, 1, 0, 1, 1),
(45072, 45073, 1, 1, 0, 1, 1);


-- Пусть тебе улыбнется удача – в другой раз!
DELETE FROM `creature_questrelation` WHERE `quest`=24806;
DELETE FROM `creature_involvedrelation` WHERE `quest`=24806;

UPDATE `creature_template` SET `scale`=2 WHERE `entry`=573280;
DELETE FROM `creature` WHERE `map`=967;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(57238, 967, 15, 1, 11686, 0, 13442.4, -12141.9, 150.84, 0, 10800, 0, 0, 61902, 0, 0, 0, 0, 0),
(56855, 967, 15, 1, 40158, 0, 13605, -12167.7, 158.702, 1.95049, 10800, 0, 0, 1102681, 0, 0, 0, 0, 0),
(57238, 967, 15, 1, 11686, 0, 13437.4, -12121.9, 150.773, 0, 10800, 0, 0, 61902, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -1831.81, -2792.13, 59.799, 6.06897, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -1800.15, -2547.56, 50.973, 5.42106, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -1743.29, -2771.02, 59.799, 0.371328, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -1821.62, -2794.81, 59.7587, 0, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -1831.04, -2796.31, 59.799, 0.579581, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -1780.2, -2736.6, 59.8225, 0.499708, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(56332, 967, 15, 1, 27823, 0, -12106.2, 12164.1, -2.66644, 0, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56359, 967, 15, 1, 27823, 0, -12148.6, 12075.3, 2.35931, 2.16421, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56519, 967, 15, 1, 27823, 0, -12139.7, 12166, -6.67281, 6.0912, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -1746.85, -2572.69, 49.0746, 4.37668, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57238, 967, 15, 1, 11686, 0, 13432.4, -12136.9, 150.917, 0, 10800, 0, 0, 61902, 0, 0, 0, 0, 0),
(57238, 967, 15, 1, 11686, 0, 13452.4, -12131.9, 150.842, 0, 10800, 0, 0, 61902, 0, 0, 0, 0, 0),
(56587, 967, 15, 1, 40158, 0, 13622.9, -12068.9, 158.501, 4.60561, 10800, 0, 0, 1102681, 0, 0, 0, 0, 0),
(51335, 967, 15, 1, 11686, 0, 13455.5, -12132.2, 151.105, 3.45321, 10800, 0, 0, 42, 0, 0, 0, 0, 0),
(57264, 967, 15, 1, 27332, 57264, 13496.7, -12125.2, 170.697, 1.99396, 10800, 0, 0, 154980, 0, 0, 0, 0, 0),
(57264, 967, 15, 1, 27332, 57264, 13493.9, -12147.2, 170.814, 4.94408, 10800, 0, 0, 154980, 0, 0, 0, 0, 0),
(57238, 967, 15, 1, 11686, 0, 13437.4, -12126.9, 150.786, 0, 10800, 0, 0, 61902, 0, 0, 0, 0, 0),
(57238, 967, 15, 1, 11686, 0, 13422.4, -12136.9, 150.918, 0, 10800, 0, 0, 61902, 0, 0, 0, 0, 0),
(56587, 967, 15, 1, 40158, 0, 13625.4, -12104.9, 168.134, 3.41278, 10800, 0, 0, 1102681, 0, 0, 0, 0, 0),
(57238, 967, 15, 1, 11686, 0, 13422.4, -12126.9, 150.883, 0, 10800, 0, 0, 61902, 0, 0, 0, 0, 0),
(57238, 967, 15, 1, 11686, 0, 13447.4, -12141.9, 150.855, 0, 10800, 0, 0, 61902, 0, 0, 0, 0, 0),
(56587, 967, 15, 1, 40158, 0, 13615, -12101.1, 162.314, 5.47795, 10800, 0, 0, 1102681, 0, 0, 0, 0, 0),
(56855, 967, 15, 1, 40158, 0, 13604.7, -12161.6, 164.575, 3.01507, 10800, 0, 0, 1102681, 0, 0, 0, 0, 0),
(57238, 967, 15, 1, 11686, 0, 13427.4, -12141.9, 150.87, 0, 10800, 0, 0, 61902, 0, 0, 0, 0, 0),
(56855, 967, 15, 1, 40158, 0, 13604.6, -12166.8, 159.603, 2.01101, 10800, 0, 0, 1102681, 0, 0, 0, 0, 0),
(56781, 967, 15, 1, 39691, 0, 13621.4, -12100.6, 170.541, 3.44251, 10800, 0, 0, 13313260, 0, 0, 0, 0, 0),
(55870, 967, 15, 65535, 0, 0, -1695.6, -2353.72, 339.814, 4.69494, 10800, 0, 0, 176043, 0, 0, 0, 0, 0),
(55891, 967, 15, 65535, 0, 0, -1692.08, -2353.51, 339.81, 4.66003, 10800, 0, 0, 146703, 0, 0, 0, 0, 0),
(22517, 967, 15, 1, 16925, 0, -1699.47, -2388.03, 340.193, 4.66003, 10800, 0, 0, 4120, 0, 0, 0, 0, 0),
(56259, 967, 15, 1, 11686, 0, -1564.36, -2399.72, 300.17, 3.28122, 10800, 0, 0, 56688720, 0, 0, 0, 0, 0),
(56259, 967, 15, 1, 11686, 0, -1572.82, -2339.57, 300.17, 3.28122, 10800, 0, 0, 56688720, 0, 0, 0, 0, 0),
(56259, 967, 15, 1, 11686, 0, -1578.47, -2365.38, 269.489, 3.28122, 10800, 0, 0, 56688720, 0, 0, 0, 0, 0),
(56259, 967, 15, 1, 11686, 0, -1576.8, -2377.26, 266.689, 3.28122, 10800, 0, 0, 56688720, 0, 0, 0, 0, 0),
(56259, 967, 15, 1, 11686, 0, -1496.96, -2417.71, 325.539, 3.28122, 10800, 0, 0, 56688720, 0, 0, 0, 0, 0),
(56259, 967, 15, 1, 11686, 0, -1512.98, -2303.7, 325.539, 3.28122, 10800, 0, 0, 56688720, 0, 0, 0, 0, 0),
(56259, 967, 15, 1, 11686, 0, -1576, -2370.69, 289.939, 3.28122, 10800, 0, 0, 56688720, 0, 0, 0, 0, 0),
(58115, 967, 15, 1, 38497, 0, -1882.42, -2411.64, 358.035, 4.10488, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(58115, 967, 15, 1, 38497, 0, -1817.32, -2468.95, 341.521, 2.80707, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(58115, 967, 15, 1, 38497, 0, -1858.14, -2360.58, 358.773, 3.97621, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(58115, 967, 15, 1, 38497, 0, -1725.18, -2280.52, 369.519, 5.95775, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(58115, 967, 15, 1, 38497, 0, -1708.74, -2495.88, 370.74, 0.274681, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(58115, 967, 15, 1, 38497, 0, -1743.48, -2311.5, 359.535, 6.11843, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(58115, 967, 15, 1, 38497, 0, -1867.02, -2454.3, 341.521, 5.28596, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(58115, 967, 15, 1, 38497, 0, -1822.53, -2518.5, 371.748, 4.41568, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(58115, 967, 15, 1, 38497, 0, -1613.68, -2375.71, 356.824, 0.104708, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(58115, 967, 15, 1, 38497, 0, -1698.81, -2353.31, 360.505, 2.16605, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(58115, 967, 15, 1, 38497, 0, -1846.62, -2437.34, 372.722, 5.14625, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(58115, 967, 15, 1, 38497, 0, -1701.94, -2448.34, 341.521, 5.76716, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(58115, 967, 15, 1, 38497, 0, -1652.35, -2392.17, 353.152, 6.23725, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(58115, 967, 15, 1, 38497, 0, -1795.43, -2502.13, 341.541, 5.70053, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(58115, 967, 15, 1, 38497, 0, -1896.82, -2423.57, 371.317, 4.84539, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(58115, 967, 15, 1, 38497, 0, -1632.31, -2379.2, 349.221, 0.087269, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(58115, 967, 15, 1, 38497, 0, -1867.77, -2391.05, 341.521, 4.55514, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(58115, 967, 15, 1, 38497, 0, -1761.36, -2249.34, 361.449, 1.41372, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(58115, 967, 15, 1, 38497, 0, -1940.63, -2362.04, 360.28, 2.93215, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(58115, 967, 15, 1, 38497, 0, -1926.13, -2377.05, 384.198, 3.03688, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(58115, 967, 15, 1, 38497, 0, -1780.27, -2252.41, 353.285, 1.51844, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(58115, 967, 15, 1, 38497, 0, -1773, -2241.2, 348.326, 1.48353, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(58115, 967, 15, 1, 38497, 0, -1939.96, -2370.21, 343.565, 3.00196, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(58115, 967, 15, 1, 38497, 0, -1757.37, -2544.61, 363.678, 4.64258, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(58115, 967, 15, 1, 38497, 0, -1764.78, -2533.47, 352.917, 4.85202, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(58115, 967, 15, 1, 38497, 0, -1945.8, -2389.59, 348.927, 3.1067, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(58115, 967, 15, 1, 38497, 0, -1861.11, -2264.98, 358.843, 2.0944, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(58115, 967, 15, 1, 38497, 0, -1802.6, -2247.97, 365.274, 1.67552, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(58115, 967, 15, 1, 38497, 0, -1815.66, -2524.04, 345.37, 4.4855, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(58115, 967, 15, 1, 38497, 0, -1623.23, -2396.22, 353.285, 6.26573, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(58115, 967, 15, 1, 38497, 0, -1709.52, -2259.04, 358.603, 1.04719, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(58115, 967, 15, 1, 38497, 0, -1918.86, -2397.97, 377.436, 3.19396, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1762.69, -2413.88, 344.405, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1784.5, -2424.24, 349.936, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1807.32, -2416.83, 363.98, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1817.1, -2396.59, 357.997, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1809.84, -2371.8, 366.784, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1788.69, -2362.12, 349.42, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1767.72, -2369.39, 341.869, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1747.28, -2388.86, 341.438, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1747.28, -2375.11, 341.438, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1767.11, -2409.96, 341.438, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1767.11, -2389.86, 341.438, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1767.11, -2375.07, 341.438, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1786.7, -2411.96, 341.438, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1787.88, -2392.27, 341.438, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1787.88, -2376.52, 341.438, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1804.27, -2411.72, 341.678, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1807.49, -2394.52, 341.678, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1807.49, -2379.32, 341.678, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1747.28, -2409.52, 341.438, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1775.94, -2428.87, 340.334, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1795.57, -2426.4, 340.888, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1822.36, -2407.62, 339.893, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1824.9, -2383.48, 339.58, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1802.8, -2363.22, 340.879, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1775.01, -2357.89, 340.105, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1748.88, -2369.96, 340.939, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1739.19, -2382.61, 340.931, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1732.83, -2395.22, 340.939, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1744.97, -2409.04, 340.932, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1756.33, -2421.83, 339.562, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1800.7, -2363.12, 340.879, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1797.64, -2423.17, 340.879, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1797.81, -2414.4, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1798.24, -2393.94, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1799.44, -2383.43, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1800.18, -2372.07, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1798.24, -2404.62, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1757.94, -2410.96, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1759.52, -2392.52, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1760.72, -2382.01, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1761.46, -2370.65, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1758.65, -2402.47, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1747.4, -2410.06, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1748.26, -2391.02, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1749.47, -2380.96, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1750.21, -2371.22, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1748.06, -2400.64, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1771.42, -2422.08, 340.879, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1774.96, -2361.82, 340.882, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1771.8, -2412.98, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1772.23, -2392.52, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1773.43, -2382.01, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1774.17, -2370.65, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1772.23, -2403.2, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1751.39, -2360.23, 353.023, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1746.96, -2418.28, 353.023, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1762.08, -2360.7, 353.023, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1757.66, -2421.13, 353.023, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1774.8, -2355.67, 353.023, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1771.6, -2429.94, 353.023, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1788.14, -2362.68, 359.046, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1783.72, -2423.1, 359.046, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1800.06, -2356.83, 353.023, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1796.86, -2431.1, 353.023, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1811.2, -2367.06, 353.023, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1728.07, -2379.36, 353.023, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1822.47, -2383.03, 352.051, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1819.61, -2412.21, 353.023, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1729.09, -2405.54, 353.023, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1823.35, -2404.67, 353.023, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1729.09, -2398, 353.023, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1822.29, -2391, 353.023, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1729.1, -2388.64, 353.023, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1732.77, -2368.68, 353.023, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1810.72, -2384.14, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1809.51, -2394.65, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1809.08, -2415.11, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1808.91, -2423.88, 340.879, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1811.98, -2363.83, 340.879, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1811.46, -2372.78, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1809.51, -2405.33, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1737.47, -2408.9, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1739.55, -2379.79, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1738.34, -2389.86, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1740.29, -2370.06, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1738.13, -2399.48, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1741.1, -2359.93, 353.023, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1736.68, -2417.98, 353.023, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1811.76, -2356.83, 353.023, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1808.57, -2431.1, 353.023, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1819, -2384.75, 341.681, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1737.07, -2379.64, 340.936, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1745.07, -2379.87, 340.927, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1753.62, -2380.49, 340.91, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1784.88, -2382.91, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1795.3, -2383.7, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1773.05, -2381.77, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1762.68, -2381.15, 341.278, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1807.28, -2384.75, 341.681, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1819.22, -2373.78, 340.879, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1739.68, -2369.71, 340.944, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1747.98, -2369.89, 340.939, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1756.25, -2370.32, 340.918, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1785.66, -2372.75, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1796.56, -2373.53, 341.682, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1774.3, -2371.61, 341.476, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1764.02, -2371.12, 340.89, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1808.08, -2373.78, 340.879, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1817.48, -2404.24, 340.879, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1743.06, -2406.85, 340.934, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1735.84, -2405.97, 340.943, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1817.26, -2411.72, 340.879, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1806.21, -2403.29, 341.682, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1761.16, -2399.69, 341.278, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1771.52, -2400.32, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1793.78, -2402.24, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1783.35, -2401.45, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1752.09, -2399.03, 340.908, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1743.54, -2398.42, 340.927, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1735.55, -2398.18, 340.937, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1751.62, -2407.47, 340.918, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1782.88, -2409.89, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1793.3, -2410.67, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1771.05, -2408.75, 341.684, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1760.15, -2408.07, 340.884, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1805.29, -2411.62, 340.879, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1817.68, -2394.72, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1736.07, -2388.59, 340.931, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -2307.91, -2425.89, 83.6225, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(56519, 967, 15, 1, 27823, 0, -11929.2, 12297.8, -2.25274, 4.38078, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1744.06, -2388.82, 340.92, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1752.62, -2389.44, 340.9, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1783.88, -2391.86, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1794.3, -2392.65, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1772.04, -2390.72, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1761.68, -2390.1, 341.679, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1806.73, -2393.7, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1783.93, -2422.5, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1787.67, -2362.23, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1784.85, -2414.25, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1785.61, -2392.72, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1786.49, -2381.89, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1787.23, -2370.53, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57281, 967, 15, 1, 38497, 0, -1785.23, -2403.75, 341.438, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(56251, 967, 15, 1, 39566, 0, -1868.93, -2395.35, 377.352, 0.0523599, 10800, 0, 0, 663952, 0, 0, 0, 0, 0),
(56305, 967, 15, 1, 38497, 0, -1786.91, -2393.55, 380.35, 0, 10800, 0, 0, 62246, 0, 0, 0, 0, 0),
(57265, 967, 15, 1, 26989, 57265, 13414.2, -12128.4, 150.906, 2.3911, 10800, 0, 0, 77490, 0, 0, 0, 0, 0),
(57852, 967, 15, 1, 11686, 0, 13471.4, -12136.9, 163.368, 0, 10800, 0, 0, 61902, 0, 0, 0, 0, 0),
(57190, 967, 15, 1, 11686, 0, 13397.6, -12162.7, 142.621, 0, 10800, 0, 0, 61902, 0, 0, 0, 0, 0),
(56630, 967, 15, 1, 28227, 0, 13397.5, -12136.5, 153.862, 2.21657, 10800, 0, 0, 7749000, 890800, 0, 0, 0, 0),
(57788, 967, 15, 1, 27823, 0, -12128.5, 12171.4, -2.65091, 0, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57788, 967, 15, 1, 27823, 0, -12117.8, 12155.3, -2.65092, 0, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57265, 967, 15, 1, 26991, 57265, 13415.5, -12135.2, 150.912, 4.53786, 10800, 0, 0, 77490, 0, 0, 0, 0, 0),
(57260, 967, 15, 1, 39692, 0, 13441.6, -12155.3, 152.098, 4.62512, 10800, 0, 0, 77490, 17816, 0, 0, 0, 0),
(57852, 967, 15, 1, 11686, 0, 13366.9, -12129.9, 163.162, 0, 10800, 0, 0, 61902, 0, 0, 0, 0, 0),
(56681, 967, 15, 1, 26757, 0, 13432.3, -12110.6, 152.081, 1.5708, 10800, 0, 0, 77490, 200, 0, 0, 0, 0),
(56665, 967, 15, 1, 39447, 0, 13387.7, -12134.8, 153.894, 0.628318, 10800, 0, 0, 7749000, 890800, 0, 0, 0, 0),
(57190, 967, 15, 1, 11686, 0, 13475.1, -12093.9, 139.878, 0, 10800, 0, 0, 61902, 0, 0, 0, 0, 0),
(56664, 967, 15, 1, 40049, 0, 13397.5, -12125.7, 153.862, 3.82227, 10800, 0, 0, 7749000, 890800, 0, 0, 0, 0),
(57264, 967, 15, 1, 27331, 57264, 13496.6, -12113.9, 164.936, 1.55799, 10800, 0, 0, 154980, 0, 0, 0, 0, 0),
(57264, 967, 15, 1, 26998, 57264, 13486.6, -12181.1, 155.498, 4.59022, 10800, 0, 0, 154980, 0, 0, 0, 0, 0),
(57265, 967, 15, 1, 26989, 57265, 13441.5, -12154.2, 151.983, 4.64258, 10800, 0, 0, 77490, 0, 0, 0, 0, 0),
(57788, 967, 15, 1, 27823, 0, -12083.2, 12173.7, -4.71937, 0, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57852, 967, 15, 1, 11686, 0, 13395.8, -12144.9, 161.41, 0, 10800, 0, 0, 61902, 0, 0, 0, 0, 0),
(55870, 967, 15, 1, 39253, 0, 13468.2, -12139.1, 150.899, 3.05433, 10800, 0, 0, 232470, 0, 0, 0, 0, 0),
(57264, 967, 15, 1, 26997, 57264, 13491.2, -12089.3, 155.497, 1.51844, 10800, 0, 0, 154980, 0, 0, 0, 0, 0),
(57190, 967, 15, 1, 11686, 0, 13397.7, -12100.1, 142.06, 0, 10800, 0, 0, 61902, 0, 0, 0, 0, 0),
(55891, 967, 15, 1, 39256, 0, 13468.2, -12142.1, 150.897, 3.08923, 10800, 0, 0, 193725, 0, 0, 0, 0, 0),
(57920, 967, 15, 1, 11686, 0, 13461.2, -12134.1, 151.111, 0, 10800, 0, 0, 61902, 0, 0, 0, 0, 0),
(57852, 967, 15, 1, 11686, 0, 13494.4, -12156.3, 155.496, 0, 10800, 0, 0, 61902, 0, 0, 0, 0, 0),
(56630, 967, 15, 1, 28227, 0, -1782.69, -2400.44, 341.438, 2.14675, 10800, 0, 0, 7749000, 890800, 0, 0, 0, 0),
(56666, 967, 15, 1, 38754, 0, -1784.79, -2384.86, 341.438, 4.43314, 10800, 0, 0, 7749000, 890800, 0, 0, 0, 0),
(57788, 967, 15, 1, 27823, 0, -12099.1, 12142.7, -2.65092, 0, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57264, 967, 15, 1, 27331, 57264, 13486.7, -12159.6, 155.418, 1.46918, 10800, 0, 0, 154980, 0, 0, 0, 0, 0),
(57264, 967, 15, 1, 27332, 57264, 13505.7, -12138.5, 170.561, 0, 10800, 0, 0, 154980, 0, 0, 0, 0, 0),
(57788, 967, 15, 1, 27823, 0, -12075.2, 12133.7, -2.65092, 0, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57260, 967, 15, 1, 39692, 0, 13418.7, -12153.4, 152.12, 4.66003, 10800, 0, 0, 77490, 17816, 0, 0, 0, 0),
(57260, 967, 15, 1, 39692, 0, 13421.2, -12110.6, 152.131, 1.5708, 10800, 0, 0, 77490, 17816, 0, 0, 0, 0),
(56694, 967, 15, 1, 39456, 0, 13392.5, -12130.7, 156.187, 3.05433, 10800, 0, 0, 858920, 94700, 0, 0, 0, 0),
(57266, 967, 15, 1, 39145, 0, 13393.2, -12130.7, 153.947, 3.05433, 10800, 0, 0, 858920, 94700, 0, 0, 0, 0),
(57265, 967, 15, 1, 26992, 57265, 13469, -12118, 150.895, 4.07839, 10800, 0, 0, 77490, 0, 0, 0, 0, 0),
(57852, 967, 15, 1, 11686, 0, 13459.9, -12105.2, 155.18, 0, 10800, 0, 0, 61902, 0, 0, 0, 0, 0),
(57264, 967, 15, 1, 26998, 57264, 13506.1, -12133.1, 170.561, 0, 10800, 0, 0, 154980, 0, 0, 0, 0, 0),
(56581, 967, 15, 1, 27823, 0, -11945.9, 12254, 2.40669, 5.32136, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57265, 967, 15, 1, 26990, 57265, 13419.7, -12152.5, 152.172, 3.87463, 10800, 0, 0, 77490, 0, 0, 0, 0, 0),
(56664, 967, 15, 1, 40049, 0, -1792.26, -2399.79, 341.438, 0.855211, 10800, 0, 0, 7749000, 890800, 0, 0, 0, 0),
(56665, 967, 15, 1, 39447, 0, -1779.83, -2392.6, 341.438, 3.21141, 10800, 0, 0, 7749000, 890800, 0, 0, 0, 0),
(57882, 967, 15, 1, 24719, 0, -12128.2, 12181.2, 0.317583, 5.58505, 10800, 0, 0, 154980, 0, 0, 0, 0, 0),
(57378, 967, 15, 1, 24719, 0, -12132.6, 12172.9, 0.317583, 5.77704, 10800, 0, 0, 154980, 0, 0, 0, 0, 0),
(57882, 967, 15, 1, 24719, 0, 13496.4, -12130.4, 158.573, 3.03687, 10800, 0, 0, 154980, 0, 0, 0, 0, 0),
(57260, 967, 15, 1, 39692, 0, 13444, -12110.7, 152.099, 1.5708, 10800, 0, 0, 77490, 17816, 0, 0, 0, 0),
(57190, 967, 15, 1, 11686, 0, 13472.7, -12173.8, 139.096, 0, 10800, 0, 0, 61902, 0, 0, 0, 0, 0),
(56681, 967, 15, 1, 26757, 0, 13430.2, -12154.5, 152.083, 4.62512, 10800, 0, 0, 77490, 200, 0, 0, 0, 0),
(56666, 967, 15, 1, 38754, 0, 13387.7, -12126.2, 153.902, 5.42797, 10800, 0, 0, 7749000, 890800, 0, 0, 0, 0),
(57265, 967, 15, 1, 26990, 57265, 13455.6, -12110.9, 152.14, 1.32645, 10800, 0, 0, 77490, 0, 0, 0, 0, 0),
(56176, 967, 15, 1, 11686, 0, 13610.9, 13637.1, 123.567, 0, 10800, 0, 0, 77490, 0, 0, 0, 0, 0),
(56176, 967, 15, 1, 11686, 0, 13616.3, 13592.8, 123.567, 0, 10800, 0, 0, 77490, 0, 0, 0, 0, 0),
(56176, 967, 15, 1, 11686, 0, 13587.2, 13624.8, 122.503, 0, 10800, 0, 0, 77490, 0, 0, 0, 0, 0),
(56176, 967, 15, 1, 11686, 0, 13602.5, 13606.2, 122.503, 0, 10800, 0, 0, 77490, 0, 0, 0, 0, 0),
(56176, 967, 15, 1, 11686, 0, 13584.6, 13569.6, 123.567, 0, 10800, 0, 0, 77490, 0, 0, 0, 0, 0),
(56176, 967, 15, 1, 11686, 0, 13592.2, 13651.9, 123.567, 0, 10800, 0, 0, 77490, 0, 0, 0, 0, 0),
(56176, 967, 15, 1, 11686, 0, 13558.7, 13640.5, 123.567, 0, 10800, 0, 0, 77490, 0, 0, 0, 0, 0),
(56176, 967, 15, 1, 11686, 0, 13538.7, 13611.7, 124.564, 0, 10800, 0, 0, 77490, 0, 0, 0, 0, 0),
(56176, 967, 15, 1, 11686, 0, 13572.1, 13595.5, 122.503, 0, 10800, 0, 0, 77490, 0, 0, 0, 0, 0),
(56176, 967, 15, 1, 11686, 0, 13562.7, 13567.9, 124.564, 0, 10800, 0, 0, 77490, 0, 0, 0, 0, 0),
(56176, 967, 15, 1, 11686, 0, 13551.1, 13602.4, 123.567, 0, 10800, 0, 0, 77490, 0, 0, 0, 0, 0),
(56176, 967, 15, 1, 11686, 0, 13631.3, 13617.4, 123.567, 0, 10800, 0, 0, 77490, 0, 0, 0, 0, 0),
(57823, 967, 15, 1, 39914, 57823, 13588, 13652, 123.514, 4.6672, 10800, 0, 0, 2014740, 8908, 0, 0, 0, 0),
(57823, 967, 15, 1, 39914, 57823, 13587.4, 13571.1, 123.537, 1.62857, 10800, 0, 0, 2014740, 8908, 0, 0, 0, 0),
(57823, 967, 15, 1, 39914, 57823, 13556.9, 13643.5, 123.567, 5.55015, 10800, 0, 0, 2014740, 8908, 0, 0, 0, 0),
(57823, 967, 15, 1, 39914, 57823, 13557.9, 13581.2, 123.567, 0.785398, 10800, 0, 0, 2014740, 8908, 0, 0, 0, 0),
(58287, 967, 15, 1, 38497, 0, -1530.44, -2538.39, 344.85, 2.3911, 10800, 0, 0, 42, 0, 0, 0, 0, 0),
(57377, 967, 15, 1, 24719, 0, -1815.5, -2408.23, 343.879, 0.471239, 10800, 0, 0, 154980, 0, 0, 0, 0, 0),
(58287, 967, 15, 1, 38497, 0, -1548.03, -2564.19, 344.911, 2.75762, 10800, 0, 0, 42, 0, 0, 0, 0, 0),
(56143, 967, 15, 1, 39345, 0, -1399, -2515.24, 222.738, 2.42403, 10800, 0, 0, 2405850, 0, 0, 0, 0, 0),
(58287, 967, 15, 1, 38497, 0, -1481.78, -2606.28, 344.242, 5.49779, 10800, 0, 0, 42, 0, 0, 0, 0, 0),
(56143, 967, 15, 1, 39345, 0, -1467.32, -2242.52, 211.507, 1.80304, 10800, 0, 0, 2405850, 0, 0, 0, 0, 0),
(58287, 967, 15, 1, 38497, 0, -1555.02, -2580.6, 345.915, 3.03687, 10800, 0, 0, 42, 0, 0, 0, 0, 0),
(56142, 967, 15, 1, 39344, 0, -1401.26, -2513.27, 222.738, 5.56563, 10800, 0, 0, 2004875, 0, 0, 0, 0, 0),
(57287, 967, 15, 1, 6371, 0, -1754.1, -2394.89, 47.3713, 2.6529, 10800, 0, 0, 232470, 8908, 0, 0, 0, 0),
(56142, 967, 15, 1, 39344, 0, -1839.15, -2555.91, 235.163, 0.951787, 10800, 0, 0, 2004875, 0, 0, 0, 0, 0),
(57746, 967, 15, 1, 28465, 0, -1748.77, -2865.91, 59.664, 1.57952, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(56581, 967, 15, 1, 27823, 0, -11967, 12257.2, 2.3323, 2.30538, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57749, 967, 15, 1, 32810, 0, -1784.19, -2773.23, 59.9306, 1.46996, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57746, 967, 15, 1, 28628, 0, -1739.15, -2749.44, 60.298, 1.17179, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57746, 967, 15, 1, 28134, 0, -1745.14, -2782.47, 59.8009, 1.57336, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57746, 967, 15, 1, 28465, 0, -1777.94, -2655.14, 59.9757, 1.32832, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57749, 967, 15, 1, 32810, 0, -1774.87, -2585.8, 53.254, 1.74521, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57749, 967, 15, 1, 32810, 0, -1775.16, -2502.02, 52.244, 1.74426, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57836, 967, 15, 1, 11686, 0, -1840.02, -1894.45, -221.334, 5.98489, 10800, 0, 0, 60124, 0, 0, 0, 0, 0),
(55969, 967, 15, 1, 32229, 0, -1649.4, -2082.93, 232.861, 4.18879, 10800, 0, 0, 6224550, 0, 0, 0, 0, 0),
(57836, 967, 15, 1, 11686, 0, -1695.65, -1940.87, -221.227, 2.89594, 10800, 0, 0, 60124, 0, 0, 0, 0, 0),
(57836, 967, 15, 1, 11686, 0, -1701.4, -1882.99, -221.342, 3.64285, 10800, 0, 0, 60124, 0, 0, 0, 0, 0),
(57836, 967, 15, 1, 11686, 0, -1791.53, -1989.61, -221.289, 1.28666, 10800, 0, 0, 60124, 0, 0, 0, 0, 0),
(57836, 967, 15, 1, 11686, 0, -1733.92, -1984.94, -221.285, 2.1074, 10800, 0, 0, 60124, 0, 0, 0, 0, 0),
(57836, 967, 15, 1, 11686, 0, -1835.83, -1952.26, -221.277, 0.451761, 10800, 0, 0, 60124, 0, 0, 0, 0, 0),
(56581, 967, 15, 1, 27823, 0, -12148.9, 12068.8, 3.35931, 3.89864, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56581, 967, 15, 1, 27823, 0, -12154.4, 12068.7, 3.35931, 5.01529, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56581, 967, 15, 1, 27823, 0, -12155.5, 12075, 3.35931, 4.38697, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56581, 967, 15, 1, 27823, 0, -12144.5, 12063, 3.33359, 3.34734, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56359, 967, 15, 1, 27823, 0, -11960, 12296.2, 1.30971, 2.16421, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56519, 967, 15, 1, 27823, 0, -12160.9, 12057, 2.39029, 0.733038, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56581, 967, 15, 1, 27823, 0, -11947.4, 12263.4, 2.40669, 2.67678, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56581, 967, 15, 1, 27823, 0, -11966.9, 12257.7, 2.3323, 1.36737, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56581, 967, 15, 1, 27823, 0, -11966.4, 12256.8, 2.40669, 6.18579, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57836, 967, 15, 1, 11686, 0, -1802.77, -1850.23, -221.294, 5.18144, 10800, 0, 0, 60124, 0, 0, 0, 0, 0),
(56581, 967, 15, 1, 27823, 0, -12045.9, 12251.5, -5.03902, 0.635412, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56581, 967, 15, 1, 27823, 0, -12047.8, 12211, -4.94253, 0.982517, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56359, 967, 15, 1, 27823, 0, -12033.9, 12231.4, -6.06753, 2.16421, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56519, 967, 15, 1, 27823, 0, -11993.3, 12286.3, -2.66448, 5.91667, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56188, 967, 15, 1, 39347, 0, -12005.8, 12190.3, -58.5776, 0, 10800, 0, 0, 165988, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -1771.57, -2551.5, 50.978, 0.579745, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -1780.54, -2732.1, 59.8938, 5.93615, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57751, 967, 15, 1, 39125, 0, -1769.79, -2690.7, 59.8801, 5.35816, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -2304.91, -2426.64, 83.6308, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -1799.55, -2586.05, 53.2568, 2.85679, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -1776.75, -2738.34, 59.8326, 1.26454, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57746, 967, 15, 1, 28628, 0, -1773.42, -2585.11, 53.1587, 3.72125, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57746, 967, 15, 1, 28465, 0, -1775.37, -2733.97, 59.8837, 4.40616, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -2307.91, -2413.14, 83.7698, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -2309.91, -2421.14, 84.0126, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57746, 967, 15, 1, 28628, 0, -1849.43, -2857.6, 59.7652, 3.72122, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -2302.91, -2418.64, 83.8045, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -2305.91, -2417.89, 83.789, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57751, 967, 15, 1, 39125, 0, -1782.31, -2843.47, 60.8958, 5.35816, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57746, 967, 15, 1, 28465, 0, -1826.44, -2793.3, 59.7813, 4.69494, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -2311.97, -2455.29, 81.7087, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -2308.91, -2417.14, 83.8498, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -2310.91, -2425.14, 83.7779, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -2304.91, -2413.89, 83.8629, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -2309.97, -2447.29, 82.1383, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57746, 967, 15, 1, 28134, 0, -1767.02, -2548.52, 50.092, 4.69494, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -2315.97, -2445.79, 81.7348, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -2317.97, -2453.79, 81.1617, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -2311.97, -2442.54, 82.2257, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57749, 967, 15, 1, 32810, 0, -1799.4, -2548.43, 51.2686, 2.28103, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57746, 967, 15, 1, 28628, 0, -1802.07, -2641.01, 56.6865, 2.92768, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57751, 967, 15, 1, 39125, 0, -1739.09, -2769.39, 59.7709, 5.35816, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57749, 967, 15, 1, 32810, 0, -1772.67, -2790.86, 60.2222, 4.69494, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -2312.97, -2446.54, 81.8407, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57749, 967, 15, 1, 32810, 0, -1764.6, -2641.29, 56.9762, 0.487672, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -2291.18, -2370.67, 83.7481, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -2289.18, -2362.67, 83.2136, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57746, 967, 15, 1, 28134, 0, -1744.56, -2618, 54.0547, 3.72125, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -2292.18, -2361.92, 83.1233, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -2291.18, -2357.92, 82.8561, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -2297.18, -2369.17, 83.6125, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57751, 967, 15, 1, 39125, 0, -1783.32, -2091.76, 43.7621, 4.69494, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57749, 967, 15, 1, 32810, 0, -1809.98, -2071.69, 43.8611, 4.69494, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -2295.18, -2361.17, 83.0641, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57749, 967, 15, 1, 32810, 0, -1775.59, -2878.61, 63.0382, 4.69494, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57746, 967, 15, 1, 28628, 0, -1804.8, -2584.51, 52.6274, 2.9277, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57749, 967, 15, 1, 32810, 0, -1748.05, -2576.12, 49.5471, 3.69984, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57746, 967, 15, 1, 28628, 0, -1697.27, -2808.56, 59.799, 4.40635, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57746, 967, 15, 1, 28628, 0, -1742.67, -2849.39, 59.7574, 4.69494, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -1876.41, -2408.09, 52.3312, 3.22886, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57746, 967, 15, 1, 28465, 0, -1792.8, -2183.61, 43.3524, 4.69494, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57751, 967, 15, 1, 39125, 0, -1810.17, -2157.96, 43.5712, 4.69494, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -1876.76, -2399.7, 52.3223, 3.22886, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57746, 967, 15, 1, 28628, 0, -1806.98, -2104.85, 43.5562, 4.69494, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57746, 967, 15, 1, 28465, 0, -1807.69, -2129.89, 43.5562, 4.69494, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -1879.94, -2396.25, 52.3352, 3.22886, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57749, 967, 15, 1, 32810, 0, -1784.24, -2028.15, 57.215, 4.69494, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57159, 967, 15, 1, 0, 0, -2111.57, -2341.89, 81.8855, 3.42085, 10800, 0, 0, 2324700, 100, 0, 0, 0, 0),
(57746, 967, 15, 1, 28134, 0, -1824.05, -2218.61, 43.559, 4.69494, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57746, 967, 15, 1, 28628, 0, -1797.46, -2063.36, 44.2574, 4.8319, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -1879.75, -2403.87, 52.3152, 3.22886, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -1883.26, -2400.03, 52.3231, 3.22886, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57751, 967, 15, 1, 39125, 0, -1786.74, -2220.6, 43.1524, 5.35816, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -1883.17, -2408.46, 52.3297, 3.22886, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(56519, 967, 15, 1, 27823, 0, -12107.4, 12201.9, -5.40731, 5.16617, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57749, 967, 15, 1, 32810, 0, -1803.53, -2206.04, 42.8108, 4.69494, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57746, 967, 15, 1, 28134, 0, -1796.8, -2090.39, 43.5979, 4.71358, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57159, 967, 15, 1, 0, 0, -2130.09, -2348, 81.872, 2.60054, 10800, 0, 0, 2324700, 100, 0, 0, 0, 0),
(57159, 967, 15, 1, 0, 0, -2173.84, -2391.74, 79.8362, 3.17723, 10800, 0, 0, 2324700, 100, 0, 0, 0, 0),
(57159, 967, 15, 1, 0, 0, -2173.85, -2407.77, 79.9488, 3.13011, 10800, 0, 0, 2324700, 100, 0, 0, 0, 0),
(57632, 967, 15, 1, 0, 1, -2297.66, -2418.89, 83.8388, 5.5, 10800, 0, 0, 12449100, 0, 0, 0, 0, 0),
(57632, 967, 15, 1, 0, 1, -2299.16, -2424.89, 83.8078, 0.5, 10800, 0, 0, 12449100, 0, 0, 0, 0, 0),
(57632, 967, 15, 1, 0, 1, -1790.92, -2398.99, 45.6881, 0.541052, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57632, 967, 15, 1, 0, 1, -1791, -2389.25, 45.6853, 5.70723, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57632, 967, 15, 1, 0, 1, -1810.94, -2416.42, 47.2878, 0.750492, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57398, 967, 15, 1, 0, 1, -2289.16, -2350.98, 82.5979, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57398, 967, 15, 1, 0, 1, -2316.93, -2461.28, 81.4017, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57398, 967, 15, 1, 0, 1, -1763.31, -2487.59, 52.3106, 5.48033, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57380, 967, 15, 1, 0, 1, -2286.68, -2365.42, 83.4359, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57380, 967, 15, 1, 0, 1, -2307.47, -2450.04, 82.3902, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57380, 967, 15, 1, 0, 1, -1741.85, -2576.67, 49.3646, 0, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57380, 967, 15, 1, 0, 1, -1773.95, -2795.91, 60.1125, 0, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57380, 967, 15, 1, 0, 1, -1803.24, -2210.94, 42.3219, 0, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57380, 967, 15, 1, 0, 1, -1886.63, -2402.2, 52.3165, 3.28122, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57380, 967, 15, 1, 0, 1, -1776.48, -2490.07, 52.3573, 4.76475, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57380, 967, 15, 1, 0, 1, -1796.45, -2295.8, 52.3579, 1.69297, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -2294.18, -2357.17, 82.7742, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -2296.18, -2365.17, 83.3566, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -2293.18, -2365.92, 83.4209, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -2294.18, -2369.92, 83.6741, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -2288.18, -2358.67, 82.9858, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -2290.18, -2366.67, 83.493, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -2314.97, -2441.79, 82.1621, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -2316.97, -2449.79, 81.3541, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -2313.97, -2450.54, 81.5606, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -2314.97, -2454.54, 81.4269, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -2308.97, -2443.29, 82.3662, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -2310.97, -2451.29, 81.9129, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57288, 967, 15, 1, 8317, 0, -1787.85, -2426.57, 47.3711, 0.663225, 10800, 0, 0, 232470, 8908, 0, 0, 0, 0),
(57289, 967, 15, 1, 7975, 0, -1783.08, -2361.07, 47.3712, 3.85718, 10800, 0, 0, 232470, 8908, 0, 0, 0, 0),
(55544, 967, 15, 1, 11686, 0, -1768.49, -1919.78, -203.449, 4.90438, 10800, 0, 0, 54243, 0, 0, 0, 0, 0),
(55544, 967, 15, 1, 11686, 0, -1762.56, -3036.65, -116.44, 0, 10800, 0, 0, 54243, 0, 0, 0, 0, 0),
(55969, 967, 15, 1, 32229, 0, -1651.26, -2094.94, 231.766, 4.64804, 10800, 0, 0, 6224550, 0, 0, 0, 0, 0),
(56142, 967, 15, 1, 39344, 0, -1650.33, -2174.61, 223.24, 4.77909, 10800, 0, 0, 2004875, 0, 0, 0, 0, 0),
(58153, 967, 15, 1, 40074, 58153, -1814.79, -2374.8, 47.3711, 5.49779, 10800, 0, 0, 14921, 8908, 0, 0, 0, 0),
(57159, 967, 15, 1, 0, 0, -2121.97, -2342.31, 81.872, 1.58825, 10800, 0, 0, 2324700, 100, 0, 0, 0, 0),
(57259, 967, 15, 1, 36019, 0, -1907.15, -2251.74, 58.9272, 5.58505, 10800, 0, 0, 11624, 0, 0, 0, 0, 0),
(57259, 967, 15, 1, 36019, 0, -1939.68, -2540.65, 64.1207, 0.872665, 10800, 0, 0, 11624, 0, 0, 0, 0, 0),
(57206, 967, 15, 1, 27823, 0, -2110.34, -2507.82, 78.0217, 0.951566, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57206, 967, 15, 1, 27823, 0, -2076.41, -2332.14, 76.102, 3.09304, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57259, 967, 15, 1, 36019, 0, -1966.04, -2487, 63.7544, 0.331613, 10800, 0, 0, 11624, 0, 0, 0, 0, 0),
(57259, 967, 15, 1, 36019, 0, -1968.29, -2311.35, 64.2579, 6.03884, 10800, 0, 0, 11624, 0, 0, 0, 0, 0),
(57206, 967, 15, 1, 27823, 0, -2167.49, -2501.34, 75.7307, 2.93356, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57206, 967, 15, 1, 27823, 0, -2076.67, -2396.43, 74.2339, 4.45547, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56141, 967, 15, 1, 39343, 0, -1945.47, -2650.06, 63.8884, 4.26334, 10800, 0, 0, 2004875, 0, 0, 0, 0, 0),
(57206, 967, 15, 1, 27823, 0, -2194.83, -2339.64, 80.5731, 3.93959, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57206, 967, 15, 1, 27823, 0, -2232.75, -2465.69, 82.1658, 3.52389, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57206, 967, 15, 1, 27823, 0, -2246.52, -2388.83, 86.5681, 1.09583, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57682, 967, 15, 1, 39774, 57682, -1786.39, -2393.53, 45.6635, 3.14159, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57231, 967, 15, 1, 0, 0, -2093.87, -2504.92, 77.329, 0, 10800, 0, 0, 1659880, 0, 0, 0, 0, 0),
(57231, 967, 15, 1, 0, 0, -2152.81, -2572.2, 76.9754, 0, 10800, 0, 0, 1659880, 0, 0, 0, 0, 0),
(57231, 967, 15, 1, 0, 0, -2233.44, -2540.51, 70.9617, 0, 10800, 0, 0, 1659880, 0, 0, 0, 0, 0),
(57231, 967, 15, 1, 0, 0, -2213.72, -2471.36, 79.8402, 0, 10800, 0, 0, 1659880, 0, 0, 0, 0, 0),
(57231, 967, 15, 1, 0, 0, -1909.45, -2249.81, 58.8439, 5.58505, 10800, 0, 0, 1659880, 0, 0, 0, 0, 0),
(57231, 967, 15, 1, 0, 0, -1968.88, -2487.97, 63.6711, 0.331613, 10800, 0, 0, 1659880, 0, 0, 0, 0, 0),
(57231, 967, 15, 1, 0, 0, -1971.2, -2310.62, 64.1745, 6.03884, 10800, 0, 0, 1659880, 0, 0, 0, 0, 0),
(57231, 967, 15, 1, 0, 0, -1941.61, -2542.95, 64.0374, 0.872665, 10800, 0, 0, 1659880, 0, 0, 0, 0, 0),
(57261, 967, 15, 1, 27823, 0, -1862.06, -2358.64, 52.2401, 2.67035, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57231, 967, 15, 1, 0, 0, -2182.01, -2347.65, 80.7055, 0, 10800, 0, 0, 1659880, 0, 0, 0, 0, 0),
(57231, 967, 15, 1, 0, 0, -2065.19, -2340.92, 75.7273, 0, 10800, 0, 0, 1659880, 0, 0, 0, 0, 0),
(57261, 967, 15, 1, 27823, 0, -1882.14, -2373.21, 52.3105, 2.67035, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57261, 967, 15, 1, 27823, 0, -1806.71, -2486.1, 52.2835, 2.67035, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57280, 967, 15, 1, 0, 1, -1949.99, -2536.64, 65.4531, 5.58505, 10800, 0, 0, 1991850, 201140, 0, 0, 0, 0),
(57280, 967, 15, 1, 0, 1, -1945.98, -2549.06, 64.9011, 0.872665, 10800, 0, 0, 1991850, 201140, 0, 0, 0, 0),
(57280, 967, 15, 1, 0, 1, -1932.75, -2549.85, 62.5344, 2.40855, 10800, 0, 0, 1991850, 201140, 0, 0, 0, 0),
(57280, 967, 15, 1, 0, 1, -1971.68, -2300.25, 64.7033, 4.4855, 10800, 0, 0, 1991850, 201140, 0, 0, 0, 0),
(57280, 967, 15, 1, 0, 1, -1982.64, -2310.07, 65.7568, 6.03884, 10800, 0, 0, 1991850, 201140, 0, 0, 0, 0),
(57280, 967, 15, 1, 0, 1, -1976.67, -2321.34, 64.2443, 0.820305, 10800, 0, 0, 1991850, 201140, 0, 0, 0, 0),
(57261, 967, 15, 1, 27823, 0, -1858.27, -2351.56, 51.9878, 2.67035, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57280, 967, 15, 1, 0, 1, -1976.16, -2492.52, 64.1227, 0.453786, 10800, 0, 0, 1991850, 201140, 0, 0, 0, 0),
(57280, 967, 15, 1, 0, 1, -1963.69, -2497.09, 63.0064, 2.05949, 10800, 0, 0, 1991850, 201140, 0, 0, 0, 0),
(57280, 967, 15, 1, 0, 1, -1974.81, -2478.87, 64.5605, 5.11381, 10800, 0, 0, 1991850, 201140, 0, 0, 0, 0),
(57280, 967, 15, 1, 0, 1, -1905.04, -2238.86, 59.0304, 4.53786, 10800, 0, 0, 1991850, 201140, 0, 0, 0, 0),
(57280, 967, 15, 1, 0, 1, -1915.65, -2258.59, 58.1424, 0.942478, 10800, 0, 0, 1991850, 201140, 0, 0, 0, 0),
(57261, 967, 15, 1, 27823, 0, -1839.23, -2329.53, 51.8601, 2.67035, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56598, 967, 15, 1, 31043, 0, 13444.9, -12133.3, 151.21, 0, 10800, 0, 0, 4000000, 0, 0, 0, 0, 0),
(57261, 967, 15, 1, 27823, 0, -1807.71, -2475, 52.1996, 2.67035, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57261, 967, 15, 1, 27823, 0, -1815.58, -2472.73, 51.9221, 2.67035, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57261, 967, 15, 1, 27823, 0, -1828.94, -2321.92, 51.9689, 2.67035, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57261, 967, 15, 1, 27823, 0, -1850.01, -2340.25, 51.8651, 2.67035, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57261, 967, 15, 1, 27823, 0, -1868.98, -2360.28, 52.3105, 2.67035, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57261, 967, 15, 1, 27823, 0, -1844.33, -2452.85, 51.8621, 2.67035, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57280, 967, 15, 1, 0, 1, -1917.57, -2244.71, 60.2448, 5.70723, 10800, 0, 0, 1991850, 201140, 0, 0, 0, 0),
(57261, 967, 15, 1, 27823, 0, -1823.3, -2309.77, 52.2472, 2.67035, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57280, 967, 15, 1, 0, 1, -2223.44, -2536.51, 71.1877, 3.59, 10800, 0, 0, 3227880, 100520, 0, 0, 0, 0),
(57280, 967, 15, 1, 0, 1, -2223.72, -2475.36, 80.8569, 0.43, 10800, 0, 0, 3227880, 100520, 0, 0, 0, 0),
(57280, 967, 15, 1, 0, 1, -2203.72, -2467.36, 78.8818, 3.59, 10800, 0, 0, 3227880, 100520, 0, 0, 0, 0),
(56699, 967, 15, 1, 27823, 0, -12023, 12228.5, -6.0689, 1.0821, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56699, 967, 15, 1, 27823, 0, -12087.5, 12165.7, -2.65091, 1.0821, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56642, 967, 15, 1, 27823, 0, -12166.1, 12385.2, 2.22749, 0, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56642, 967, 15, 1, 27823, 0, -12071.4, 12491.1, -10.6945, 0, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56642, 967, 15, 1, 27823, 0, -12222, 12108.5, 9.21142, 0, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56642, 967, 15, 1, 27823, 0, -12020.5, 12299.7, -27.8903, 0, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56642, 967, 15, 1, 27823, 0, -12311.1, 12354.2, 38.1453, 0, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(55091, 967, 15, 1, 11686, 0, 13429.6, -12164.4, 140.658, 0, 10800, 0, 0, 42, 0, 0, 0, 0, 0),
(57280, 967, 15, 1, 0, 1, -2243.44, -2544.51, 70.7617, 0.43, 10800, 0, 0, 3227880, 100520, 0, 0, 0, 0),
(57280, 967, 15, 1, 0, 1, -2142.81, -2568.2, 78.5087, 3.59, 10800, 0, 0, 3227880, 100520, 0, 0, 0, 0),
(57261, 967, 15, 1, 27823, 0, -1854.03, -2345.92, 51.8607, 2.67035, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57280, 967, 15, 1, 0, 1, -2162.81, -2576.2, 76.0508, 0.43, 10800, 0, 0, 3227880, 100520, 0, 0, 0, 0),
(57280, 967, 15, 1, 0, 1, -2083.87, -2500.92, 75.998, 3.59, 10800, 0, 0, 3227880, 100520, 0, 0, 0, 0),
(57280, 967, 15, 1, 0, 1, -2103.87, -2508.92, 78.0645, 0.43, 10800, 0, 0, 3227880, 100520, 0, 0, 0, 0),
(57280, 967, 15, 1, 0, 1, -2055.19, -2336.92, 73.5226, 3.59, 10800, 0, 0, 3227880, 100520, 0, 0, 0, 0),
(57280, 967, 15, 1, 0, 1, -2075.19, -2344.92, 76.8518, 0.43, 10800, 0, 0, 3227880, 100520, 0, 0, 0, 0),
(57280, 967, 15, 1, 0, 1, -2172.01, -2343.65, 81.5385, 3.59, 10800, 0, 0, 3227880, 100520, 0, 0, 0, 0),
(57280, 967, 15, 1, 0, 1, -2192.01, -2351.65, 80.852, 0.43, 10800, 0, 0, 3227880, 100520, 0, 0, 0, 0),
(27953, 967, 15, 1, 14357, 27953, -1748.88, -2308.61, 52.0201, 0.977384, 10800, 0, 0, 464940, 0, 0, 0, 0, 0),
(27953, 967, 15, 1, 14357, 27953, -1837.89, -2407.79, 52.3208, 3.08923, 10800, 0, 0, 464940, 0, 0, 0, 0, 0),
(27953, 967, 15, 1, 14357, 27953, -1892.83, -2378.29, 52.2284, 3.46296, 10800, 0, 0, 464940, 0, 0, 0, 0, 0),
(27953, 967, 15, 1, 14359, 27953, -1658.98, -2400.42, 52.2276, 2.26567, 10800, 0, 0, 464940, 0, 0, 0, 0, 0),
(56642, 967, 15, 1, 27823, 0, -12079, 12206.2, -20.6085, 0, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56642, 967, 15, 1, 27823, 0, -11969.6, 12428.7, -9.83081, 0, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56642, 967, 15, 1, 27823, 0, -11923.4, 12298.3, 1.38396, 0, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56642, 967, 15, 1, 27823, 0, -12067.8, 12040.9, -29.8254, 0, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56307, 967, 15, 1, 27823, 0, -12040.3, 12232.5, -6.0689, 5.51524, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56642, 967, 15, 1, 27823, 0, -12167.9, 12415.4, 25.0736, 0, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56642, 967, 15, 1, 27823, 0, -12313.4, 12207.6, -10.4946, 0, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56581, 967, 15, 1, 27823, 0, -12100.6, 12168.1, -1.6833, 1.60135, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56581, 967, 15, 1, 27823, 0, -12076, 12162.5, -1.7342, 0.0950134, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56581, 967, 15, 1, 27823, 0, -12082.1, 12164.8, -1.7342, 2.42764, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56581, 967, 15, 1, 27823, 0, -12075.7, 12162.3, -1.7342, 4.07698, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -2306.91, -2421.89, 83.7818, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(56332, 967, 15, 1, 27823, 0, -12094.9, 12158.7, -2.7342, 5.68977, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56307, 967, 15, 1, 27823, 0, -12139.4, 12080.6, 2.39029, 5.79449, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56642, 967, 15, 1, 27823, 0, -12070.2, 12020.4, -53.1772, 0, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -1800.95, -2551.74, 51.6869, 1.13228, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -1808.91, -2588.14, 53.0546, 0.722338, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -1769.94, -2645.83, 57.8384, 0.471239, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -2303.91, -2422.64, 83.7446, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(55091, 967, 15, 1, 11686, 0, 13421.1, -12163.6, 140.927, 0, 10800, 0, 0, 42, 0, 0, 0, 0, 0),
(55091, 967, 15, 1, 11686, 0, 13438.1, -12164.7, 140.706, 0, 10800, 0, 0, 42, 0, 0, 0, 0, 0),
(58287, 967, 15, 1, 38497, 0, -2018.96, -2242.23, 306.103, 0.0349066, 10800, 0, 0, 42, 0, 0, 0, 0, 0),
(56668, 967, 15, 1, 21342, 0, -1786.72, -2393.23, 343.603, 0.174533, 10800, 0, 0, 858920, 94700, 0, 0, 0, 0),
(57261, 967, 15, 1, 27823, 0, -1838.01, -2458.36, 51.8634, 2.67035, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57261, 967, 15, 1, 27823, 0, -1849.24, -2446.27, 52.0573, 2.67035, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -1877.11, -2396.11, 52.3349, 3.22886, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -1876.65, -2403.73, 52.316, 3.22886, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -1879.83, -2399.83, 52.3228, 3.22886, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -1879.61, -2408.41, 52.331, 3.22886, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -1883.38, -2396.16, 52.3366, 3.22886, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -1883.14, -2403.91, 52.3139, 3.22886, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -1789.79, -2306.31, 52.3483, 1.71042, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57261, 967, 15, 1, 27823, 0, -1844.63, -2334.9, 51.8536, 2.67035, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -1797.39, -2307.01, 52.3703, 1.71042, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -1793.59, -2303.7, 52.3644, 1.71042, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -1790.04, -2300.03, 52.3321, 1.71042, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(27953, 967, 15, 1, 14357, 27953, -1775.97, -2449.61, 52.4434, 4.66003, 10800, 0, 0, 464940, 0, 0, 0, 0, 0),
(27953, 967, 15, 1, 14358, 27953, -1703.51, -2383.48, 52.3185, 3.61283, 10800, 0, 0, 464940, 0, 0, 0, 0, 0),
(27953, 967, 15, 1, 14358, 27953, -1661.74, -2363.38, 52.3105, 5.86431, 10800, 0, 0, 464940, 0, 0, 0, 0, 0),
(27953, 967, 15, 1, 14359, 27953, -1707.04, -2456, 52.1141, 4.46804, 10800, 0, 0, 464940, 0, 0, 0, 0, 0),
(27935, 967, 15, 1, 14888, 27935, -1762, -2413.7, 47.3717, 2.44346, 10800, 0, 0, 7688, 7500, 0, 0, 0, 0),
(27938, 967, 15, 1, 24951, 0, -1805.28, -2421.17, 47.3713, 0.977384, 10800, 0, 0, 10635, 0, 0, 0, 0, 0),
(27953, 967, 15, 1, 14359, 27953, -1783.62, -2338.85, 52.3968, 2.09439, 10800, 0, 0, 464940, 0, 0, 0, 0, 0),
(27953, 967, 15, 1, 14357, 27953, -1733.27, -2394.74, 52.2344, 2.12281, 10800, 0, 0, 464940, 0, 0, 0, 0, 0),
(27953, 967, 15, 1, 14358, 27953, -1799.64, -2340.22, 52.3185, 2.16993, 10800, 0, 0, 464940, 0, 0, 0, 0, 0),
(58036, 967, 15, 1, 24958, 0, -1767.31, -2383.36, 45.7419, 3.61283, 10800, 0, 0, 8982, 0, 0, 0, 0, 0),
(56642, 967, 15, 1, 27823, 0, -12211, 12033.6, 73.0329, 0, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56699, 967, 15, 1, 27823, 0, -12047.9, 12213.9, -5.94278, 4.7822, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56307, 967, 15, 1, 27823, 0, -11960.5, 12288.5, 1.38396, 4.92183, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56642, 967, 15, 1, 27823, 0, -12374.2, 12266.4, 9.70486, 0, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56642, 967, 15, 1, 27823, 0, -12120.6, 12133.4, -19.5708, 0, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56642, 967, 15, 1, 27823, 0, -12245.5, 12321.8, 1.5968, 0, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56699, 967, 15, 1, 27823, 0, -12099.6, 12152.8, -2.65092, 1.0821, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56642, 967, 15, 1, 27823, 0, -11903.4, 12283.8, 49.897, 0, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56642, 967, 15, 1, 27823, 0, -12032.6, 12175.5, -5.71428, 0, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56642, 967, 15, 1, 27823, 0, -11964.7, 12212.8, -26.1026, 0, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1795.66, -2309.01, 175.088, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1714.93, -2413.4, 141.493, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1861.81, -2406.9, 142.922, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1729.8, -2331.61, 140.597, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(58287, 967, 15, 1, 38497, 0, -2063.18, -2202.51, 321.03, 1.88496, 10800, 0, 0, 42, 0, 0, 0, 0, 0),
(58287, 967, 15, 1, 38497, 0, -2101.18, -2287.32, 306.91, 3.19395, 10800, 0, 0, 42, 0, 0, 0, 0, 0),
(58287, 967, 15, 1, 38497, 0, -2071.9, -2219.93, 306.408, 2.44346, 10800, 0, 0, 42, 0, 0, 0, 0, 0),
(58287, 967, 15, 1, 38497, 0, -2048.94, -2309.91, 306.374, 5.35816, 10800, 0, 0, 42, 0, 0, 0, 0, 0),
(58287, 967, 15, 1, 38497, 0, -2011.05, -2223.6, 322.228, 0.383972, 10800, 0, 0, 42, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -1797.78, -2300.52, 52.3582, 1.71042, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -1782.94, -2479.2, 52.3321, 4.81711, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -1770.6, -2481.52, 52.3469, 4.81711, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57261, 967, 15, 1, 27823, 0, -1884.42, -2388.6, 52.3401, 2.67035, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57261, 967, 15, 1, 27823, 0, -1823.32, -2467.66, 51.8566, 2.67035, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57261, 967, 15, 1, 27823, 0, -1866.56, -2445.38, 52.3105, 2.67035, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57261, 967, 15, 1, 27823, 0, -1831.05, -2464.22, 51.8674, 2.67035, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57261, 967, 15, 1, 27823, 0, -1833.59, -2325.23, 51.8542, 2.67035, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -1779.18, -2481.87, 52.3613, 4.81711, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -1775.32, -2478.62, 52.3663, 4.81711, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1815.5, -2408.23, 343.879, 0.471239, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(57882, 967, 15, 1, 24719, 0, -1817.64, -2383.53, 343.879, 5.93412, 10800, 0, 0, 154980, 0, 0, 0, 0, 0),
(27953, 967, 15, 1, 14358, 27953, -1846.69, -2390.53, 52.3147, 4.2586, 10800, 0, 0, 464940, 0, 0, 0, 0, 0),
(27953, 967, 15, 1, 14355, 27953, -1889.66, -2422.05, 52.3106, 3.14159, 10800, 0, 0, 464940, 0, 0, 0, 0, 0),
(27953, 967, 15, 1, 14357, 27953, -1818.83, -2291.91, 52.3106, 2.56563, 10800, 0, 0, 464940, 0, 0, 0, 0, 0),
(27953, 967, 15, 1, 14355, 27953, -1880.96, -2443.47, 52.3105, 4.15388, 10800, 0, 0, 464940, 0, 0, 0, 0, 0),
(27940, 967, 15, 1, 24953, 0, -1767.45, -2366.42, 47.3714, 4.08407, 10800, 0, 0, 4652, 0, 0, 0, 0, 0),
(27943, 967, 15, 1, 24955, 27943, -1810.13, -2369.48, 47.3712, 5.48033, 10800, 0, 0, 10635, 3561, 0, 0, 0, 0),
(27953, 967, 15, 1, 14359, 27953, -1891.09, -2392.64, 52.3219, 3.90954, 10800, 0, 0, 464940, 0, 0, 0, 0, 0),
(27953, 967, 15, 1, 14358, 27953, -1880.89, -2351.52, 52.3105, 2.3911, 10800, 0, 0, 464940, 0, 0, 0, 0, 0),
(27953, 967, 15, 1, 14359, 27953, -1806.31, -2502.47, 52.3105, 4.32842, 10800, 0, 0, 464940, 0, 0, 0, 0, 0),
(27953, 967, 15, 1, 14357, 27953, -1735.52, -2380.2, 52.3212, 5.86431, 10800, 0, 0, 464940, 0, 0, 0, 0, 0),
(56642, 967, 15, 1, 27823, 0, -11902.5, 12187.9, -36.5867, 0, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56699, 967, 15, 1, 27823, 0, -12118.2, 12084.9, 2.39029, 1.0821, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56642, 967, 15, 1, 27823, 0, -12038, 12099.3, -32.4914, 0.139626, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56699, 967, 15, 1, 27823, 0, -11972.8, 12272.8, 1.38396, 4.01426, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56307, 967, 15, 1, 27823, 0, -12111.4, 12169.9, -2.65092, 5.68977, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56642, 967, 15, 1, 27823, 0, -11691.9, 12003.7, 12.1688, 0, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56642, 967, 15, 1, 27823, 0, -12158.2, 12049, -26.8812, 0, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57379, 967, 15, 1, 24719, 0, 13634.4, 13612.1, 126.637, 3.14159, 10800, 0, 0, 154980, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1874.59, -2366.16, 127.198, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1783.6, -2477.93, 175.114, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1711.72, -2385.54, 144.114, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(56126, 967, 15, 1, 38497, 0, -1868.34, -2428.84, 140.506, 0, 10800, 0, 0, 32, 0, 0, 0, 0, 0),
(36737, 967, 15, 1, 14501, 0, -1881, -2422.5, 52.3192, 3.19395, 10800, 0, 0, 42, 0, 0, 0, 0, 0),
(55091, 967, 15, 1, 11686, 0, 13449.7, -12164.7, 140.858, 0, 10800, 0, 0, 42, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -1801.74, -2307.39, 52.3435, 1.71042, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -1793.37, -2306.76, 52.3707, 1.71042, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -1790.03, -2303.48, 52.3427, 1.71042, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -1797.63, -2303.91, 52.3654, 1.71042, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -1793.95, -2300.21, 52.3542, 1.71042, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -1802.33, -2300.65, 52.3293, 1.71042, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -1779.35, -2478.8, 52.3542, 4.81711, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -1770.97, -2478.32, 52.3395, 4.81711, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -1782.75, -2482.03, 52.3389, 4.81711, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -1775.14, -2481.73, 52.3745, 4.81711, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -1778.92, -2485.29, 52.3645, 4.81711, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -1770.5, -2485.07, 52.3507, 4.81711, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -1798.4, -2186.49, 43.5555, 0.471239, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -1772.4, -2547.35, 50.2412, 6.06926, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -1775.98, -2586.78, 53.2371, 0.579653, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -1773.98, -2692.33, 59.9003, 0.371157, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -1745.36, -2574.45, 49.4294, 3.67431, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -1824.94, -2223.26, 43.5562, 0, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -1784.73, -2225.74, 44.4682, 1.94278, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -1819.67, -2223.67, 43.5562, 2.28408, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -1805.7, -2124.74, 43.5562, 3.64774, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(573280, 967, 15, 1, 0, 0, -12128.4, 12179.9, 3.41189, 5.6445, 10800, 0, 0, 117362, 0, 0, 0, 0, 0),
(56359, 967, 15, 1, 27823, 0, -12118.7, 12171.1, -2.6833, 2.16421, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56188, 967, 15, 1, 39347, 0, -12065, 12127.2, -47.6344, 0, 10800, 0, 0, 165988, 0, 0, 0, 0, 0),
(56519, 967, 15, 1, 27823, 0, -12082.4, 12227.6, -7.63099, 0.331613, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56519, 967, 15, 1, 27823, 0, -12028.8, 12265.6, -6.3548, 4.13643, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56332, 967, 15, 1, 27823, 0, -12025.9, 12218.6, -6.08199, 5.51524, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56581, 967, 15, 1, 27823, 0, -12048.8, 12212.5, -4.94253, 1.04142, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56581, 967, 15, 1, 27823, 0, -12095.2, 12167.7, -1.62278, 1.98069, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(56332, 967, 15, 1, 27823, 0, -12106.2, 12162.1, -2.66644, 0, 10800, 0, 0, 82994, 0, 0, 0, 0, 0),
(57684, 967, 15, 1, 39775, 57684, -2223.11, -2397.47, 85.1713, 3.1826, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57443, 967, 15, 1, 24719, 0, -1732.26, -2387.64, 343.937, 3.14159, 10800, 0, 0, 154980, 0, 0, 0, 0, 0),
(15502, 967, 1, 1, 15480, 15502, -2266.57, -2413.95, 84.162, 0.593412, 10800, 0, 0, 17088, 5751, 0, 0, 0, 0),
(15631, 967, 1, 1, 11686, 0, -12074.5, 12159.3, -2.65091, 0, 10800, 0, 0, 14000, 4475, 0, 0, 0, 0),
(32784, 967, 1, 1, 11686, 0, -1811.74, -2409.39, 340.879, 3.72054, 10800, 0, 0, 42, 0, 0, 0, 0, 0),
(32782, 967, 1, 1, 11686, 0, -1815.57, -2412.71, 340.712, 5.26211, 10800, 0, 0, 42, 0, 0, 0, 0, 0),
(32782, 967, 1, 1, 11686, 0, -1809.58, -2405.67, 340.796, 5.35325, 10800, 0, 0, 42, 0, 0, 0, 0, 0),
(32782, 967, 1, 1, 11686, 0, -1812.64, -2405.12, 340.782, 5.44305, 10800, 0, 0, 42, 0, 0, 0, 0, 0),
(32782, 967, 1, 1, 11686, 0, -1815.46, -2412.86, 340.716, 5.26078, 10800, 0, 0, 42, 0, 0, 0, 0, 0),
(56922, 967, 1, 1, 39378, 0, 13627.7, -12127.3, 167.242, 1.91271, 10800, 0, 0, 774900, 0, 0, 0, 0, 0),
(32641, 967, 0, 1, 28120, 0, -2274.08, -2399.39, 78.9264, 5.90903, 10800, 0, 0, 12600, 0, 0, 0, 0, 0),
(32642, 967, 0, 1, 28118, 0, -2274.08, -2399.39, 78.9264, 5.90903, 10800, 0, 0, 12600, 0, 0, 0, 0, 0),
(32641, 967, 0, 1, 28120, 0, -2274.98, -2403.95, 78.3984, 5.95942, 10800, 0, 0, 12600, 0, 0, 0, 0, 0),
(32642, 967, 0, 1, 28118, 0, -2274.98, -2403.95, 78.3984, 5.95942, 10800, 0, 0, 12600, 0, 0, 0, 0, 0),
(55308, 967, 15, 1, 39138, 0, -1768.45, -1919.4, -226.362, 1.29372, 604800, 0, 0, 68198240, 0, 0, 0, 0, 0),
(55312, 967, 15, 1, 39101, 0, -1762.08, -3036.6, -182.458, 3.49677, 604800, 0, 0, 47240600, 0, 0, 0, 0, 0),
(573280, 967, 15, 1, 0, 0, -1870.41, -3078.73, -176.044, 0.312, 10800, 0, 0, 77490, 0, 0, 0, 0, 0),
(573280, 967, 15, 1, 0, 0, -1737.69, -1822.74, -219.681, 4.396, 10800, 0, 0, 77490, 0, 0, 0, 0, 0),
(55265, 967, 15, 65535, 0, 0, -1974.64, -2410.33, 68.6849, 0.104823, 604800, 0, 0, 36000172, 4735, 0, 0, 0, 0),
(56854, 967, 15, 1, 0, 56854, 13412.3, -12118.9, 150.819, 6.22031, 10800, 0, 0, 3207800, 0, 0, 0, 0, 0),
(56667, 967, 15, 1, 39145, 0, -1793.59, -2388.05, 341.438, 5.58505, 10800, 0, 0, 858920, 94700, 0, 0, 0, 0),
(25848, 967, 15, 65535, 0, 0, -1880.87, -2383.43, 61.1032, 0.0128078, 10800, 0, 0, 3827, 0, 0, 0, 0, 0),
(25848, 967, 15, 65535, 0, 0, -1875.33, -2421.88, 60.9094, 0.140216, 10800, 0, 0, 3827, 0, 0, 0, 0, 0),
(25848, 967, 15, 65535, 0, 0, -1891.53, -2394.86, 118.091, 3.19444, 10800, 0, 0, 3827, 0, 0, 0, 0, 0),
(56848, 967, 15, 1, 0, 56848, 13412, -12144.7, 150.819, 6.22031, 10800, 0, 0, 3207800, 0, 0, 0, 0, 0),
(55689, 967, 15, 1, 0, 55689, 13590.5, 13612.3, 122.42, 3.1544, 604800, 0, 0, 23472400, 425800, 0, 0, 0, 0),
(55294, 967, 15, 65535, 0, 0, -1687.48, -2387.33, 346.638, 3.18713, 604800, 0, 0, 56688720, 0, 0, 0, 0, 0),
(57348, 967, 15, 1, 0, 1, -2301.91, -2414.64, 83.875, 6, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(111123, 967, 1, 1, 0, 0, 13416.1, -12132.5, 150.91, 6.22774, 10800, 0, 0, 77490, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -1795.82, -2548.15, 52.0295, 3.221, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -1808.8, -2583.64, 52.5709, 6.06923, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -1778.12, -2582.3, 53.9618, 5.96903, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -1767.92, -2585.25, 53.2438, 3.11602, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -1762.21, -2550.04, 50.2795, 0, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -1770.97, -2580.19, 52.8824, 4.25103, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -1782.8, -2485.47, 52.3406, 4.81711, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -1775.05, -2485.11, 52.3697, 4.81711, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -1798.51, -2180.68, 43.5555, 5.96903, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57334, 967, 15, 1, 0, 1, -1829.76, -2221.51, 43.8158, 0.837758, 10800, 0, 0, 2074850, 0, 0, 0, 0, 0),
(57160, 967, 15, 1, 0, 0, -2219.71, -2459.37, 81.21, 5.16399, 10800, 0, 0, 3487050, 4454, 0, 0, 0, 0),
(57160, 967, 15, 1, 0, 0, -2043.9, -2520.59, 72.7205, 5.42961, 10800, 0, 0, 3487050, 4454, 0, 0, 0, 0),
(57160, 967, 15, 1, 0, 0, -2083.89, -2587.59, 83.2231, 0.551912, 10800, 0, 0, 3487050, 4454, 0, 0, 0, 0),
(57160, 967, 15, 1, 0, 0, -2188.01, -2335.65, 80.7457, 5.02, 10800, 0, 0, 3487050, 4454, 0, 0, 0, 0),
(57160, 967, 15, 1, 0, 0, -2071.19, -2328.92, 75.1362, 5.02, 10800, 0, 0, 3487050, 4454, 0, 0, 0, 0),
(57160, 967, 15, 1, 0, 0, -2099.87, -2492.92, 75.8517, 5.02, 10800, 0, 0, 3487050, 4454, 0, 0, 0, 0),
(57160, 967, 15, 1, 0, 0, -2158.81, -2560.2, 75.9902, 5.02, 10800, 0, 0, 3487050, 4454, 0, 0, 0, 0),
(57160, 967, 15, 1, 0, 0, -2239.44, -2528.51, 70.5093, 5.02, 10800, 0, 0, 3487050, 4454, 0, 0, 0, 0),
(57160, 967, 15, 1, 0, 0, -2167.11, -2489.23, 76.38, 1.99724, 10800, 0, 0, 3487050, 4454, 0, 0, 0, 0),
(57160, 967, 15, 1, 0, 0, -2228.04, -2387.54, 85.3981, 3.09084, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57160, 967, 15, 1, 0, 0, -2055.51, -2406.44, 73.2567, 3.12238, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57158, 967, 15, 1, 0, 0, -2055.94, -2428.95, 73.7492, 3.0949, 10800, 0, 0, 3487050, 4454, 0, 0, 0, 0),
(57158, 967, 15, 1, 0, 0, -2023.48, -2267.29, 74.9309, 4.79343, 10800, 0, 0, 3487050, 4454, 0, 0, 0, 0),
(57158, 967, 15, 1, 0, 0, -2094.93, -2582.42, 83.1726, 0.551912, 10800, 0, 0, 3487050, 4454, 0, 0, 0, 0),
(57158, 967, 15, 1, 0, 0, -2084.36, -2599.6, 81.5765, 0.551912, 10800, 0, 0, 3487050, 4454, 0, 0, 0, 0),
(57158, 967, 15, 1, 0, 0, -2176.01, -2359.65, 81.1762, 1.88, 10800, 0, 0, 3487050, 4454, 0, 0, 0, 0),
(57158, 967, 15, 1, 0, 0, -2059.19, -2352.92, 75.0927, 1.88, 10800, 0, 0, 3487050, 4454, 0, 0, 0, 0),
(57158, 967, 15, 1, 0, 0, -2087.87, -2516.92, 78.12, 1.88, 10800, 0, 0, 3487050, 4454, 0, 0, 0, 0),
(57158, 967, 15, 1, 0, 0, -2146.81, -2584.2, 77.0037, 1.88, 10800, 0, 0, 3487050, 4454, 0, 0, 0, 0),
(57158, 967, 15, 1, 0, 0, -2227.44, -2552.51, 71.8787, 1.88, 10800, 0, 0, 3487050, 4454, 0, 0, 0, 0),
(57158, 967, 15, 1, 0, 0, -2207.72, -2483.36, 77.9057, 1.88, 10800, 0, 0, 3487050, 4454, 0, 0, 0, 0),
(57158, 967, 15, 1, 0, 0, -2154.35, -2490.3, 76.9335, 1.99724, 10800, 0, 0, 3487050, 4454, 0, 0, 0, 0),
(57158, 967, 15, 1, 0, 0, -2175.14, -2499.75, 76.1478, 1.99724, 10800, 0, 0, 3487050, 4454, 0, 0, 0, 0),
(57158, 967, 15, 1, 0, 0, -2055.14, -2387.21, 73.4333, 3.12631, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57158, 967, 15, 1, 0, 0, -2182.01, -2400.04, 82.665, 3.11833, 10800, 0, 0, 3487050, 8908, 0, 0, 0, 0),
(57158, 967, 15, 1, 0, 0, -2228.54, -2414.68, 85.3623, 3.09767, 10800, 0, 0, 3487050, 4454, 0, 0, 0, 0),
(55476, 967, 15, 1, 0, 1, -1793.52, -2394.05, 45.6046, 0.0872665, 10800, 0, 0, 11623500, 0, 0, 0, 0, 0),
(55476, 967, 15, 1, 0, 1, -2300.41, -2421.39, 83.8132, 6, 10800, 0, 0, 11623500, 0, 0, 0, 0, 0),
(53879, 967, 15, 1, 39825, 0, -13855, -13669.6, 265.099, 1.53589, 604800, 0, 0, 29976308, 0, 0, 0, 0, 0),
(57159, 967, 15, 1, 0, 0, -2032.94, -2260.69, 77.5354, 4.79343, 10800, 0, 0, 2324700, 0, 0, 0, 0, 0),
(57159, 967, 15, 1, 0, 0, -2015.65, -2259.28, 74.1755, 4.79343, 10800, 0, 0, 2324700, 0, 0, 0, 0, 0),
(57159, 967, 15, 1, 0, 0, -2055.08, -2521.7, 73.989, 5.42961, 10800, 0, 0, 2324700, 0, 0, 0, 0, 0),
(57159, 967, 15, 1, 0, 0, -2041.68, -2510.02, 71.0238, 5.42961, 10800, 0, 0, 2324700, 0, 0, 0, 0, 0),
(57159, 967, 15, 1, 0, 0, -2118.8, -2353.8, 81.7886, 2.32518, 10800, 0, 0, 2324700, 0, 0, 0, 0, 0);
DELETE FROM `smart_scripts` WHERE  `entryorguid`=56848 AND `source_type`=0 AND `id` in (3, 4) AND `link`=0;


-- ДД

DELETE FROM `smart_scripts` WHERE `entryorguid`=36980;
INSERT INTO `smart_scripts` VALUES ('36980', '0', '2', '0', '6', '0', '100', '1', '0', '0', '0', '0', '28', '70157', '0', '0', '0', '0', '0', '18', '2', '0', '0', '0', '0', '0', '0', 'Hagara');
INSERT INTO `smart_scripts` VALUES ('36980', '0', '1', '0', '6', '0', '100', '1', '0', '0', '0', '0', '28', '69700', '0', '0', '0', '0', '0', '18', '2', '0', '0', '0', '0', '0', '0', 'Hagara');
INSERT INTO `smart_scripts` VALUES (36980, 0, 4, 0, 54, 0, 100, 0, 0, 0, 0, 0, 75, 70157, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Smart Script");
REPLACE INTO `smart_scripts` VALUES (55689, 0, 435, 0, 1, 0, 100, 0, 10000, 10000, 10000, 10000, 28, 70157, 0, 0, 0, 0, 0, 18, 150, 0, 0, 0, 0, 0, 0, "Smart Script");

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `equipment_id`, `trainer_spell`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (36980, 38320, 38321, 38322, 0, 0, 30890, 0, 0, 0, 'Ice Tomb', '', '', 0, 80, 80, 2, 14, 14, 0, 0.05, 0.06, 1, 0, 420, 630, 0, 157, 1.4, 2000, 2000, 1, 4, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 9, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_ice_tomb', 15595);

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `equipment_id`, `trainer_spell`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (38320, 0, 0, 0, 0, 0, 30890, 0, 0, 0, 'Ice Tomb (1)', '', '', 0, 80, 80, 2, 14, 14, 0, 0.05, 0.06, 1, 0, 420, 630, 0, 157, 1.4, 2000, 2000, 1, 4, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 36, 1, 1, 0, 0, 0, 0, 0, 0, 0,0, 0, 0, 0, '', 15595);

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `equipment_id`, `trainer_spell`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (38321, 0, 0, 0, 0, 0, 30890, 0, 0, 0, 'Ice Tomb (2)', '', '', 0, 80, 80, 2, 14, 14, 0, 0.05, 0.06, 1, 0, 420, 630, 0, 157, 1.4, 2000, 2000, 1, 4, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 9, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);


REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `equipment_id`, `trainer_spell`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (38322, 0, 0, 0, 0, 0, 30890, 0, 0, 0, 'Ice Tomb (3)', '', '', 0, 80, 80, 2, 14, 14, 0, 0.05, 0.06, 1, 0, 420, 630, 0, 157, 1.4, 2000, 2000, 1, 4, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 36, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

