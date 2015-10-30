REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(194423, 45121, -100, 1, 0, 1, 1);
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(194424, 45122, -100, 1, 0, 1, 1);



UPDATE `creature_template` SET `type_flags`='0' WHERE (`entry`='21795');
UPDATE `creature_template` SET `unit_flags`='0' WHERE (`entry`='21795');
UPDATE `creature_template` SET `dynamicflags`='0' WHERE (`entry`='21795');
UPDATE `creature_template` SET `faction_A`='15', `faction_H`='15' WHERE (`entry`='21795');
UPDATE `quest_template` SET `SpecialFlags`='1' WHERE (`id`='10419');

REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (18, 33842, 63791, 0, 0, 8, 0, 13668, 0, 0, 0, 0, 0, '', 'Required quest rewarded for spellclick');

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (33842, 0, 0, 0, 0, 0, 28889, 0, 0, 0, 'Stabled Sunreaver Hawkstrider', '', 'vehichleCursor', 0, 80, 80, 2, 0, 1, 1.38571, 1, 0, 422, 586, 0, 642, 1, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 345, 509, 103, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62544, 62575, 62960, 62552, 0, 62863, 0, 0, 0, 349, 0, 0, '', 0, 3, 0, 3.96825, 1, 1, 0, 0, 0, 0, 0, 0, 0, 164, 1, 0, 0, '');


REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (33843, 0, 0, 0, 0, 0, 28888, 0, 0, 0, 'Stabled Quel\'dorei Steed', '', 'vehichleCursor', 0, 80, 80, 2, 0, 1, 1.28968, 1, 0, 422, 586, 0, 642, 1, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 345, 509, 103, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62544, 62575, 62960, 62552, 0, 62863, 0, 0, 0, 349, 0, 0, '', 0, 3, 0, 3.96825, 1, 1, 0, 0, 0, 0, 0, 0, 0, 164, 1, 0, 0, '');


DELETE FROM `creature` WHERE `id`=33842;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(226881, 33842, 571, 0, 0, 1, 1, 28889, 0, 8487.8, 906.394, 547.376, 2.6529, 180, 0, 0, 1, 0, 0, 0, 0, 0),
(226882, 33842, 571, 0, 0, 1, 1, 28889, 0, 8591.69, 938.752, 548.816, 4.74729, 180, 0, 0, 1, 0, 0, 0, 0, 0),
(226883, 33842, 571, 0, 0, 1, 1, 28889, 0, 8437.67, 700.928, 547.638, 4.08407, 180, 0, 0, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=33843;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(226877, 33843, 571, 0, 0, 1, 1, 28888, 0, 8485.86, 900.354, 547.376, 3.19395, 180, 0, 0, 1, 0, 0, 0, 0, 0),
(226878, 33843, 571, 0, 0, 1, 1, 28888, 0, 8596.26, 938.714, 548.823, 4.57276, 180, 0, 0, 1, 0, 0, 0, 0, 0),
(226879, 33843, 571, 0, 0, 1, 1, 28888, 0, 8575.42, 682.151, 547.456, 5.58505, 180, 0, 0, 1, 0, 0, 0, 0, 0);




UPDATE `creature_template` SET `ScriptName` = 'npc_eye_of_acherus' WHERE `entry` = '28511';

DELETE FROM `gameobject` WHERE `id`=300009;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(42560, 300009, 571, 0, 0, 1, 1, 4606.72, -1606.91, 156.659, 1.62734, 0, 0, 0.726811, 0.686837, 300, 0, 1),
(42562, 300009, 571, 0, 0, 1, 1, 4596.78, -1606.69, 156.659, 1.5488, 0, 0, 0.699286, 0.714842, 300, 0, 1),
(46016, 300009, 571, 0, 0, 1, 1, 4597.1, -1594.08, 156.658, 1.53702, 0, 0, 0.695063, 0.718949, 300, 0, 1),
(47286, 300009, 571, 0, 0, 1, 1, 4608.33, -1592.98, 156.658, 0.162569, 0, 0, 0.0811951, 0.996698, 300, 0, 1),
(47287, 300009, 571, 0, 0, 1, 1, 4602.78, -1600.05, 156.658, 4.08564, 0, 0, 0.890651, -0.454688, 300, 0, 1);

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

UPDATE `creature_template` SET `InhabitType`=4, `hoverheight`=20, `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=33273;
-- Set visual effect: sitting
DELETE FROM `creature_template_addon` WHERE `entry`=33273;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`,`bytes2`,`emote`, `auras`) VALUES (33273,0,0,1,1,0,0);



