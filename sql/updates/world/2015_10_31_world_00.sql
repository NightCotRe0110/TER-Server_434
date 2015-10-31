insert  into `spell_area`(`spell`,`area`,`quest_start`,`quest_start_active`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`,`quest_start_status`,`quest_end_status`) values (80653,5495,0,0,0,0,64,2,1,64,11);

UPDATE `creature_template` SET `unit_flags` = 770 WHERE `entry` = 47250;
UPDATE `creature_template` SET `unit_flags` = 33666 WHERE `entry` = 46268;

UPDATE `gameobject` SET `phaseMask` = 2 WHERE `id`=195201;

DELETE FROM `creature` WHERE `id`=36103;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(240341, 36103, 648, 0, 0, 1, 2, 0, 0, 869.755, 3337.36, 7.86488, 4.92183, 90, 5, 0, 1, 0, 1, 0, 0, 0),
(240320, 36103, 648, 0, 0, 1, 2, 0, 0, 871.045, 3313.51, 10.67, 5.49779, 90, 5, 0, 1, 0, 1, 0, 0, 0),
(240315, 36103, 648, 0, 0, 1, 2, 0, 0, 915.21, 3292.09, 12.0413, 5.77704, 90, 5, 0, 1, 0, 1, 0, 0, 0),
(240310, 36103, 648, 0, 0, 1, 2, 0, 0, 915.17, 3265.25, 14.5414, 0.0698132, 90, 5, 0, 1, 0, 1, 0, 0, 0),
(240307, 36103, 648, 0, 0, 1, 2, 0, 0, 851.427, 3296.82, 12.0335, 6.10865, 90, 5, 0, 1, 0, 1, 0, 0, 0),
(240305, 36103, 648, 0, 0, 1, 2, 0, 0, 888.474, 3296.27, 11.7876, 0.0523599, 90, 5, 0, 1, 0, 1, 0, 0, 0),
(240304, 36103, 648, 0, 0, 1, 2, 0, 0, 914.891, 3327.15, 8.45568, 4.62512, 90, 5, 0, 1, 0, 1, 0, 0, 0),
(240303, 36103, 648, 0, 0, 1, 2, 0, 0, 890.427, 3271.21, 13.6715, 0.261799, 90, 5, 0, 1, 0, 1, 0, 0, 0),
(240299, 36103, 648, 0, 0, 1, 2, 0, 0, 953.219, 3327.65, 2.35126, 3.80482, 90, 5, 0, 1, 0, 1, 0, 0, 0),
(240298, 36103, 648, 0, 0, 1, 2, 0, 0, 942.915, 3271.6, 17.5481, 6.23082, 90, 5, 0, 1, 0, 1, 0, 0, 0),
(240297, 36103, 648, 0, 0, 1, 2, 0, 0, 942.878, 3275.29, 17.0352, 1.0492, 90, 5, 0, 1, 0, 1, 0, 0, 0),
(240296, 36103, 648, 0, 0, 1, 2, 0, 0, 943.266, 3278.93, 16.7576, 5.77704, 90, 5, 0, 1, 0, 1, 0, 0, 0),
(240295, 36103, 648, 0, 0, 1, 2, 0, 0, 943.193, 3268.65, 18.0313, 0.261799, 90, 5, 0, 1, 0, 1, 0, 0, 0),
(240294, 36103, 648, 0, 0, 1, 2, 0, 0, 942.93, 3276.77, 16.9444, 6.03884, 90, 0, 5, 1, 0, 1, 0, 0, 0),
(240293, 36103, 648, 0, 0, 1, 2, 0, 0, 944.88, 3266.03, 19.0167, 0.541052, 90, 0, 5, 1, 0, 1, 0, 0, 0);

UPDATE `creature_template` SET `InhabitType` = 7 WHERE `entry` = 39074;


DELETE FROM `gameobject` WHERE `id`=201938;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(57618, 201938, 648, 0, 0, 1, 1, 913.625, 2329.86, 11.2378, 2.65289, 0, 0, 0, 1, 120, 255, 1);


DELETE FROM `gameobject` WHERE `id`=202166;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(57529, 202166, 648, 0, 0, 1, 1, 915.075, 2328.73, 4.99332, 0.898844, 0, 0, 0, 1, 120, 255, 1);



UPDATE `creature_template` SET `unit_flags` = 512 WHERE `entry` = 38518;
UPDATE `creature_template` SET `unit_flags` = 902, `dynamicflags` = 0 WHERE `entry` = 385310;

UPDATE `gameobject` SET `phaseMask` = 2048 WHERE `phaseMask` = 6144;
UPDATE `creature_template` SET `InhabitType` = 2 WHERE `entry` = 36681;
UPDATE `quest_template` SET `Flags` = 0 WHERE `Flags` = 786432;
UPDATE `quest_template` SET `Flags` = 0 WHERE `Flags` = 524296;
UPDATE `quest_template` SET `Flags` = 0 WHERE `Flags` = 524288;

DELETE FROM `creature` WHERE `id`=385310;

-- Gobber SAI
SET @ENTRY := 38746;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,200,0,64,0,100,0,0,0,0,0,10,1,3,5,6,0,0,1,0,0,0,0,0,0,0,"on gossip set emote"),
(@ENTRY,0,201,0,8,0,100,0,73583,0,0,0,33,38746,0,0,0,0,0,7,0,0,0,0,0,0,0,"Spellhit get killcredit"),
(@ENTRY,0,202,0,8,0,100,1,73583,0,0,0,85,73612,4,0,0,0,0,0,0,0,0,0,0,0,0,"Gobber friend");

-- Izzy SAI
SET @ENTRY := 38647;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,24925,0,0,0,28,66987,0,0,0,0,0,7,0,0,0,0,0,0,0,"remove helmet"),
(@ENTRY,0,1,2,19,0,100,0,24937,0,0,0,62,648,0,0,0,0,0,7,0,0,0,928.741,2344.02,5.534,1.78,"tele"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,85,59073,1,0,0,0,0,1,0,0,0,0,0,0,0,"tele"),
(@ENTRY,0,3,0,8,0,100,0,73583,0,0,0,33,38647,0,0,0,0,0,7,0,0,0,0,0,0,0,"Spellhit get killcredit");



UPDATE `quest_template` SET `RequiredNpcOrGoCount1` = 10, `RequiredSourceItemId1` = 0, `RequiredSourceItemCount1` = 0 WHERE `Id` = 24942;


UPDATE `creature_template` SET `minlevel`=15, `maxlevel`=15, `faction_A`=2159, `faction_H`=2159, `npcflag`=2, `speed_walk`=1.142857, `speed_run`=1, `baseattacktime`=2000, `rangeattacktime`=2000, `HoverHeight`=1 WHERE `entry`=35086; -- Labor Captain Grabbit

	UPDATE `quest_template` SET `PrevQuestId` = 0, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestIdChain` = 0 WHERE `Id` = 14129;
	REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`) VALUES ('19', '14129', '8', '28496');
	REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`) VALUES ('19', '14129', '8', '25275');
	REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`) VALUES ('20', '14129', '8', '28496');
	REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`) VALUES ('20', '14129', '8', '25275');
	-- The Captain's Logs (14134)
	UPDATE `quest_template` SET `PrevQuestId` = 14129, `NextQuestId` = 0, `ExclusiveGroup` = 0, `NextQuestIdChain` = 0 WHERE `Id` = 14134;
	
	UPDATE `creature_template` SET `npcflag` = 3 WHERE `entry` = 35086;
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `Id` = 14134;
UPDATE `quest_template` SET `PrevQuestId` = 0, `RequiredItemId1` = 0, `RequiredItemCount1` = 0 WHERE `Id` = 14134;

UPDATE `creature_template` SET `npcflag` = 3 WHERE `npcflag` = 2;

