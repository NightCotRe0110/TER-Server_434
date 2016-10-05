-- remove invisible mobs from Hour Of Twilight dungeon  who was make trouble to players
DELETE FROM creature WHERE id IN (54560,57197,54646,55466,55445,32639,55389,55384,55385,54522,54599,54644,54628) AND map=940;
-- to avoid fight between thrall and boss Archbishop Benedictus
UPDATE `creature_template` SET `faction_A`='35', `faction_H`='35' WHERE (`entry`='54971');
-- add right phase to trall for quest 30103 inside of map 940
UPDATE `creature` SET `phaseMask`='1' WHERE (`guid`='274298'); 
UPDATE creature_template_addon SET bytes1=0 WHERE entry IN (237,1747,49477,32974,32973,32971,54117,9299,8888,27761,31851,40176,40305,40312,35607,35594,32370,30562,29975,28114,44806,582,17127,48307,48306,42311,238,54004,36868,35648,42309,649,38927,33421,34283,34335,44842,47732,50470,49197,49411,46128,46127,46129,46126,48203,47191,33053,46654,46852,46853,46854,288,43730,45428,46022,48704,48705,48708,44916,44917,6707,44451,44863,44905,45165,45208,47718,41023,41528,41894
,45186,43196,43222,43248,43249,43270,43272,46717,652,650,648,651,2497,45423,52374,26787,26701,26543,38432,36406,36403,38124,38928,38647,39063,26500,39592,37805,37807,43036,39667,39668,39669,39883,39886,39911,40661,40918,42104,42197,42225,46458,653,42405,32408,31868,32404,32423,32497,49478,37806,36915,43861,28106,28107);

