REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (194423, 45121, -100, 1, 0, 1, 1);
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (194424, 45122, -100, 1, 0, 1, 1);

UPDATE `creature_template` SET `type_flags`='0' WHERE (`entry`='21795');
UPDATE `creature_template` SET `unit_flags`='0' WHERE (`entry`='21795');
UPDATE `creature_template` SET `dynamicflags`='0' WHERE (`entry`='21795');
UPDATE `creature_template` SET `faction_A`='15', `faction_H`='15' WHERE (`entry`='21795');
UPDATE `quest_template` SET `SpecialFlags`='1' WHERE (`id`='10419');

REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (18, 33842, 63791, 0, 0, 8, 0, 13668, 0, 0, 0, 0, 0, '', 'Required quest rewarded for spellclick');
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (18, 33843, 63792, 0, 0, 8, 0, 13667, 0, 0, 0, 0, 0, '', 'Required quest rewarded for spellclick');
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (33842, 0, 0, 0, 0, 0, 28889, 0, 0, 0, 'Stabled Sunreaver Hawkstrider', '', 'vehichleCursor', 0, 80, 80, 2, 35, 35, 0, 2, 1.38571, 1, 0, 422, 586, 0, 642, 1, 2000, 2000, 1, 32768, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62544, 62575, 62960, 62552, 0, 62863, 0, 0, 0, 349, 0, 0, '', 0, 3, 1, 3.96825, 1, 1, 0, 0, 0, 0, 0, 0, 0, 164, 1, 0, 0, 0, '', 12340);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (33843, 0, 0, 0, 0, 0, 28888, 0, 0, 0, 'Stabled Quel\'dorei Steed', '', 'vehichleCursor', 0, 80, 80, 2, 35, 35, 0, 2, 1.28968, 1, 0, 422, 586, 0, 642, 1, 2000, 2000, 1, 32768, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62544, 62575, 62960, 62552, 0, 62863, 0, 0, 0, 349, 0, 0, '', 0, 3, 1, 3.96825, 1, 1, 0, 0, 0, 0, 0, 0, 0, 164, 1, 0, 0, 0, '', 12340);
DELETE FROM `creature` WHERE `id` IN ('33843', '33842');
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (33842, 571, 1, 1, 28889, 0, 8437.67, 700.928, 547.638, 4.08407, 180, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (33842, 571, 1, 1, 28889, 0, 8591.69, 938.752, 548.816, 4.74729, 180, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (33842, 571, 1, 1, 28889, 0, 8487.8, 906.394, 547.376, 2.6529, 180, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (33843, 571, 1, 1, 28888, 0, 8575.42, 682.151, 547.456, 5.58505, 180, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (33843, 571, 1, 1, 28888, 0, 8596.26, 938.714, 548.823, 4.57276, 180, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (33843, 571, 1, 1, 28888, 0, 8485.86, 900.354, 547.376, 3.19395, 180, 0, 0, 1, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `ScriptName` = 'npc_eye_of_acherus' WHERE `entry` = '28511';

DELETE FROM `gameobject` WHERE `id`=300009;
INSERT INTO `gameobject` (`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(300009,571,1,1, 4606.72, -1606.91, 156.659, 1.62734,0.0,0.0, 0.726811, 0.686837,300,0,1),
(300009,571,1,1, 4596.78, -1606.69, 156.659, 1.5488,0.0,0.0, 0.699286, 0.714842,300,0,1),
(300009,571,1,1, 4597.1, -1594.08, 156.658, 1.53702,0.0,0.0, 0.695063, 0.718949,300,0,1),
(300009,571,1,1, 4608.33, -1592.98, 156.658, 0.162569,0.0,0.0, 0.0811951, 0.996698,300,0,1),
(300009,571,1,1, 4602.78, -1600.05, 156.658, 4.08564,0.0,0.0, 0.890651, -0.454688,300,0,1);

DELETE FROM `creature_text` WHERE `entry`=33273 AND `groupid` BETWEEN 0 AND 3;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(33273,0,0,'Are those winter hyacinths? For me?',12,0,100,6,0,0, 'Maiden of Drak''Mar'),
(33273,1,0,'It''s been so long since a traveler has come here bearing flowers.',12,0,100,1,0,0, 'Maiden of Drak''Mar'),
(33273,2,0,'The lake has been too lonely these past years. The travelers stopped coming and evil came to these waters.',12,0,100,1,0,0, 'Maiden of Drak''Mar'),
(33273,3,0,'Your gift is a rare kindness, traveler. Please take this blade with my gratitude. Long ago, another traveler left it here, but I have little use for it.',12,0,100,1,0,0, 'Maiden of Drak''Mar');
-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid`=33273 AND `source_type`=0 AND `id`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33273*100 AND `source_type`=9 AND `id` BETWEEN 0 AND 6;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33273,0,0,0,54,0,100,0,0,0,0,0,80,33273*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Maiden of DrakMar - On spawn - Run script'),
(33273*100,9,0,0,0,0,100,0,0,0,0,0,50,194239,42000,0,0,0,0,8,0,0,0,4602.977,-1600.141,156.7834,0,'Maiden of DrakMar - On script - Summon GO DrakMar Lily Pad'),
(33273*100,9,1,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Maiden of DrakMar - On script - Say 0'),
(33273*100,9,2,0,0,0,100,0,5000,5000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Maiden of DrakMar - On script - Say 1'),
(33273*100,9,3,0,0,0,100,0,6000,6000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Maiden of DrakMar - On script - Say 2'),
(33273*100,9,4,0,0,0,100,0,7000,7000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Maiden of DrakMar - On script - Say 3'),
(33273*100,9,5,0,0,0,100,0,0,0,0,0,50,194238,20000,0,0,0,0,8,0,0,0,4603.351,-1599.288,156.8822,2.234018,'Maiden of DrakMar - On script - Summon GO Blade of DrakMar');

UPDATE `creature_template` SET `InhabitType`=4, `hoverheight`=1065353216, `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=33273;
-- Set visual effect: sitting
DELETE FROM `creature_template_addon` WHERE `entry`=33273;
INSERT INTO `creature_template_addon` (`entry`,`bytes1`,`bytes2`,`emote`) VALUES (33273,1,1,0);
-- Winter Hyacinth (item 45000) Send Script Event (20990) by right-click
DELETE FROM `event_scripts` WHERE `id`=20990;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`) VALUES
(20990, 0, 10, 33273, 42000, 4602.977, -1600.141, 156.7834, 0.7504916);
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`) VALUES ('20990', '15', '17', '44978', '1');

REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`) VALUES 
(206195, 22, 7490, 'Thundermar Ale Keg', '', '', '', 0, 0, 0.85, 0, 0, 0, 0, 0, 0, 86855, 0, 0, 0, 0, 10736, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Громораан Искатель Ветра / http://ru.wowhead.com/quest=7786
-- loot
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-4 WHERE `entry`=12056 AND `item`=18563;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-4 WHERE `entry`=12057 AND `item`=18564;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-100 WHERE `entry`=11502 AND `item`=19017;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=100 WHERE  `entry`=14435 AND `item`=19018;
-- boss
DELETE FROM `creature` WHERE `id`=14435;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (14435, 1, 1, 2, 0, 0, -6237.06, 1718.68, 4.30388, 0.758073, 300, 0, 0, 333100, 0, 0, 0, 0, 0);
REPLACE INTO `phase_definitions` (`zoneId`, `entry`, `phasemask`, `comment`) VALUES (1377, 1, 3, 'Silithus - Quest Boss Phase');
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(23, 1377, 1, 0, 0, 8, 0, 7786, 0, 0, 0, 0, 0, '', 'Phase Condition: Silithus - Quest Boss Phase'),
(23, 1377, 1, 0, 1, 14, 0, 7787, 0, 0, 1, 0, 0, '', 'Phase Condition: Silithus - Quest Boss Phase');

-- Дизликс Сребросвищ / http://ru.wowhead.com/npc=40358
DELETE FROM `creature` WHERE `id`=14435;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (40358, 1, 1, 1, 1233, 40358, -4568.4, -3223.19, 34.9894, 5.35816, 600, 0, 0, 232470, 0, 0, 0, 0, 0);

-- Эскиз: насыщенный изумруд грез / http://ru.wowhead.com/item=68742
REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `delay`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `WDBVerified`) VALUES (68741, 3, 4, 'Vivid Dream Emerald', 79077, 3, 0, 8192, 1, 150000, 37500, 0, -1, -1, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 'Matches a Blue or Yellow Socket.', 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 512, 0, 0, 0, 0, 0, 0, 0, 0, 1855, 0, 0, 0, 0, 15595);

-- Ученица Нельфи, Темный следопыт Ворель
DELETE FROM `creature` WHERE `id` in (37776, 37780);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(37776, 571, 1, 1, 0, 1, 5669.74, 680.798, 651.987, 5.82387, 300, 0, 0, 60480, 17628, 0, 0, 0, 0),
(37780, 571, 1, 1, 0, 1, 5939.18, 618.325, 650.585, 2.1914, 300, 0, 0, 75600, 0, 0, 0, 0, 0);

-- Арканитовый жезл
DELETE FROM `npc_trainer` WHERE `entry` in (3345, 1317) AND `spell`=20051;
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES
(1317, 20051, 15000, 333, 290, 0),
(3345, 20051, 15000, 333, 290, 0);

-- Идеальная припарка / http://ru.wowhead.com/quest=27538
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `AIName`, `ScriptName`, `WDBVerified`) VALUES (204880, 3, 10352, 'Verrall River Muck', '', 'Gathering', '', 0, 4, 1.2, 60337, 0, 0, 0, 0, 0, 43, 31293, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24982, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);
REPLACE INTO `locales_gameobject` (`entry`, `name_loc1`, `name_loc2`, `name_loc3`, `name_loc4`, `name_loc5`, `name_loc6`, `name_loc7`, `name_loc8`, `castbarcaption_loc1`, `castbarcaption_loc2`, `castbarcaption_loc3`, `castbarcaption_loc4`, `castbarcaption_loc5`, `castbarcaption_loc6`, `castbarcaption_loc7`, `castbarcaption_loc8`) VALUES (204880, '', '', '', '', '', '', '', 'Ил реки Вералл', '', '', '', '', '', '', '', 'Сбор');
DELETE FROM `gameobject` WHERE `id`=204880;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(204880, 0, 1, 1, -3777.08, -5919.27, 7.18697, 3.84938, 0, 0, 0.93803, -0.346553, 300, 0, 1),
(204880, 0, 1, 1, -3739.1, -5849.87, 7.0053, 4.05424, 0, 0, 0.897679, -0.44065, 300, 0, 1),
(204880, 0, 1, 1, -3926.76, -6136.66, 7.17005, 0.832043, 0, 0, 0.404124, 0.914704, 300, 0, 1),
(204880, 0, 1, 1, -3701.48, -5828.98, 7.45756, 1.87149, 0, 0, 0.80504, 0.593221, 300, 0, 1),
(204880, 0, 1, 1, -3808.02, -6000.5, 7.06628, 5.99233, 0, 0, 0.144914, -0.989444, 300, 0, 1),
(204880, 0, 1, 1, -3713.98, -5932.04, 7.52676, 4.05342, 0, 0, 0.897859, -0.440283, 300, 0, 1),
(204880, 0, 1, 1, -3753.71, -6006.24, 7.49554, 4.42711, 0, 0, 0.800444, -0.599407, 300, 0, 1),
(204880, 0, 1, 1, -3823.14, -5934.88, 7.17428, 3.69383, 0, 0, 0.962121, -0.272624, 300, 0, 1),
(204880, 0, 1, 1, -3671.92, -5877.44, 7.42471, 4.23394, 0, 0, 0.854519, -0.519421, 300, 0, 1),
(204880, 0, 1, 1, -3820.38, -6062.02, 7.1961, 4.12591, 0, 0, 0.881314, -0.47253, 300, 0, 1),
(204880, 0, 1, 1, -3857.32, -6087.05, 6.59407, 3.59498, 0, 0, 0.974415, -0.224758, 300, 0, 1),
(204880, 0, 1, 1, -3905.67, -6082.86, 6.81666, 3.03751, 0, 0, 0.998646, 0.0520194, 300, 0, 1),
(204880, 0, 1, 1, -3939.62, -6026.66, 7.07262, 0.477814, 0, 0, 0.236641, 0.971597, 300, 0, 1),
(204880, 0, 1, 1, -3968.8, -5982.59, 7.51536, 2.91601, 0, 0, 0.993646, 0.112554, 300, 0, 1),
(204880, 0, 1, 1, -3878.69, -5973.29, 7.0427, 0.490067, 0, 0, 0.242589, 0.970129, 300, 0, 1),
(204880, 0, 1, 1, -3877.15, -6025.51, 7.18023, 4.74347, 0, 0, 0.696031, -0.718011, 300, 0, 1),
(204880, 0, 1, 1, -3768.93, -6035.88, 7.4949, 1.00497, 0, 0, 0.481605, 0.876388, 300, 0, 1),
(204880, 0, 1, 1, -3906.98, -6167.89, 7.5587, 2.87548, 0, 0, 0.991161, 0.132664, 300, 0, 1),
(204880, 0, 1, 1, -3833.58, -5980.97, 7.93343, 1.15711, 0, 0, 0.546814, 0.837254, 300, 0, 1),
(204880, 0, 1, 1, -3924.4, -6108.63, 6.03273, 1.65589, 0, 0, 0.736543, 0.676391, 300, 0, 1);

-- Спасательная операция / http://ru.wowhead.com/quest=27177
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `AIName`, `ScriptName`, `WDBVerified`) VALUES (205250, 3, 335, 'Water-Logged Crate', '', 'Salvaging', '', 0, 4, 0.8, 60857, 0, 0, 0, 0, 0, 43, 33839, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39388, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);
REPLACE INTO `locales_gameobject` (`entry`, `name_loc1`, `name_loc2`, `name_loc3`, `name_loc4`, `name_loc5`, `name_loc6`, `name_loc7`, `name_loc8`, `castbarcaption_loc1`, `castbarcaption_loc2`, `castbarcaption_loc3`, `castbarcaption_loc4`, `castbarcaption_loc5`, `castbarcaption_loc6`, `castbarcaption_loc7`, `castbarcaption_loc8`) VALUES (205250, '', '', '', '', '', '', '', 'Промокший ящик', '', '', '', '', '', '', '', 'Спасение');
DELETE FROM `gameobject` WHERE `id`=205250;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(205250, 0, 1, 1, -5099.99, -6281.65, -22.1667, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -5016.97, -6387.47, -22.4936, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -5039.85, -6407.33, -24.8526, 3.08921, 0, 0, 0.999657, 0.0262017, 300, 100, 1),
(205250, 0, 1, 1, -4946.39, -6356.28, -7.26569, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4982.93, -6456.06, -16.0921, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -5026.42, -6540.1, -64.3583, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -5018.45, -6510.69, -58.4795, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -5061.83, -6515.43, -49.4499, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -5001.16, -6367.45, -17.168, -3.08921, 0, 0, -0.999657, 0.0262017, 300, 100, 1),
(205250, 0, 1, 1, -5034.32, -6324.43, -18.1762, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -5027.97, -6376.82, -20.4385, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -5021.06, -6400.41, -24.8993, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4940.22, -6391.17, -11.3961, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4956.05, -6416.44, -9.92276, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4931.95, -6439.38, -15.2949, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4974.83, -6447.69, -14.728, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4957.64, -6434.22, -14.0343, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4944.61, -6440.7, -16.4767, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4935.49, -6431.04, -11.5811, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -5030.69, -6406.58, -25.3359, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4978.17, -6386.37, -16.786, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4983.74, -6520, -70.4004, -2.37364, 0, 0, -0.927183, 0.374608, 300, 100, 1),
(205250, 0, 1, 1, -4975.37, -6523.98, -70.6844, 2.67035, 0, 0, 0.972369, 0.233448, 300, 100, 1),
(205250, 0, 1, 1, -5013.55, -6522.33, -63.8293, -2.61799, 0, 0, -0.965925, 0.258821, 300, 100, 1),
(205250, 0, 1, 1, -4903.25, -6502.08, -60.4497, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4857.74, -6432.13, -26.7545, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4990.42, -6417.05, -17.6729, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -5037.19, -6436.4, -28.8455, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4893.78, -6404.66, -16.4162, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4877.36, -6408.63, -22.1681, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1),
(205250, 0, 1, 1, -4914.9, -6389.36, -8.54178, -2.75762, 0, 0, -0.981627, 0.190812, 300, 100, 1);

-- Пустынная лиса / http://ru.wowhead.com/quest=27939
UPDATE `creature_template` SET `faction_A`=35, `faction_H`=35 WHERE `entry`=47201;
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (47201, 87961, 1, 0);
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (18, 47201, 87961, 0, 0, 9, 0, 27939, 0, 0, 0, 0, 0, '', 'The Desert Fox');

-- Последние слова пророка / http://ru.wowhead.com/quest=27602
DELETE FROM `gameobject` WHERE `id`=205824;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (205824, 1, 1, 1, -9905.06, -13.5625, 54.0845, -0.558505, 0, 0, -0.275637, 0.961262, 300, 100, 1);

-- Недостающие части / http://ru.wowhead.com/quest=28272
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `AIName`, `ScriptName`, `WDBVerified`) VALUES (207124, 3, 10201, 'Pillaged Loot Sack', '', 'Rummaging', '', 0, 0, 1, 63685, 0, 0, 0, 0, 0, 43, 35934, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48657, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);
REPLACE INTO `locales_gameobject` (`entry`, `name_loc1`, `name_loc2`, `name_loc3`, `name_loc4`, `name_loc5`, `name_loc6`, `name_loc7`, `name_loc8`, `castbarcaption_loc1`, `castbarcaption_loc2`, `castbarcaption_loc3`, `castbarcaption_loc4`, `castbarcaption_loc5`, `castbarcaption_loc6`, `castbarcaption_loc7`, `castbarcaption_loc8`) VALUES (207124, '', '', '', '', '', '', '', 'Мешок с награбленным', '', '', '', '', '', '', '', 'Поиск');
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (207124, 63685, -100);
DELETE FROM `gameobject` WHERE `id`=207124;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(207124, 1, 1, 1, -8913.23, 101.528, 141.048, 0, 0, 0, 0, 1, 300, 100, 1),
(207124, 1, 1, 1, -8914.25, 76.8333, 141.048, 0, 0, 0, 0, 1, 300, 100, 1),
(207124, 1, 1, 1, -8899.93, -48.5451, 141.048, 0, 0, 0, 0, 1, 300, 100, 1),
(207124, 1, 1, 1, -8860.86, -16.0243, 142.207, 0, 0, 0, 0, 1, 300, 100, 1),
(207124, 1, 1, 1, -8831.59, 0.0590278, 141.046, 0, 0, 0, 0, 1, 300, 100, 1),
(207124, 1, 1, 1, -8754.06, 18.0503, 141.08, 0, 0, 0, 0, 1, 300, 100, 1),
(207124, 1, 1, 1, -9060.08, 63.4931, 141.049, 0, 0, 0, 0, 1, 300, 100, 1),
(207124, 1, 1, 1, -8919.02, -48.0747, 141.047, 0, 0, 0, 0, 1, 300, 100, 1),
(207124, 1, 1, 1, -8973.1, -86.4688, 141.046, 0, 0, 0, 0, 1, 300, 100, 1),
(207124, 1, 1, 1, -8976.1, -92.6493, 141.058, 0, 0, 0, 0, 1, 300, 100, 1),
(207124, 1, 1, 1, -9046.4, -97.9931, 141.048, 0, 0, 0, 0, 1, 300, 100, 1);

-- Воззвание к героям: Ульдум! / http://ru.wowhead.com/quest=28558
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry` in (44833, 46532);

-- Твое время пришло
DELETE FROM `creature` WHERE `id` in (52408, 52382);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(52408, 0, 1, 1, 37874, 0, -9009.46, 862.241, 30.4525, 1.20428, 300, 0, 0, 30951, 0, 0, 0, 0, 0),
(52382, 1, 1, 1, 37864, 0, 1673.21, -4354.4, 27.0909, 3.00197, 300, 0, 0, 30951, 0, 0, 0, 0, 0);
REPLACE INTO `creature_addon` (`guid`, `bytes1`, `auras`) VALUES ((select `guid` from `creature` where `id`=52408), 33554432, '74426'), ((select `guid` from `creature` where `id`=52382), 33554432, '74426');
REPLACE INTO `creature_involvedrelation` (`id`, `quest`) VALUES (52382, 29452), (52408, 29453);

-- Борьба с порчей / http://ru.wowhead.com/quest=26585
DELETE FROM `gameobject` WHERE `id`=204410;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(204410, 646, 1, 1, 1858.88, -718.573, 240.465, 0.009417, 0, 0, 0.004708, 0.999989, 300, 0, 1),
(204410, 646, 1, 1, 1839.41, -659.892, 241.419, 2.51484, 0, 0, 0.951298, 0.308274, 300, 0, 1),
(204410, 646, 1, 1, 1844.28, -622.868, 242.906, 6.12688, 0, 0, 0.078071, -0.996948, 300, 0, 1),
(204410, 646, 1, 1, 1879.57, -613.204, 244.501, 5.72241, 0, 0, 0.276729, -0.960948, 300, 0, 1),
(204410, 646, 1, 1, 1882.22, -666.595, 239.931, 4.1791, 0, 0, 0.868438, -0.495799, 300, 0, 1),
(204410, 646, 1, 1, 1845.53, -723.592, 245.343, 5.16084, 0, 0, 0.532179, -0.846632, 300, 0, 1),
(204410, 646, 1, 1, 1874.5, -711.066, 241.122, 1.5064, 0, 0, 0.683975, 0.729505, 300, 0, 1),
(204410, 646, 1, 1, 1822.95, -691.485, 243.283, 1.79698, 0, 0, 0.782386, 0.622794, 300, 0, 1);

-- Глубины глубин / http://ru.wowhead.com/quest=26869
DELETE FROM `gameobject` WHERE `id` in (205195, 204959);
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(205195, 646, 1, 1, 1888, -46.7219, -174.179, 2.22718, 0, 0, 0.897288, 0.441445, 1, 0, 1),
(205195, 646, 1, 1, 1976.89, -173.154, -176.221, 2.45101, 0, 0, 0.940976, 0.338472, 1, 0, 1),
(205195, 646, 1, 1, 2078.78, -205.893, -174.055, 5.86749, 0, 0, 0.206353, -0.978478, 1, 0, 1),
(205195, 646, 1, 1, 2165.36, -211.713, -166.258, 0.911622, 0, 0, 0.440191, 0.897904, 1, 0, 1),
(205195, 646, 1, 1, 2167.38, -89.7111, -190.652, 0.650866, 0, 0, 0.319719, 0.947512, 1, 0, 1),
(205195, 646, 1, 1, 2139.43, -129.228, -189.845, 4.01473, 0, 0, 0.906208, -0.422831, 1, 0, 1),
(205195, 646, 1, 1, 2024.5, -153.285, -176.031, 0.382248, 0, 0, 0.189962, 0.981791, 1, 0, 1),
(205195, 646, 1, 1, 2023.6, -223.077, -172.959, 3.81444, 0, 0, 0.943942, -0.330112, 1, 0, 1),
(205195, 646, 1, 1, 2072.14, -178.025, -175.682, 2.86017, 0, 0, 0.990117, 0.140247, 1, 0, 1),
(204959, 646, 1, 1, 1857.19, -99.4932, -173.22, 3.51523, 0, 0, 0.9826, -0.185735, 3600, 0, 1);

-- Фероситас Пожиратель Снов / http://ru.wowhead.com/quest=2459
DELETE FROM `creature_loot_template` WHERE `item`=8049;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (7234, 8050, -100);

-- Старейшина Мана'лоа / http://ru.wowhead.com/quest=12030
REPLACE INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES (188419, 12030), (188419, 12031);

-- Квесты ДК
UPDATE `quest_template` SET `RequiredClasses`=0, `RequiredRaces`=0, `RequiredSkillId`=0, `RequiredSkillPoints`=0, `RequiredFactionId1`=0, `RequiredFactionId2`=0, `RequiredFactionValue1`=0, `RequiredFactionValue2`=0 WHERE `Id`=12641;

-- Душа Дракона
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `AIName`, `ScriptName`, `WDBVerified`) VALUES 
(209894, 3, 11020, 'Greater Cache of the Aspects', '', '', '', 94, 0, 2.25, 0, 0, 0, 0, 0, 0, 1634, 209894, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1),
(209895, 3, 11020, 'Greater Cache of the Aspects', '', '', '', 0, 0, 2.25, 0, 0, 0, 0, 0, 0, 1634, 41159, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 85, 0, 0, 0, 0, 1291, 0, 0, 0, 0, 0, 0, '', '', 15595),
(209896, 3, 11020, 'Greater Cache of the Aspects', '', '', '', 94, 0, 2.25, 0, 0, 0, 0, 0, 0, 1634, 209896, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 85, 0, 0, 0, 0, 1291, 0, 0, 0, 0, 0, 0, '', '', 15595),
(209897, 3, 11020, 'Greater Cache of the Aspects', '', '', '', 0, 0, 2.25, 0, 0, 0, 0, 0, 0, 1634, 209897, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 85, 0, 0, 0, 0, 1291, 0, 0, 0, 0, 0, 0, '', '', 15595);
REPLACE INTO `locales_gameobject` (`entry`, `name_loc1`, `name_loc2`, `name_loc3`, `name_loc4`, `name_loc5`, `name_loc6`, `name_loc7`, `name_loc8`, `castbarcaption_loc1`, `castbarcaption_loc2`, `castbarcaption_loc3`, `castbarcaption_loc4`, `castbarcaption_loc5`, `castbarcaption_loc6`, `castbarcaption_loc7`, `castbarcaption_loc8`) VALUES 
(209894, '', '', '', '', '', '', '', 'Большой ларь Аспектов', '', '', '', '', '', '', '', ''),
(209895, '', '', '', '', '', '', '', 'Большой ларь Аспектов', '', '', '', '', '', '', '', ''),
(209896, '', '', '', '', '', '', '', 'Большой ларь Аспектов', '', '', '', '', '', '', '', ''),
(209897, '', '', '', '', '', '', '', 'Большой ларь Аспектов', '', '', '', '', '', '', '', '');
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(209895, 71998, 60, 1, 0, 1, 3),
(209895, 77197, 0, 1, 2, 1, 1),
(209895, 77198, 0, 1, 3, 1, 1),
(209895, 77199, 0, 1, 4, 1, 1),
(209895, 77200, 0, 1, 1, 1, 1),
(209895, 77201, 0, 1, 2, 1, 1),
(209895, 77235, 0, 1, 3, 1, 1),
(209895, 77236, 0, 1, 1, 1, 1),
(209895, 77237, 0, 1, 4, 1, 1),
(209895, 77238, 0, 1, 1, 1, 1),
(209895, 77952, 70, 1, 0, 1, 3),
(209895, 78357, 0, 1, 2, 1, 1),
(209897, 71998, 60, 1, 0, 1, 3),
(209897, 77952, 70, 1, 0, 1, 3),
(209897, 77994, 0, 1, 2, 1, 1),
(209897, 77995, 0, 1, 1, 1, 1),
(209897, 77996, 0, 1, 2, 1, 1),
(209897, 77997, 0, 1, 3, 1, 1),
(209897, 77998, 0, 1, 4, 1, 1),
(209897, 78461, 0, 1, 1, 1, 1),
(209897, 78462, 0, 1, 3, 1, 1),
(209897, 78463, 0, 1, 2, 1, 1),
(209897, 78464, 0, 1, 4, 1, 1),
(209897, 78465, 0, 1, 1, 1, 1);

-- Пещерная мышь / http://ru.wowhead.com/npc=50419
DELETE FROM `creature` WHERE `id`=50419;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(50419, 1, 1, 1, 36357, 0, 5139.56, -2305.21, 1278.55, 2.37691, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 36357, 0, 5142.74, -2309.46, 1278.52, 1.1346, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 36357, 0, 5677.49, -3356.57, 1556.44, 5.20282, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 4960, 0, 5674.64, -3361.7, 1556.44, 3.34411, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 36357, 0, 5658.43, -3368.15, 1556.46, 4.0545, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 4959, 0, 5679.15, -3337.15, 1556.17, 5.14811, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 36357, 0, 5683.9, -3336.3, 1556.44, 3.94494, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 4959, 0, 5623.77, -3291.37, 1568.07, 0.302406, 300, 0, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 36357, 0, 5617.3, -3285.49, 1568.07, 2.80996, 300, 0, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 36357, 0, 5639.71, -3342.28, 1556.44, 0.304428, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 4960, 0, 5657.64, -3257.78, 1568.07, 1.12108, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 4960, 0, 5675.14, -3316.41, 1556.44, 3.8676, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 36357, 0, 5670.58, -3225.97, 1573.46, 0.340716, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 36357, 0, 5682.43, -3282.95, 1583.03, 5.94746, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 36357, 0, 5141.26, -2308.12, 1278.5, 0.23134, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 36357, 0, 5663.79, -3222.91, 1573.43, 4.4772, 300, 0, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 4960, 0, 5718.4, -3241.53, 1582.69, 1.72736, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 4960, 0, 5677.91, -3310.58, 1556.31, 1.25467, 300, 3, 0, 8, 0, 1, 0, 0, 0),
(50419, 1, 1, 1, 4959, 0, 5718.54, -3246.8, 1582.82, 2.53919, 300, 3, 0, 8, 0, 1, 0, 0, 0);

-- Служитель солнца Хелаку / http://ru.wowhead.com/npc=37737
DELETE FROM `npc_trainer` WHERE `entry`=37737;
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES 
(37737, 465, 142, 0, 0, 5), (37737, 20154, 60, 0, 0, 3), (37737, 20271, 60, 0, 0, 3);

-- Клифф Громтар / http://ru.wowhead.com/npc=46377
DELETE FROM `creature` WHERE `id`=46377;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (46377, 0, 1, 1, 35060, 1, -3174.54, -5239.19, 99.4918, 0.994838, 300, 3, 0, 85239, 0, 0, 0, 0, 0);

-- Герцогиня Минкс / http://ru.wowhead.com/npc=32538
DELETE FROM `creature` WHERE `id`=32538;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (32538, 571, 1, 1, 28039, 0, 8566.71, 2722.85, 652.437, 4.4855, 600, 0, 0, 10080, 8814, 0, 0, 0, 0);

-- Гелвас Углешлюз / http://ru.wowhead.com/npc=14828
DELETE FROM `creature` WHERE `id`=14828 and `map`!=974;

-- Сильвана / http://ru.wowhead.com/npc=10181
DELETE FROM `creature` WHERE `id`=10181;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (10181, 0, 1, 1, 0, 10181, 1289.6, 312.974, -57.3209, 1.69281, 300, 0, 0, 6371505, 315092, 0, 0, 0, 0);

-- Донни Антания / http://ru.wowhead.com/npc=6367
DELETE FROM `creature` WHERE `id`=6367;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (6367, 0, 1, 1, 0, 0, -9176.5, 0.704102, 80.4761, 5.79449, 180, 0, 0, 102, 0, 0, 0, 0, 0);

-- Элизабет Росс / http://ru.wowhead.com/npc=28776
DELETE FROM `creature` WHERE `id`=28776;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (28776, 571, 1, 1, 25674, 0, 5762.86, 628.569, 650.175, 4.03171, 600, 0, 0, 10635, 0, 0, 0, 0, 0);

-- Олень Тирисфальских лесов / http://ru.wowhead.com/npc=51961
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `equipment_id`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (51961, 0, 0, 0, 0, 0, 23952, 0, 0, 0, 'Tirisfal Stag', '', '', 0, 80, 82, 3, 2000, 2000, 0, 0.8, 1.14286, 1, 0, 452, 678, 0, 169, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 362, 542, 135, 1, 0, 51961, 0, 51961, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 15595);

REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(19, 0, 8752, 0, 0, 8, 0, 8747, 0, 0, 1, 0, 0, '', NULL),
(19, 0, 8752, 0, 0, 8, 0, 8757, 0, 0, 1, 0, 0, '', NULL),
(19, 0, 8757, 0, 0, 0, 0, 8752, 0, 0, 1, 0, 0, '', NULL),
(19, 0, 8757, 0, 0, 0, 0, 8747, 0, 0, 1, 0, 0, '', NULL),
(19, 0, 8747, 0, 0, 0, 0, 8752, 0, 0, 1, 0, 0, '', NULL),
(19, 0, 8747, 0, 0, 0, 0, 8757, 0, 0, 1, 0, 0, '', NULL);

-- Калесгос / http://ru.wowhead.com/npc=53009
DELETE FROM `creature` WHERE `id` in (53009, 53149);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(53009, 571, 1, 1, 0, 0, 3546.56, 5882.51, 143.915, 1.18275, 300, 0, 0, 77490, 0, 0, 0, 0, 0),
(53149, 571, 1, 1, 0, 0, 3956.35, 6770.45, 153.565, 0.868587, 300, 0, 0, 77490, 0, 0, 0, 0, 0);

-- Телепортация: Оргриммар / http://ru.wowhead.com/spell=3567
REPLACE INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES (3567, 1, 1776.5, -4338.8, -7.48, 3.54718);

-- Клинковый полный шлем завоевателя / http://ru.wowhead.com/item=46125
UPDATE `item_template` SET `displayid`=97877 WHERE `entry`=46125;

-- Пища, отнятая у врага / http://ru.wowhead.com/quest=27750
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `AIName`, `ScriptName`, `WDBVerified`) VALUES 
(206289, 3, 10034, 'Wildhammer Food Stores', '', 'Gathering', '', 0, 4, 1, 62324, 0, 0, 0, 0, 0, 93, 206289, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24982, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595),
(206290, 3, 224, 'Wildhammer Food Stores', '', 'Gathering', '', 0, 4, 1, 62324, 0, 0, 0, 0, 0, 43, 206290, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24982, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595),
(206291, 3, 229, 'Wildhammer Food Stores', '', 'Gathering', '', 0, 4, 1, 62324, 0, 0, 0, 0, 0, 43, 206291, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24982, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);
REPLACE INTO `locales_gameobject` (`entry`, `name_loc1`, `name_loc2`, `name_loc3`, `name_loc4`, `name_loc5`, `name_loc6`, `name_loc7`, `name_loc8`, `castbarcaption_loc1`, `castbarcaption_loc2`, `castbarcaption_loc3`, `castbarcaption_loc4`, `castbarcaption_loc5`, `castbarcaption_loc6`, `castbarcaption_loc7`, `castbarcaption_loc8`) VALUES 
(206289, '', '', '', '', '', '', '', 'Съестные припасы Громового Молота', '', '', '', '', '', '', '', 'Сбор'),
(206290, '', '', '', '', '', '', '', 'Съестные припасы Громового Молота', '', '', '', '', '', '', '', 'Сбор'),
(206291, '', '', '', '', '', '', '', 'Съестные припасы Громового Молота', '', '', '', '', '', '', '', 'Сбор');
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(206289, 62324, -100, 1, 0, 1, 1), (206290, 62324, -100, 1, 0, 1, 1), (206291, 62324, -100, 1, 0, 1, 1);
DELETE FROM `gameobject` WHERE `id` in (206291, 206290, 206289);
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(206289, 0, 1, 1, -3665.98, -4799.57, 86.2955, 0, 0, 0, 0, 1, 300, 100, 1),
(206289, 0, 1, 1, -3582.19, -4841.37, 91.2892, 0, 0, 0, 0, 1, 300, 100, 1),
(206289, 0, 1, 1, -3682.36, -4812.49, 85.814, 0, 0, 0, 0, 1, 300, 100, 1),
(206289, 0, 1, 1, -3311.7, -4850.23, 117.153, -2.25147, 0, 0, -0.902585, 0.430512, 300, 100, 1),
(206289, 0, 1, 1, -3318.36, -4881.84, 114.69, 0, 0, 0, 0, 1, 300, 100, 1),
(206289, 0, 1, 1, -3438.21, -5033.19, 70.5377, 0, 0, 0, 0, 1, 300, 100, 1),
(206289, 0, 1, 1, -3486.84, -5020.13, 73.327, 0, 0, 0, 0, 1, 300, 100, 1),
(206289, 0, 1, 1, -3343.77, -4836.41, 113.725, 0, 0, 0, 0, 1, 300, 100, 1),
(206289, 0, 1, 1, -3290.83, -5172.33, 85.7886, 0, 0, 0, 0, 1, 300, 100, 1),
(206289, 0, 1, 1, -3469.62, -4849.96, 93.4663, 0.698131, 0, 0, 0.34202, 0.939693, 300, 100, 1),
(206289, 0, 1, 1, -3469.15, -4811.83, 83.0166, 0, 0, 0, 0, 1, 300, 100, 1),
(206289, 0, 1, 1, -3318.95, -5151.6, 82.3733, -0.575958, 0, 0, -0.284015, 0.95882, 300, 100, 1),
(206289, 0, 1, 1, -3136.9, -5204.48, 106.41, 2.04203, 0, 0, 0.85264, 0.522499, 300, 100, 1),
(206289, 0, 1, 1, -3302.51, -5131.45, 72.035, -1.01229, 0, 0, -0.484809, 0.87462, 300, 100, 1),
(206289, 0, 1, 1, -3480.32, -4868.35, 93.8301, 0, 0, 0, 0, 1, 300, 100, 1),
(206290, 0, 1, 1, -3577.51, -4843.28, 88.2505, 0, 0, 0, 0, 1, 300, 100, 1),
(206290, 0, 1, 1, -3656.93, -4815.16, 81.6233, 1.67551, 0, 0, 0.743144, 0.669132, 300, 100, 1),
(206290, 0, 1, 1, -3678.6, -4810.5, 80.954, 0, 0, 0, 0, 1, 300, 100, 1),
(206290, 0, 1, 1, -3300.23, -4866.09, 111.098, 0.663223, 0, 0, 0.325567, 0.945519, 300, 100, 1),
(206290, 0, 1, 1, -3317.95, -4866.21, 111.581, -2.80997, 0, 0, -0.986285, 0.16505, 300, 100, 1),
(206290, 0, 1, 1, -3331.7, -5121.73, 79.8446, -2.28638, 0, 0, -0.909961, 0.414694, 300, 100, 1),
(206290, 0, 1, 1, -3351.65, -5120.29, 81.4283, -2.68781, 0, 0, -0.97437, 0.224951, 300, 100, 1),
(206290, 0, 1, 1, -3465.08, -4989.73, 66.7655, 0, 0, 0, 0, 1, 300, 100, 1),
(206290, 0, 1, 1, -3489.96, -5014.7, 69.314, 0, 0, 0, 0, 1, 300, 100, 1),
(206290, 0, 1, 1, -3451.97, -4860.44, 92.4906, -0.977383, 0, 0, -0.469471, 0.882948, 300, 100, 1),
(206290, 0, 1, 1, -3480.55, -4816.71, 78.4982, -0.575958, 0, 0, -0.284015, 0.95882, 300, 100, 1),
(206290, 0, 1, 1, -3166.61, -5157.46, 111.242, 0.436331, 0, 0, 0.216439, 0.976296, 300, 100, 1),
(206290, 0, 1, 1, -3121.22, -5182.07, 91.4309, 2.68781, 0, 0, 0.97437, 0.224951, 300, 100, 1),
(206290, 0, 1, 1, -3185.49, -5199.44, 101.588, -0.715584, 0, 0, -0.350207, 0.936672, 300, 100, 1),
(206290, 0, 1, 1, -3320.12, -5176.47, 79.8699, 3.03685, 0, 0, 0.998629, 0.0523535, 300, 100, 1),
(206290, 0, 1, 1, -3297.81, -5117.53, 67.4239, -0.750491, 0, 0, -0.366501, 0.930418, 300, 100, 1),
(206290, 0, 1, 1, -3472.78, -5035.45, 67.3594, 2.19912, 0, 0, 0.891007, 0.453991, 300, 100, 1),
(206291, 0, 1, 1, -3663.46, -4794.91, 82.784, -1.46608, 0, 0, -0.66913, 0.743145, 300, 100, 1),
(206291, 0, 1, 1, -3667.72, -4817.02, 81.8979, -1.25664, 0, 0, -0.587785, 0.809017, 300, 100, 1),
(206291, 0, 1, 1, -3596.61, -4852.96, 88.6355, -1.25664, 0, 0, -0.587785, 0.809017, 300, 100, 1),
(206291, 0, 1, 1, -3468.07, -4990.96, 68.3095, -1.25664, 0, 0, -0.587785, 0.809017, 300, 100, 1),
(206291, 0, 1, 1, -3338.76, -5147.13, 80.3789, -0.296705, 0, 0, -0.147809, 0.989016, 300, 100, 1),
(206291, 0, 1, 1, -3318.76, -4842.62, 112.58, -1.25664, 0, 0, -0.587785, 0.809017, 300, 100, 1),
(206291, 0, 1, 1, -3452.68, -5010.44, 68.2943, -1.25664, 0, 0, -0.587785, 0.809017, 300, 100, 1),
(206291, 0, 1, 1, -3484.4, -5029.44, 69.314, -0.593413, 0, 0, -0.292372, 0.956305, 300, 100, 1),
(206291, 0, 1, 1, -3333.64, -4849.23, 110.577, -2.74016, 0, 0, -0.979924, 0.19937, 300, 100, 1),
(206291, 0, 1, 1, -3335.64, -5113.22, 81.3807, -1.97222, 0, 0, -0.833885, 0.551938, 300, 100, 1),
(206291, 0, 1, 1, -3479.17, -4874.05, 89.8647, -0.0698118, 0, 0, -0.0348988, 0.999391, 300, 100, 1),
(206291, 0, 1, 1, -3476.51, -4857.07, 89.5042, -0.122173, 0, 0, -0.0610485, 0.998135, 300, 100, 1),
(206291, 0, 1, 1, -3138.96, -5219.11, 100.041, 2.68781, 0, 0, 0.97437, 0.224951, 300, 100, 1),
(206291, 0, 1, 1, -3124.08, -5166.43, 91.3482, -1.62316, 0, 0, -0.725374, 0.688355, 300, 100, 1),
(206291, 0, 1, 1, -3132.09, -5240.16, 99.4601, 1.25664, 0, 0, 0.587785, 0.809017, 300, 100, 1),
(206291, 0, 1, 1, -3290.55, -5162.99, 83.4236, -2.77506, 0, 0, -0.983254, 0.182238, 300, 100, 1),
(206291, 0, 1, 1, -3291.89, -5110.87, 67.4195, 2.65289, 0, 0, 0.970295, 0.241925, 300, 100, 1),
(206291, 0, 1, 1, -3472.48, -4807.11, 78.5011, -2.46091, 0, 0, -0.942641, 0.333807, 300, 100, 1);

-- Наживка для грифона / http://ru.wowhead.com/quest=28041
DELETE FROM `creature` WHERE `id`=46158;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(46158, 0, 1, 1, 1148, 0, -3691.6, -5675.34, 27.2122, 4.75583, 300, 3, 0, 70946, 0, 1, 0, 0, 0),
(46158, 0, 1, 1, 1148, 0, -3710.35, -5509.12, 38.9873, 1.40404, 300, 3, 0, 70946, 0, 1, 0, 0, 0);

-- Lady Deathwhisper / http://www.wowhead.com/npc=36855
DELETE FROM `creature` WHERE `id`=36855;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (36855, 631, 15, 1, 0, 0, -634.691, 2211.39, 51.9808, 0.034907, 604800, 0, 0, 3346800, 13992000, 0, 0, 0, 0);

-- ORATORY OF THE DAMNED
UPDATE `creature` SET `MovementType`=0 WHERE `id` in (36808, 36807, 36805, 36844, 36811, 37948, 37947, 36829, 37947, 37744);
UPDATE `creature_template` SET `flags_extra`=128 WHERE  `entry`=37744;

-- Teleport (hack)
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (573340, 0, 0, 0, 0, 0, 10045, 0, 0, 0, 'Saurfang\'s trigger', '', '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 1);
DELETE FROM `smart_scripts` WHERE `entryorguid`=573340;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (573340, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 500, 1000, 11, 70859, 0, 0, 0, 0, 0, 18, 3, 0, 0, 0, 0, 0, 0, "Teleport (hack)");
DELETE FROM `creature` WHERE `id`=573340;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (573340, 631, 15, 1, 0, 0, -458.321, 2211.27, 541.114, 0.0339088, 300, 0, 0, 41, 60, 0, 0, 0, 0);

-- http://ru.wowhead.com/npc=51663 / http://ru.wowhead.com/npc=51662 / http://ru.wowhead.com/npc=51661
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(51661, 0, 0, 0, 0, 0, 10133, 0, 0, 0, 'Tsul\'Kalu', '', '', 65535, 28, 28, 0, 189, 189, 0, 1.14286, 1, 1, 4, 0, 0, 0, 0, 1, 2000, 2000, 2, 64, 2048, 0, 9, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 51661, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 2, 2, 1, 0, 57990, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 16048),
(51662, 0, 0, 0, 0, 0, 37613, 0, 0, 0, 'Mahamba', '', '', 65535, 28, 28, 0, 189, 189, 0, 1, 1, 1, 4, 0, 0, 0, 0, 1, 2000, 2000, 2, 64, 2048, 0, 6, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 51662, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 2, 2, 1, 0, 57990, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 16048),
(51663, 0, 0, 0, 0, 0, 37615, 0, 0, 0, 'Pogeyan', '', '', 65535, 85, 85, 0, 3, 3, 0, 1, 1.14286, 1, 4, 0, 0, 0, 0, 1, 2000, 2000, 1, 8, 2048, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 51663, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 2, 2, 1, 0, 57990, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 16048);
REPLACE INTO `locales_creature` (`entry`, `name_loc1`, `name_loc2`, `name_loc3`, `name_loc4`, `name_loc5`, `name_loc6`, `name_loc7`, `name_loc8`, `subname_loc1`, `subname_loc2`, `subname_loc3`, `subname_loc4`, `subname_loc5`, `subname_loc6`, `subname_loc7`, `subname_loc8`) VALUES 
(51661, '', '', '', '', '', '', '', 'Тсул\'Калу', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Дух земли'),
(51662, '', '', '', '', '', '', '', 'Махамба', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Дух воды'),
(51663, '', '', '', '', '', '', '', 'Погеан', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Дух огня');
DELETE FROM `creature` WHERE `id` in (51663, 51662, 51661);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(51661, 0, 1, 1, 10133, 0, -11887, -185.924, 17.8688, 3.80383, 28800, 3, 0, 1464, 1512, 1, 0, 0, 0),
(51662, 0, 1, 1, 37613, 0, -11858.7, -470.909, 12.8289, 0.267904, 28800, 3, 0, 1464, 1512, 1, 0, 0, 0),
(51663, 0, 1, 1, 37615, 0, -11801.9, 255.149, 14.3333, 0.342761, 28800, 3, 0, 1464, 1512, 1, 0, 0, 0);

-- Лахра / http://ru.wowhead.com/npc=14846
DELETE FROM `npc_vendor` WHERE `entry`=14846;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `type`) VALUES 
(14846, 0, 72140, 0, 0, 3701, 1),
(14846, 0, 73762, 0, 0, 3700, 1),
(14846, 0, 73764, 0, 0, 3700, 1),
(14846, 0, 73765, 0, 0, 3700, 1),
(14846, 0, 73766, 0, 0, 3701, 1),
(14846, 0, 73903, 0, 0, 3700, 1),
(14846, 0, 73905, 0, 0, 3700, 1),
(14846, 0, 74981, 0, 0, 3700, 1);

-- Геззарак Охотница / http://ru.wowhead.com/npc=23163
UPDATE `creature_template` SET `type_flags`=1 WHERE `entry`=23163;

-- Шахтерский мешок / http://ru.wowhead.com/item=30746
DELETE FROM `npc_vendor` WHERE `item`=30746;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `type`) VALUES 
(372, 0, 30746, 0, 0, 0, 1),
(790, 0, 30746, 0, 0, 0, 1),
(1321, 0, 30746, 0, 0, 0, 1),
(3002, 0, 30746, 0, 0, 0, 1),
(3133, 0, 30746, 0, 0, 0, 1),
(3167, 0, 30746, 0, 0, 0, 1),
(3358, 0, 30746, 0, 0, 0, 1),
(3369, 0, 30746, 0, 0, 0, 1),
(4230, 0, 30746, 0, 0, 0, 1),
(4256, 0, 30746, 0, 0, 0, 1),
(4590, 0, 30746, 0, 0, 0, 1),
(4599, 0, 30746, 0, 0, 0, 1),
(5132, 0, 30746, 0, 0, 0, 1),
(5514, 0, 30746, 0, 0, 0, 1),
(8364, 0, 30746, 0, 0, 0, 1),
(11186, 0, 30746, 0, 0, 0, 1),
(16602, 0, 30746, 1, 3600, 0, 1),
(16664, 0, 30746, 0, 0, 0, 1),
(16690, 0, 30746, 0, 0, 0, 1),
(16709, 0, 30746, 0, 0, 0, 1),
(16751, 0, 30746, 0, 0, 0, 1),
(18906, 0, 30746, 1, 3600, 0, 1),
(19053, 0, 30746, 1, 3600, 0, 1),
(19197, 0, 30746, 0, 0, 0, 1),
(20981, 0, 30746, 0, 0, 0, 1),
(28728, 0, 30746, 0, 0, 0, 1),
(33640, 0, 30746, 0, 0, 0, 1),
(33682, 0, 30746, 0, 0, 0, 1),
(44005, 0, 30746, 0, 0, 0, 1),
(46358, 0, 30746, 0, 0, 0, 1),
(48090, 0, 30746, 0, 0, 0, 1),
(48858, 0, 30746, 0, 0, 0, 1),
(49702, 0, 30746, 0, 0, 0, 1),
(50460, 0, 30746, 0, 0, 0, 1),
(52643, 0, 30746, 0, 0, 0, 1),
(53421, 0, 30746, 0, 0, 0, 1),
(53409, 0, 30746, 0, 0, 0, 1);

-- Переобутый Лу / http://ru.wowhead.com/npc=42405
DELETE FROM `creature` WHERE `id`=42405;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (42405, 0, 1, 65534, 0, 0, -9844.97, 1277.53, 41.1596, 5.52406, 600, 0, 0, 42, 0, 0, 0, 0, 0);

-- Древние с нами / http://ru.wowhead.com/quest=25653
REPLACE INTO `quest_template` (`Id`, `Method`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) values('25653','2','81','80','0','616','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','25928','0','0','25597','5','7800','16500','0','0','0','0','0','0','0','0','0','136','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1158','0','0','0','0','7','0','0','0','0','0','0','0','0','0','0','0','0','0','The Ancients are With Us','Return to Ysera at Nordrassil in Mount Hyjal.','Nemesis... destroyed.$B$BI feel rejuvenated.$BPowerful.$BAwakened.$B$BTell Ysera my strength is hers.$B$BThe Twilight\'s Hammer will fall.','Return to Ysera at Nordrassil.',NULL,NULL,NULL,'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',NULL,NULL,NULL,NULL,'890','878','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1');

-- Когда остается единственный выход... (А/О)
UPDATE `quest_template` SET `RequiredRaces`=18875469 WHERE `Id`=12862;
UPDATE `quest_template` SET `RequiredRaces`=33555378 WHERE `Id`=13060;
UPDATE `creature_template` SET `VehicleId`=1598, `AIName`='SmartAI', `speed_run`=10, `speed_walk`=10 WHERE `entry` in (30487, 30477);
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (30487, 46598, 1, 0), (30477, 46598, 1, 0);
DELETE FROM `smart_scripts` WHERE `entryorguid` in (30487, 30477);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(30487, 0, 0, 0, 27, 0, 100, 0, 5000, 5000, 0, 0, 53, 0, 30487, 0, 12862, 600000, 0, 1, 0, 0, 0, 0, 0, 0, 0, "D16 Propelled Delivery Device"),
(30477, 0, 0, 0, 27, 0, 100, 0, 5000, 5000, 0, 0, 53, 0, 30477, 0, 13060, 600000, 0, 1, 0, 0, 0, 0, 0, 0, 0, "D16 Propelled Delivery Device");
DELETE FROM `waypoints` WHERE `entry` in (30487, 30477);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(30477, 1, 6403.5, -1034.47, 514.895, 'D16 Propelled Delivery Device'),
(30477, 2, 6515.71, -1175.93, 691.633, 'D16 Propelled Delivery Device'),
(30477, 3, 6577.75, 1177.57, 752.238, 'D16 Propelled Delivery Device'),
(30477, 4, 6669.56, -1118.74, 836.206, 'D16 Propelled Delivery Device'),
(30477, 5, 6977.46, -1065.06, 977.284, 'D16 Propelled Delivery Device'),
(30477, 6, 7728.83, -955.302, 1147.87, 'D16 Propelled Delivery Device'),
(30477, 7, 7867.09, -737.926, 1176.12, 'D16 Propelled Delivery Device'),
(30487, 1, 6356.52, -875.001, 489.99, 'D16 Propelled Delivery Device'),
(30487, 2, 6490.39, -705.961, 762.106, 'D16 Propelled Delivery Device'),
(30487, 3, 6476.53, -545.968, 876.673, 'D16 Propelled Delivery Device'),
(30487, 4, 6594.75, -344.923, 1016.14, 'D16 Propelled Delivery Device'),
(30487, 5, 6671.71, -227.414, 945.472, 'D16 Propelled Delivery Device');

DELETE FROM `gameobject` WHERE `id` in (209894, 209895, 209896, 209897);
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(209894, 967, 1, 65535, -12075.2, 12168.2, -2.56926, 3.57793, 0, 0, -0.976295, 0.216442, 604800, 100, 1),
(209895, 967, 2, 65535, -12075.2, 12168.2, -2.56926, 3.57793, 0, 0, -0.976295, 0.216442, 604800, 100, 1),
(209896, 967, 4, 65535, -12075.2, 12168.2, -2.56926, 3.57793, 0, 0, -0.976295, 0.216442, 604800, 100, 1),
(209897, 967, 8, 65535, -12075.2, 12168.2, -2.56926, 3.57793, 0, 0, -0.976295, 0.216442, 604800, 100, 1);