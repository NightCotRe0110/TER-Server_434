UPDATE `quest_template` SET `RequiredNpcOrGo1` = 0, `RequiredNpcOrGoCount1` = 0 WHERE `Id` = 26208;

/* 
* World\2013_06_02_quest_Missing in Action.sql 
*/ 
DELETE FROM `creature_questrelation` WHERE `quest` = 26284;
REPLACE INTO `creature_questrelation` (`id`, `quest`) VALUES (42708, 26284);

-- Makeshift Cage
SET @ENTRY := 204019;
SET @SOURCETYPE := 1;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE gameobject_template SET AIName="SmartGameObjectAI" WHERE entry=@ENTRY LIMIT 1;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,64,0,100,0,0,0,0,0,80,20401900,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"On gossip Hello");

-- Makeshift Cage
SET @ENTRY := 20401900;
SET @SOURCETYPE := 9;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,0,0,100,0,1000,1000,0,0,45,0,1,0,0,0,0,11,42645,10,0,0.0,0.0,0.0,0.0,"Send data 1 to Princess"),
(@ENTRY,@SOURCETYPE,1,0,0,0,100,0,0,0,0,0,33,42645,0,0,0,0,0,18,100,0,0,0.0,0.0,0.0,0.0,"give credit to player");

UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` = 42645;

-- Captured Demolitionist
SET @ENTRY := 42645;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,38,0,100,0,0,1,0,0,80,4264500,0,0,0,0,0,1,20,0,0,0.0,0.0,0.0,0.0,"On data set do action");




-- Captured Demolitionist
SET @ENTRY := 4264500;
SET @SOURCETYPE := 9;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,0,0,100,0,5000,5000,0,0,1,0,0,0,0,0,0,18,10,0,0,0.0,0.0,0.0,0.0,"talk to player"),
(@ENTRY,@SOURCETYPE,1,0,0,0,100,0,0,0,0,0,46,20,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Move forward"),
(@ENTRY,@SOURCETYPE,2,0,0,0,100,0,10000,10000,0,0,37,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Die self"),
(@ENTRY,@SOURCETYPE,3,0,0,0,100,0,0,0,0,0,33,0,0,0,0,0,0,18,1000,0,0,0.0,0.0,0.0,0.0,"give credit to player");


REPLACE INTO `creature_text` (`entry`, `id`, `text`, `type`, `probability`) VALUES ('42645', '1', 'Finally, someone who\'s not a trogg!', '12', '100');
REPLACE INTO `creature_text` (`entry`, `id`, `text`, `type`, `probability`) VALUES ('42645', '2', 'I''m free! I''m really free!', '12', '100');
REPLACE INTO `creature_text` (`entry`, `id`, `text`, `type`, `probability`) VALUES ('42645', '3', 'Thank you for breaking me out of here!', '12', '100');
REPLACE INTO `creature_text` (`entry`, `id`, `text`, `type`, `probability`) VALUES ('42645', '4', 'Thanks. Now, let''s blow up that cave!', '12', '100');
REPLACE INTO `creature_text` (`entry`, `id`, `text`, `type`, `probability`) VALUES ('42645', '5', 'You have no idea how happy I am to see you!', '12', '100'); 
 
 
 
 UPDATE `creature_template` SET `faction_A` = '21', `faction_H` = '21' WHERE `entry` = 42773;