DELETE FROM creature_template WHERE entry IN (44470,44469,44468,44465,44464,44463,44461,44460,44459,44455,44427,35911,35554,35552,35551);
INSERT INTO `creature_template` VALUES (35551, 0, 0, 0, 0, 0, 29463, 0, 0, 0, 'Prince Liam Greymane', '', '', 0, 5, 5, 0, 0, 2173, 2173, 2, 1, 1.38571, 1, 1.38571, 1, 3, 13, 17, 0, 42, 35, 1111, 2000, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 9, 13, 169, 7, 264192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (35552, 0, 0, 0, 0, 0, 29694, 0, 0, 0, 'Lord Darius Crowley', '', '', 0, 10, 10, 0, 0, 2173, 2173, 3, 1, 1.14286, 1, 1.14286, 1, 1, 13, 17, 0, 42, 7.5, 1111, 2000, 1, 33024, 2048, 0, 0, 0, 0, 0, 0, 9, 13, 0, 7, 262148, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 1, 0, 11, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 613097436, 0, 'npc_lord_darius_crowley_c2', 13623);
INSERT INTO `creature_template` VALUES (35554, 0, 0, 0, 0, 0, 30217, 30218, 30217, 30218, 'Shaken Survivor', '', '', 0, 10, 10, 0, 0, 2163, 2163, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 1111, 2000, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (35911, 0, 0, 0, 0, 0, 29613, 0, 0, 0, 'King Genn Greymane', '', '', 0, 10, 10, 0, 0, 2173, 2173, 3, 1, 1.38571, 1, 1.38571, 1, 0, 13, 17, 0, 42, 1, 1111, 2000, 2, 33024, 2048, 0, 0, 0, 0, 0, 0, 9, 13, 0, 7, 262148, 0, 0, 0, 0, 0, 192, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (44427, 0, 0, 0, 0, 0, 238, 0, 0, 0, 'Crowley\'s Horse', '', 'vehichleCursor', 0, 5, 5, 0, 0, 35, 35, 0, 1, 1.28571, 1, 1.28571, 1, 0, 2, 2, 0, 24, 1, 1111, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 1, 0, 10, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (44455, 0, 0, 0, 0, 0, 29935, 0, 0, 0, 'Sergeant Cleese', 'Warrior Trainer', '', 10694, 5, 5, 0, 0, 2173, 2173, 51, 1, 1.14286, 1, 1.14286, 1, 0, 13, 17, 0, 42, 1, 1500, 2000, 1, 256, 2048, 0, 0, 0, 0, 1, 0, 9, 13, 0, 7, 262144, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (44459, 0, 0, 0, 0, 0, 29961, 0, 0, 0, 'Celestine of the Harvest', 'Druid Trainer', '', 10696, 5, 5, 0, 0, 2163, 2163, 51, 1, 1.14286, 1, 1.14286, 1, 0, 13, 17, 0, 42, 1, 1111, 2000, 2, 32768, 34816, 0, 0, 0, 0, 11, 0, 9, 13, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (44460, 0, 0, 0, 0, 0, 29290, 0, 0, 0, 'Gwen Armstead', '', '', 0, 1, 1, 0, 0, 2163, 2163, 2, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 1111, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (44461, 0, 0, 0, 0, 0, 29960, 0, 0, 0, 'Huntsman Blake', 'Hunter Trainer', '', 10697, 5, 5, 0, 0, 12, 12, 51, 1, 1.14286, 1, 1.14286, 1, 0, 13, 17, 0, 42, 1, 1500, 2000, 2, 768, 2048, 0, 0, 0, 0, 3, 0, 9, 13, 0, 7, 0, 0, 0, 0, 0, 0, 112, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (44463, 0, 0, 0, 0, 0, 30213, 0, 0, 0, 'Baron', 'Huntsman Blake\'s Pet', '', 0, 3, 3, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 1111, 2000, 1, 0, 2048, 0, 52, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (44464, 0, 0, 0, 0, 0, 29957, 0, 0, 0, 'Loren the Fence', 'Rogue Trainer', '', 10699, 5, 5, 0, 0, 2163, 2163, 51, 1, 1.14286, 1, 1.14286, 1, 0, 13, 17, 0, 42, 1, 1111, 2000, 4, 32768, 2048, 0, 0, 0, 0, 4, 0, 9, 13, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (44465, 0, 0, 0, 0, 0, 29956, 0, 0, 0, 'Myriam Spellwaker', 'Mage Trainer', '', 10698, 5, 5, 0, 0, 2173, 2173, 51, 1, 1.14286, 1, 1.14286, 1, 1, 13, 17, 0, 42, 7.5, 1111, 2000, 8, 32768, 2048, 0, 0, 0, 0, 8, 0, 9, 13, 0, 7, 262144, 0, 0, 0, 0, 0, 131, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 3, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (44468, 0, 0, 0, 0, 0, 29958, 0, 0, 0, 'Sister Almyra', 'Priest Trainer', '', 10700, 5, 5, 0, 0, 2163, 2163, 51, 1, 1.14286, 1, 1.14286, 1, 0, 13, 17, 0, 42, 1, 1111, 2000, 2, 32768, 2048, 0, 0, 0, 0, 5, 0, 9, 13, 0, 7, 0, 0, 0, 0, 0, 0, 112, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (44469, 0, 0, 0, 0, 0, 29959, 0, 0, 0, 'Vitus Darkwalker', 'Warlock Trainer', '', 10702, 5, 5, 0, 0, 2163, 2163, 51, 1, 1.14286, 1, 1.14286, 1, 0, 13, 17, 0, 42, 1, 1500, 2000, 1, 768, 34816, 0, 0, 0, 0, 9, 0, 9, 13, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (44470, 0, 0, 0, 0, 0, 30217, 30218, 30214, 30215, 'Injured Citizen', '', '', 0, 10, 10, 0, 0, 2163, 2163, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 1111, 2000, 2, 33024, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 0, 0, 0, 0, 0, 0, 192, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM creature_template WHERE entry IN (3125,3300,51913,12350,12346,7952,12349,14544,7953,14543,14545,3140,3185,10578,3188,3297,49997,6408,3099,50011,5951,3187,3304,50002,50001,50006,49998,10369,3186,10676,3194,50015,50004,3933,3184,41142,6491);

INSERT INTO `creature_template` VALUES (3099, 0, 0, 0, 0, 0, 381, 0, 0, 0, 'Dire Mottled Boar', NULL, NULL, 0, 6, 7, 0, 0, 189, 189, 0, 1, 0.857143, 1, 0.857143, 1, 0, 9, 12, 0, 36, 1, 2000, 2000, 1, 0, 2048, 0, 5, 0, 0, 0, 0, 6, 8, 0, 1, 1, 0, 3099, 0, 3099, 0, 0, 0, 0, 0, 0, 3385, 0, 0, 0, 0, 0, 0, 0, 9069, 0, 0, 0, NULL, NULL, 'SmartAI', 1, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, '', 12340);
INSERT INTO `creature_template` VALUES (3125, 0, 0, 0, 0, 0, 2486, 0, 0, 0, 'Clattering Scorpid', '', '', 0, 1, 6, 0, 0, 413, 413, 0, 1, 0.857143, 1, 0.857143, 1, 0, 7, 9, 0, 34, 1, 2000, 2000, 1, 0, 2048, 0, 20, 0, 0, 0, 0, 4, 6, 0, 1, 1, 0, 3125, 0, 3125, 0, 0, 0, 0, 0, 0, 73672, 0, 0, 0, 0, 0, 0, 0, 12968, 0, 0, 0, NULL, NULL, 'SmartAI', 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, '', 12340);
INSERT INTO `creature_template` VALUES (3140, 0, 0, 0, 0, 0, 4070, 0, 0, 0, 'Lar Prowltusk', NULL, NULL, 0, 7, 7, 0, 0, 126, 126, 3, 1, 1.14286, 1, 1.14286, 1, 0, 9, 12, 0, 36, 1, 2000, 2000, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 6, 8, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (3184, 0, 0, 0, 0, 0, 4071, 0, 0, 0, 'Miao\'zan', 'Alchemy Trainer', NULL, 0, 25, 25, 0, 0, 126, 126, 81, 1, 1.14286, 1, 1.14286, 1, 0, 35, 48, 0, 86, 1, 2000, 2000, 1, 512, 2048, 0, 0, 2, 0, 0, 0, 24, 36, 6, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1.02, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (3185, 0, 0, 0, 0, 0, 4085, 0, 0, 0, 'Mishiki', 'Herbalism Trainer', NULL, 0, 14, 14, 0, 0, 126, 126, 81, 1, 1.14286, 1, 1.14286, 1, 0, 20, 27, 0, 50, 1, 2000, 2000, 1, 512, 2048, 0, 0, 2, 0, 0, 0, 13, 20, 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (3186, 0, 0, 0, 0, 0, 4089, 0, 0, 0, 'K\'waii', 'General Goods', NULL, 0, 11, 11, 0, 0, 126, 126, 641, 1, 1.14286, 1, 1.14286, 1, 0, 15, 20, 0, 44, 1, 2000, 2000, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 9, 14, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (3187, 0, 0, 0, 0, 0, 4087, 0, 0, 0, 'Tai\'tasi', 'Trade Supplies', NULL, 0, 12, 12, 0, 0, 126, 126, 129, 1, 1.14286, 1, 1.14286, 1, 0, 17, 22, 0, 46, 1, 2000, 2000, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 11, 17, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (3188, 0, 0, 0, 0, 0, 4072, 0, 0, 0, 'Master Gadrin', NULL, NULL, 0, 12, 12, 0, 0, 126, 126, 3, 1, 1.14286, 1, 1.14286, 1, 0, 17, 22, 0, 46, 1, 2000, 2000, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 11, 17, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (3194, 0, 0, 0, 0, 0, 4074, 0, 0, 0, 'Vel\'rin Fang', NULL, NULL, 0, 7, 7, 0, 0, 126, 126, 3, 1, 1.14286, 1, 1.14286, 1, 0, 9, 12, 0, 36, 1, 2000, 2000, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 6, 8, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (3297, 0, 0, 0, 0, 0, 4083, 4084, 0, 0, 'Sen\'jin Watcher', NULL, NULL, 0, 15, 15, 0, 0, 877, 877, 0, 1, 1.14286, 1, 1.14286, 1, 0, 22, 29, 0, 54, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 15, 22, 2, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95826, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 12340);
INSERT INTO `creature_template` VALUES (3300, 0, 0, 0, 0, 0, 1987, 1206, 0, 0, 'Adder', NULL, NULL, 0, 1, 1, 0, 0, 7, 7, 0, 1, 0.857143, 1, 0.857143, 1, 0, 2, 2, 0, 24, 4.6, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 1, 3, 0, 0.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, '', 12340);
INSERT INTO `creature_template` VALUES (3304, 0, 0, 0, 0, 0, 4086, 0, 0, 0, 'Master Vornal', NULL, NULL, 0, 11, 11, 0, 0, 126, 126, 3, 1, 1.14286, 1, 1.14286, 1, 0, 15, 20, 0, 44, 1, 2000, 2000, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 9, 14, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (3933, 0, 0, 0, 0, 0, 4082, 0, 0, 0, 'Hai\'zan', 'Butcher', NULL, 0, 14, 14, 0, 0, 126, 126, 641, 1, 1.14286, 1, 1.14286, 1, 0, 20, 27, 0, 50, 1, 2000, 2000, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 13, 20, 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (5951, 0, 0, 0, 0, 0, 1560, 0, 0, 0, 'Hare', NULL, NULL, 0, 1, 1, 0, 0, 31, 31, 0, 1, 0.857143, 1, 0.857143, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 0, 2048, 2048, 0, 0, 0, 0, 0, 1, 1, 0, 8, 0, 0, 0, 0, 5951, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 1, 3, 0, 0.2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 100, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (6408, 0, 0, 0, 0, 0, 5370, 0, 0, 0, 'Ula\'elek', NULL, NULL, 0, 35, 35, 0, 0, 126, 126, 3, 1, 1.14286, 1, 1.14286, 1, 0, 49, 64, 0, 118, 1, 2000, 2000, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 33, 49, 11, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1.1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (6491, 0, 0, 0, 0, 0, 5233, 0, 0, 0, 'Spirit Healer', '', '', 0, 60, 60, 0, 0, 35, 35, 16384, 1, 1, 1, 1, 1, 0, 197.6, 262.2, 0, 479, 1, 2000, 0, 1, 768, 2048, 2048, 0, 0, 0, 0, 0, 136.8, 201.4, 34, 7, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 1, 3, 1, 1.35, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (7952, 0, 0, 0, 0, 0, 7037, 0, 0, 0, 'Zjolnir', 'Raptor Handler', NULL, 0, 45, 45, 0, 0, 126, 126, 131, 1, 1.14286, 1, 1.14286, 1, 0, 76, 100, 0, 184, 1, 2000, 2000, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 52, 76, 17, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1.2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 'npc_mount_vendor', 12340);
INSERT INTO `creature_template` VALUES (7953, 0, 0, 0, 0, 0, 7040, 0, 0, 0, 'Xar\'Ti', 'Riding Trainer', NULL, 0, 50, 50, 0, 0, 126, 126, 83, 1, 1.14286, 1, 1.14286, 1, 0, 85, 112, 0, 206, 1, 2000, 2000, 1, 512, 2048, 0, 0, 1, 0, 0, 8, 58, 86, 20, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1.25, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (10369, 0, 0, 0, 0, 0, 9768, 0, 0, 0, 'Trayexir', 'Weapon Merchant', NULL, 0, 12, 12, 0, 0, 126, 126, 4225, 1, 1.14286, 1, 1.14286, 1, 0, 17, 22, 0, 46, 1, 2000, 2000, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 11, 17, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1.05, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (10578, 0, 0, 0, 0, 0, 9911, 0, 0, 0, 'Bom\'bay', 'Witch Doctor in Training', NULL, 0, 8, 8, 0, 0, 126, 126, 3, 1, 1.14286, 1, 1.14286, 1, 0, 10, 14, 0, 38, 1, 2000, 2000, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 7, 10, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17009, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 12340);
INSERT INTO `creature_template` VALUES (10676, 0, 0, 0, 0, 0, 10009, 0, 0, 0, 'Raider Jhash', NULL, NULL, 0, 35, 35, 0, 0, 85, 85, 3, 1, 1.38571, 1, 1.38571, 1, 0, 49, 64, 0, 118, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 33, 49, 11, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6533, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 12340);
INSERT INTO `creature_template` VALUES (12346, 0, 0, 0, 0, 0, 4806, 0, 0, 0, 'Emerald Riding Raptor', NULL, NULL, 0, 1, 2, 0, 0, 35, 35, 0, 1, 1.38571, 1, 1.38571, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 140, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (12349, 0, 0, 0, 0, 0, 6472, 0, 0, 0, 'Turquoise Riding Raptor', NULL, NULL, 0, 1, 2, 0, 0, 35, 35, 0, 1, 1.38571, 1, 1.38571, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 140, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (12350, 0, 0, 0, 0, 0, 6473, 0, 0, 0, 'Violet Riding Raptor', NULL, NULL, 0, 1, 2, 0, 0, 35, 35, 0, 1, 1.38571, 1, 1.38571, 1, 0, 2, 2, 0, 26, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 140, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (14543, 0, 0, 0, 0, 0, 14344, 0, 0, 0, 'Swift Olive Raptor', NULL, NULL, 0, 1, 2, 0, 0, 35, 35, 0, 1, 1.38571, 1, 1.38571, 1, 0, 2, 2, 0, 26, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 140, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (14544, 0, 0, 0, 0, 0, 14342, 0, 0, 0, 'Swift Orange Raptor', NULL, NULL, 0, 1, 2, 0, 0, 35, 35, 0, 1, 1.38571, 1, 1.38571, 1, 0, 2, 2, 0, 26, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 140, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (14545, 0, 0, 0, 0, 0, 14339, 0, 0, 0, 'Swift Blue Raptor', NULL, NULL, 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.38571, 1, 1.38571, 1, 0, 2, 2, 0, 26, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 140, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (41142, 0, 0, 0, 0, 0, 31726, 0, 0, 0, 'Handler Marnlek', 'Bat Handler', '', 0, 85, 85, 3, 0, 1074, 1074, 8193, 1, 1.14286, 1, 1.14286, 1, 0, 516, 696, 0, 813, 1, 2000, 2000, 2, 32768, 2048, 2048, 0, 0, 0, 0, 0, 389, 545, 104, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 33, NULL, NULL, '', 0, 1, 0, 4.3979, 1.00952, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (49997, 0, 0, 0, 0, 0, 36789, 0, 0, 0, 'Den\'chulu', 'Druid Trainer', '', 0, 25, 25, 0, 0, 126, 126, 49, 1, 1.14286, 1, 1.14286, 1, 0, 33, 45, 0, 80, 1, 2000, 2000, 2, 32768, 2048, 2048, 0, 0, 0, 11, 0, 23, 31, 6, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 79833, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (49998, 0, 0, 0, 0, 0, 36861, 0, 0, 0, 'Gusini', 'Warlock Trainer', '', 0, 25, 25, 0, 0, 126, 126, 49, 1, 1.14286, 1, 1.14286, 1, 0, 25, 36, 0, 37, 1, 2000, 2000, 8, 32768, 2048, 2048, 0, 0, 0, 9, 0, 22, 32, 15, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (50002, 0, 0, 0, 0, 0, 36806, 0, 0, 0, 'Bomsanchu', 'Mage Trainer', '', 0, 25, 25, 0, 0, 126, 126, 49, 1, 1.14286, 1, 1.14286, 1, 0, 25, 36, 0, 37, 1, 2000, 2000, 8, 32768, 2048, 2048, 0, 0, 0, 8, 0, 22, 32, 15, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (50004, 0, 0, 0, 0, 0, 36860, 0, 0, 0, 'Jamai', 'Hunter Trainer', '', 0, 25, 25, 0, 0, 126, 126, 49, 1, 1.14286, 1, 1.14286, 1, 0, 33, 45, 0, 80, 1, 2000, 2000, 2, 32768, 2048, 2048, 0, 0, 0, 3, 0, 23, 31, 6, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (50006, 0, 0, 0, 0, 0, 36857, 0, 0, 0, 'Yeniss', 'Warrior Trainer', '', 0, 25, 25, 0, 0, 126, 126, 49, 1, 1.14286, 1, 1.14286, 1, 0, 35, 48, 0, 86, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 1, 0, 24, 36, 6, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (50011, 0, 0, 0, 0, 0, 36793, 0, 0, 0, 'Cona', 'Shaman Trainer', '', 0, 25, 25, 0, 0, 126, 126, 49, 1, 1.14286, 1, 1.14286, 1, 0, 33, 45, 0, 80, 1, 2000, 2000, 2, 32768, 2048, 2048, 0, 0, 0, 7, 0, 23, 31, 6, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (50015, 0, 0, 0, 0, 0, 36859, 0, 0, 0, 'Munalti', 'Rogue Trainer', '', 0, 25, 25, 0, 0, 126, 126, 49, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 4, 32768, 2048, 2048, 0, 0, 0, 4, 0, 0, 0, 0, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (51913, 0, 0, 0, 0, 0, 4083, 4084, 0, 0, 'Sen\'jin Guardian', '', '', 0, 85, 85, 3, 0, 877, 877, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 1.13552, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM gameobject WHERE guid IN (13310,13305,13306);
INSERT INTO `gameobject` VALUES (13305, 204135, 1, 0, 0, 1, 1, -845.583, -4910.47, 20.8159, 3.14101, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (13306, 104555, 1, 0, 0, 1, 1, -813.096, -4940.28, 20.5151, 3.64774, 0, 0, 0, 1, 120, 255, 1);
INSERT INTO `gameobject` VALUES (13310, 207206, 1, 0, 0, 1, 1, -814.552, -4927.98, 19.8773, 2.73144, 0, 0, 0, 1, 120, 255, 1);

-- Parata
DELETE FROM `creature_template` WHERE `entry` = '50001';
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES ('50001', '0', '0', '0', '0', '0', '36858', '0', '0', '0', 'Parata', 'Priest Trainer', '', '0', '25', '25', '0', '0', '126', '126', '49', '1', '1.14286', '1', '1', '1', '0', '23', '34', '0', '9', '1.4', '2000', '2000', '8', '32768', '2048', '0', '0', '0', '0', '5', '0', '18', '27', '7', '7', '266240', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '15595');
DELETE FROM `creature_template_addon` WHERE `entry` = '50001';
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES ('50001', '0', '0', '0', '257', '0', '');

DELETE FROM `creature` WHERE id = 50001;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (317467, '50001', '1', '0', '0', '1', '1', '36858', '1', '-784.384', '-4944.82', '38.3644', '2.35619', '300', '0', '0', '562', '1633', '0', '0', '0', '0');


DELETE FROM `creature_model_info` WHERE `modelid` = 36858;
INSERT INTO `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`) VALUES
(36858, '0.306', '1.5', '1', '0');

DELETE FROM vehicle_template_accessory WHERE entry IN (35491,38500,28009,28451,30204,29351,29708,30174,29460,29500,29358,25968,38431,38585,38586,38431,38585,38586,28669,39860,36794
,25881,33114,33114,34776,34776,34776,35069,35069,35069,42015,28710,50473,48476,29863,27761,42008,39251,48805,48805,48805,48805,48805,48806,48806,48806,48806,48806,48721,48721,48721
,48721,48721,37598,37598,37598,37598,37676,35995,36514,47204,47204,47204,47204,47204,47204,47204,47204,46748,43561,33217,33297,33298,33299,33300,33301,33316,33317,33318,33319,33320,33321,33322,33323,33324,33408,33409,33414,33416,33418);
INSERT INTO `vehicle_template_accessory` VALUES (33217, 35328, 0, 1, 'Stormwind Steed', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33297, 35328, 0, 1, 'Stormwind Steed', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33298, 35332, 0, 1, 'Darnassian Nightsaber', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33299, 35323, 0, 1, 'Darkspear Raptor', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33300, 35325, 0, 1, 'Thunder Bluff Kodo', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33301, 35331, 0, 1, 'Gnomeregan Mechanostrider', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33316, 35329, 0, 1, 'Ironforge Ram', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33317, 35331, 0, 1, 'Gnomeregan Mechanostrider', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33318, 35330, 0, 1, 'Exodar Elekk', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33319, 35332, 0, 1, 'Darnassian Nightsaber', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33320, 35314, 0, 1, 'Orgrimmar Wolf', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33321, 35323, 0, 1, 'Darkspear Raptor', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33322, 35325, 0, 1, 'Thunder Bluff Kodo', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33323, 35326, 0, 1, 'Silvermoon Hawkstrider', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33324, 35327, 0, 1, 'Forsaken Warhorse', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33408, 35329, 0, 1, 'Ironforge Ram', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33409, 35314, 0, 1, 'Orgrimmar Wolf', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33414, 35327, 0, 1, 'Forsaken Warhorse', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33416, 35330, 0, 1, 'Exodar Elekk', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33418, 35326, 0, 1, 'Silvermoon Hawkstrider', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (35491, 35451, 0, 0, 'Death Knight', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (38500, 38493, 0, 0, 'Argent Crusader', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (28009, 28093, 0, 0, 'Sholazar Tickbird', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (28451, 28468, 0, 0, 'Hemet Nesingwary', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (30204, 30268, 0, 0, 'Webbed Crusader', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (29351, 29558, 0, 0, 'Frost Giant Target Bunny', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (29708, 29805, 0, 1, 'Captive Proto Drake Beam Bunny', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (30174, 30175, 0, 0, 'Hyldsmeet Bear Rider', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (29460, 29458, 0, 0, 'Brunnhildar Drakerider', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (29500, 29498, 0, 0, 'Brunnhildar Warmaiden', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (29358, 29558, 0, 0, 'Frost Giant Target Bunny', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (25968, 25801, 0, 0, 'Nedar, Lord of Rhinos', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (38431, 38309, 0, 0, 'Slimy Tentacle Stalker', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (38585, 38309, 0, 0, 'Slimy Tentacle Stalker', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (38586, 38309, 0, 0, 'Slimy Tentacle Stalker', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (38431, 38308, 1, 1, 'Ooze Covered Tentacle Stalker', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (38585, 38308, 1, 1, 'Ooze Covered Tentacle Stalker', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (38586, 38308, 1, 1, 'Ooze Covered Tentacle Stalker', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (28669, 28717, 1, 1, 'Flying Fiend', 8, 0);
INSERT INTO `vehicle_template_accessory` VALUES (39860, 39264, 0, 0, 'Gnomeregan Mechano-Tank Pilot', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (36794, 36658, 0, 0, 'Scourgelord Tyrannus', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (25881, 25802, 0, 0, 'Kaw the Mammoth Destroyer mounted on Moria', 5, 0);
INSERT INTO `vehicle_template_accessory` VALUES (33114, 33142, 1, 0, 'Overload Control Device', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (33114, 33143, 2, 0, 'Leviathan Defense Turret', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (34776, 34777, 7, 0, 'Isle of Conquest Siege Engine  - main turret (ally)', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (34776, 36356, 1, 0, 'Isle of Conquest Siege Engine  - flame turret 1 (ally)', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (34776, 36356, 2, 0, 'Isle of Conquest Siege Engine  - flame turret 2 (ally)', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (35069, 36355, 7, 0, 'Isle of Conquest Siege Engine - main turret (horde)', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (35069, 34778, 1, 0, 'Isle of Conquest Siege Engine - flame turret 1 (horde)', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (35069, 34778, 2, 0, 'Isle of Conquest Siege Engine - flame turret 2 (horde)', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (42015, 42017, 0, 0, 'Gnomish Bomber', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (28710, 28646, 0, 1, 'Pilot Vic', 7, 0);
INSERT INTO `vehicle_template_accessory` VALUES (50473, 50472, 0, 1, 'Earthen Ring Shaman', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (48476, 48477, 0, 1, 'Earthen Ring Shaman', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (29863, 28518, 0, 1, 'Persistence', 8, 0);
INSERT INTO `vehicle_template_accessory` VALUES (27761, 27535, 0, 1, 'Fordragon Battle Steed', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (42008, 42010, 0, 1, 'Dark Iron Golem', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (39251, 39245, 0, 1, 'Dark Iron Golem', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (48805, 48340, 0, 0, 'KTC Waiter', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (48805, 48341, 1, 0, 'KTC Waiter', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (48805, 48341, 2, 0, 'KTC Waiter', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (48805, 48342, 3, 0, 'KTC Waiter', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (48805, 48343, 4, 0, 'KTC Waiter', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (48806, 48340, 0, 0, 'KTC Waiter', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (48806, 48341, 1, 0, 'KTC Waiter', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (48806, 48341, 2, 0, 'KTC Waiter', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (48806, 48342, 3, 0, 'KTC Waiter', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (48806, 48343, 4, 0, 'KTC Waiter', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (48721, 48340, 0, 0, 'KTC Waiter', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (48721, 48341, 1, 0, 'KTC Waiter', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (48721, 48341, 2, 0, 'KTC Waiter', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (48721, 48342, 3, 0, 'KTC Waiter', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (48721, 48343, 4, 0, 'KTC Waiter', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (37598, 37599, 0, 1, 'Gasbot', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (37598, 37599, 1, 1, 'Gasbot', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (37598, 37599, 2, 1, 'Gasbot', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (37598, 37599, 3, 1, 'Gasbot', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (37676, 37680, 0, 1, 'Hot Rod - Sassy Hardwrench', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (35995, 36042, 0, 0, 'Strangle Vine', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (36514, 36403, 0, 1, 'Sling Rocket', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (47204, 47203, 0, 0, 'Infested Bear', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (47204, 47203, 1, 0, 'Infested Bear', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (47204, 47203, 2, 0, 'Infested Bear', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (47204, 47203, 3, 0, 'Infested Bear', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (47204, 47203, 4, 0, 'Infested Bear', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (47204, 47203, 5, 0, 'Infested Bear', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (47204, 47203, 6, 0, 'Infested Bear', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (47204, 47203, 7, 0, 'Infested Bear', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (46748, 46749, 0, 1, 'Stonard Kodo Beast', 6, 30000);
INSERT INTO `vehicle_template_accessory` VALUES (43561, 43560, 0, 0, 'Smilin\' Timmy Sticks', 6, 30000);
-- Horde Cannon 
UPDATE `creature_template` SET `npcflag` = '16777216', `unit_flags` = '262148', `dynamicflags` = '8', `spell1` = '84575', `VehicleId` = '244', `mingold` = '15', `maxgold` = '33', `mechanic_immune_mask` = '613097436' WHERE `entry` = 45263;
DELETE FROM npc_spellclick_spells WHERE npc_entry=45263;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(45263, 60962, 1, 0);
-- Horde Hauler 
UPDATE npc_spellclick_spells SET cast_flags=1 WHERE npc_entry=44731;
-- Horde Haulder 
DELETE FROM vehicle_template_accessory WHERE entry=44731;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(44731, 44734, 0, 0, 'Horde Engineer on Horde Hauler', 6, 30000),
(44731, 44732, 1, 0, 'Forsaken Trooper on Horde Hauler', 6, 30000),
(44731, 44732, 3, 0, 'Forsaken Trooper on Horde Hauler', 6, 30000),
(44731, 44733, 4, 0, 'Forsaken Trooper on Horde Hauler', 6, 30000),
(44731, 44733, 5, 0, 'Forsaken Trooper on Horde Hauler', 6, 30000),
(44731, 44733, 6, 0, 'Forsaken Trooper on Horde Hauler', 6, 30000);
-- Fenwick Thatros 
DELETE FROM creature_text WHERE  entry=47008;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(47008, 0, 0, 'All I wanted was a little peace and quiet!', 1, 0, 100, 0, 0, 0, 'Fenwick Thatros 1');
-- Fiona's Caravan
DELETE FROM vehicle_template_accessory WHERE entry=45423;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(45423, 45431, 0, 0, 'Gidwin Goldbraids on Caravan', 6, 30000),
(45423, 45417, 1, 0, 'Fiona on Caravan', 6, 30000),
(45400, 45729, 2, 0, 'Fiona on Caravan', 6, 30000);
DELETE FROM vehicle_template_accessory WHERE entry=45400;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(45400, 45431, 0, 0, 'Gidwin Goldbraids on Caravan', 6, 30000),
(45400, 45417, 1, 0, 'Fiona on Caravan', 6, 30000),
(45400, 45729, 2, 0, 'Fiona on Caravan', 6, 30000);
UPDATE creature_template SET vehicleId=1104 WHERE entry=45423;
DELETE FROM npc_spellclick_spells WHERE npc_entry IN   (25881,39860,38586,38585,38431,25968,28451,28009,35491,33418,33416,33414,33409,33408,33301,33300,33299,33298,33297,42015,50473,48476,29863,42008,39251,48805,48806,48721,37598,37676,35995,36514,47204,46748,43561,45400);
INSERT INTO `npc_spellclick_spells` VALUES ('45400', '86807', '1', '0');
INSERT INTO `npc_spellclick_spells` VALUES (25881, 46260, 0, 0);
INSERT INTO `npc_spellclick_spells` VALUES (25968, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (28009, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (28451, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (29863, 46598, 0, 1);
INSERT INTO `npc_spellclick_spells` VALUES (33297, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (33298, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (33299, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (33300, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (33301, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (33408, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (33409, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (33414, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (33416, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (33418, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (35491, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (35995, 46598, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (36514, 46598, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (37598, 46598, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (37676, 46598, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (38431, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (38585, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (38586, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (39251, 90105, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (39860, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (42008, 90105, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (42015, 78357, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (43561, 90105, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (46748, 90105, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (47204, 90105, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (48476, 88258, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (48721, 46598, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (48805, 46598, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (48806, 46598, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (50473, 91271, 1, 0);
UPDATE creature_template SET npcflag=16777216 WHERE entry IN (28451,39251,39860,42008);
DELETE FROM creature_equip_template WHERE entry=45431;
INSERT INTO `creature_equip_template` VALUES ('45431', '1', '19104', '55428', '0');