-- Winter Hyacinth (item 45000) Send Script Event (20990) by right-click
DELETE FROM `event_scripts` WHERE `id`=20990;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
(20990, 0, 10, 33273, 42000, 4602.977, 0, -1600.141, 156.7834, 0.7504916);

REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `AIName`, `ScriptName`) VALUES (206195, 22, 7490, 'Thundermar Ale Keg', '', '', '', 0, 0, 0.85, 0, 0, 0, 0, 0, 0, 86855, 0, 0, 0, 0, 10736, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '');


-- Громораан Искатель Ветра / http://ru.wowhead.com/quest=7786
-- loot
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-4 WHERE `entry`=12056 AND `item`=18563;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-4 WHERE `entry`=12057 AND `item`=18564;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-100 WHERE `entry`=11502 AND `item`=19017;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=100 WHERE  `entry`=14435 AND `item`=19018;
-- boss
DELETE FROM `creature` WHERE `id`=14435;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(999492, 14435, 1, 0, 0, 1, 2, 0, 0, -6237.06, 1718.68, 4.30388, 0.758073, 300, 0, 0, 333100, 0, 0, 0, 0, 0);



 REPLACE INTO `phase_definitions` (`zoneId`, `entry`, `phasemask`, `phaseId`, `originmap`, `terrainswapmap`, `flags`, `comment`) values('1377','1','3','0','0','0','0','Silithus - Quest Boss Phase');


REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(23, 1377, 1, 0, 0, 8, 0, 7786, 0, 0, 0, 0, 0, '', 'Phase Condition: Silithus - Quest Boss Phase'),
(23, 1377, 1, 0, 1, 14, 0, 7787, 0, 0, 1, 0, 0, '', 'Phase Condition: Silithus - Quest Boss Phase');

-- Дизликс Сребросвищ / http://ru.wowhead.com/npc=40358
DELETE FROM `creature` WHERE `id`=40358;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(88385, 40358, 1, 0, 0, 1, 1, 1233, 0, -4568.4, -3223.19, 34.9894, 5.35816, 300, 0, 0, 232470, 0, 0, 0, 0, 0);


-- Эскиз: насыщенный изумруд грез / http://ru.wowhead.com/item=68742
REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `delay`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `flagsCustom`) VALUES (68741, 3, 4, 'Vivid Dream Emerald', 79077, 3, 0, 8192, 1, 150000, 37500, 0, -1, -1, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 'Matches a Blue or Yellow Socket.', 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 512, 0, 0, 0, 0, 0, 0, 0, 0, 1855, 0, 0, 0, 0, 0);

-- Ученица Нельфи, Темный следопыт Ворель
DELETE FROM `creature` WHERE `id`=37776;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(218651, 37776, 571, 0, 0, 1, 1, 0, 0, 5669.74, 680.798, 651.987, 5.82387, 300, 0, 0, 60480, 17628, 2, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=37780;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(195053, 37780, 571, 0, 0, 1, 1, 0, 0, 5939.18, 618.325, 650.585, 2.1914, 300, 0, 0, 75600, 0, 0, 0, 0, 0);


-- Арканитовый жезл
DELETE FROM `npc_trainer` WHERE `entry` in (3345, 1317) AND `spell`=20051;
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES
(1317, 20051, 15000, 333, 290, 0),
(3345, 20051, 15000, 333, 290, 0);