/*								SCRIPTS ARE NOT FOR FREE
***********************************************************************************
//////////////////////										//////////////////////*
//////////////////////		Scripts made by MAYOR 			//////////////////////*
//////////////////////	blizzlike fixes for WowSource V9 DB	//////////////////////*
//////////////////////			 							//////////////////////*	
//////////////////////		For more scripst Contac me 		//////////////////////*		
//////////////////////		yurialicia2012@gmail.com        //////////////////////*	
***********************************************************************************

*/

 
-- SAI VARIABLES
SET @MORTUS			 := 44615; 
SET @SYLVANAS		 := 44365;
SET @AGATHA			 := 44608;
SET @GARROSH		 := 44629;
SET @CROMUSH		 := 44640;
SET @FALLENHUMAN	 := 44592;
SET @PORTAL			 := 44630;
SET @QUEST			 := 26965;
SET @HELLSCREAMELITE := 44636;
SET @FORSAKEN_TRUPER := 44596;
SET @SPELL1			 := 83173; -- Spell Raise Forsaken
SET @SPELL2          := 55761; -- Air Revenant Entrance
SET @QUEST_QREDIT    := 83384; -- SPELL QUEST CREDIT
SET @SPELL4          := 12980; -- Simple Teleport
SET @TRIGER1		 := 144951; -- TRIGER DE LOS FALLEN HUMAN
SET @TRIGER2		 := 144953; -- TRIGER DE LOS FALLEN HUMAN


-- SCRIPTS VARIABLES +00
SET @SCRIPT_MORTUS 		:= @MORTUS*100;
SET @SCRIPT_SYLVANAS 	:= @SYLVANAS*100;
SET @SCRIPT_AGATHA 		:= @AGATHA*100;
SET @SCRIPT_GARROSH	    := @GARROSH*100;
SET @SCRIPT_CROMUSH	    := @CROMUSH*100;
SET @SCRIPT_FALLENHUMAN := @FALLENHUMAN*100;

-- Equipment for Garrosh And Elites
DELETE FROM `creature_equip_template` WHERE (`entry`=@GARROSH);
INSERT INTO `creature_equip_template` (`entry`, `id`, `itemEntry1`, `itemEntry2`, `itemEntry3`)
 VALUES (@GARROSH, 1, 30414, 0, 0);
DELETE FROM `creature_equip_template` WHERE (`entry`=@HELLSCREAMELITE);
INSERT INTO `creature_equip_template` (`entry`, `id`, `itemEntry1`, `itemEntry2`, `itemEntry3`)
 VALUES (@HELLSCREAMELITE, 1, 10612, 0, 0);
DELETE FROM `creature_equip_template` WHERE (`entry`=@CROMUSH);
INSERT INTO `creature_equip_template` (`entry`, `id`, `itemEntry1`, `itemEntry2`, `itemEntry3`)
 VALUES (@CROMUSH, 1, 30414, 0, 0);

-- Bist para Ascla y Arthura esto hace q se queden volando
DELETE FROM `creature_template_addon` WHERE (`entry`=44609);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (44609, '0', 0, 50331648, 1, 0, '0');
DELETE FROM `creature_template_addon` WHERE (`entry`=44610);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (44610, '0', 0, 50331648, 1, 0, '0');
-- AGATA LOCATIOn
DELETE FROM `creature` WHERE (`guid`=25764);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (25764, 44608, 0, 1, 1, 33996, 0, 1364, 1028, 55, 0.715585, 300, 0, 0, 9030, 6520, 0, 0, 0, 0);

-- Aura de agata q no se dejava ver
DELETE FROM `creature_addon` WHERE (`guid`=25764);
-- Creature template Update field Para SAI
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@MORTUS;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@SYLVANAS;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@AGATHA;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@GARROSH;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@CROMUSH;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@FALLENHUMAN;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@PORTAL;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@HELLSCREAMELITE;
-- DELETE SAI ANTERIORES
DELETE FROM `smart_scripts` WHERE `entryorguid`=@MORTUS AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@SYLVANAS AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@AGATHA AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GARROSH AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@CROMUSH AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@FALLENHUMAN AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@PORTAL AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@HELLSCREAMELITE AND `source_type`=0;

-- DELETE SCRIPTS AENTERIORES 
DELETE FROM `smart_scripts` WHERE `entryorguid`=@SCRIPT_MORTUS AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@SCRIPT_SYLVANAS AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@SCRIPT_AGATHA AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@SCRIPT_GARROSH AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@SCRIPT_CROMUSH AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@SCRIPT_FALLENHUMAN AND `source_type`=9;


-- Grand Executor Mortuus SAI Grand Executor Mortuus
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`)
 VALUES
(@MORTUS,0,0,0,19,0,100,0,@QUEST,0,0,0,80,@SCRIPT_MORTUS,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grand Executor Mortuus - On Quest 'The Warchief Cometh' Taken - Run Script"),
(@SCRIPT_MORTUS,9,0,0,0,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,@SYLVANAS,50,0,0,0,0,0,"Grand Executor Mortuus - On Script - Set Data 0 1"),
(@SCRIPT_MORTUS,9,1,0,0,0,100,0,5000,5000,0,0,12,@PORTAL,3,174000,0,0,0,8,0,0,0,1358.62,1054.72,53.12,0,"Grand Executor Mortuus - On Script - Summon Creature 'Portal from Orgrimmar'"),
(@SCRIPT_MORTUS,9,2,0,0,0,100,0,0,0,0,0,12,@PORTAL,3,174000,0,0,0,8,0,0,0,1393.27,1021.2,53.2225,0,"Grand Executor Mortuus - On Script - Summon Creature 'Portal from Orgrimmar'"),
(@SCRIPT_MORTUS,9,3,0,0,0,100,0,0,0,0,0,12,@PORTAL,3,174000,0,0,0,8,0,0,0,1404.71,1063.73,60.5617,0,"Grand Executor Mortuus - On Script - Summon Creature 'Portal from Orgrimmar'"),
(@SCRIPT_MORTUS,9,4,0,0,0,100,0,3000,3000,0,0,12,@HELLSCREAMELITE,3,170000,0,0,0,8,0,0,0,0.9,1029.71,53.2185,2.82743,"Grand Executor Mortuus - On Script - Summon Creature 'Hellscream's Elite'"), 
(@SCRIPT_MORTUS,9,5,0,0,0,100,0,0,0,0,0,12,@HELLSCREAMELITE,3,170000,0,0,0,8,0,0,0,1389.79,1024.51,53.2083,2.82743,"Grand Executor Mortuus - On Script - Summon Creature 'Hellscream's Elite'"),
(@SCRIPT_MORTUS,9,6,0,0,0,100,0,0,0,0,0,12,@HELLSCREAMELITE,3,170000,0,0,0,8,0,0,0,1388.05,1026.91,53.2083,2.82743,"Grand Executor Mortuus - On Script - Summon Creature 'Hellscream's Elite'"),
(@SCRIPT_MORTUS,9,7,0,0,0,100,0,0,0,0,0,12,@HELLSCREAMELITE,3,170000,0,0,0,8,0,0,0,1388.16,1020.88,53.2552,2.82743,"Grand Executor Mortuus - On Script - Summon Creature 'Hellscream's Elite'"),
(@SCRIPT_MORTUS,9,8,0,0,0,100,0,0,0,0,0,12,@HELLSCREAMELITE,3,170000,0,0,0,8,0,0,0,1385.79,1025.99,53.2259,2.82743,"Grand Executor Mortuus - On Script - Summon Creature 'Hellscream's Elite'"),
(@SCRIPT_MORTUS,9,9,0,0,0,100,0,0,0,0,0,12,@HELLSCREAMELITE,3,170000,0,0,0,8,0,0,0,1386.69,1023.26,53.2439,2.82743,"Grand Executor Mortuus - On Script - Summon Creature 'Hellscream's Elite'"),
(@SCRIPT_MORTUS,9,10,0,0,0,100,0,0,0,0,0,12,@HELLSCREAMELITE,3,170000,0,0,0,8,0,0,0,1384.33,1022.04,53.2812,2.82743,"Grand Executor Mortuus - On Script - Summon Creature 'Hellscream's Elite'"),
(@SCRIPT_MORTUS,9,11,0,0,0,100,0,0,0,0,0,12,@HELLSCREAMELITE,3,170000,0,0,0,8,0,0,0,1391.1,1027.73,53.2048,2.82743,"Grand Executor Mortuus - On Script - Summon Creature 'Hellscream's Elite'"),
(@SCRIPT_MORTUS,9,12,0,0,0,100,0,0,0,0,0,12,@HELLSCREAMELITE,3,170000,0,0,0,8,0,0,0,1359.1,1046.55,52.9705,5.25344,"Grand Executor Mortuus - On Script - Summon Creature 'Hellscream's Elite'"),
(@SCRIPT_MORTUS,9,13,0,0,0,100,0,0,0,0,0,12,@HELLSCREAMELITE,3,170000,0,0,0,8,0,0,0,1360.89,1051.81,53.1979,5.25344,"Grand Executor Mortuus - On Script - Summon Creature 'Hellscream's Elite'"),
(@SCRIPT_MORTUS,9,14,0,0,0,100,0,0,0,0,0,12,@HELLSCREAMELITE,3,170000,0,0,0,8,0,0,0,1360.75,1048.84,53.1289,5.25344,"Grand Executor Mortuus - On Script - Summon Creature 'Hellscream's Elite'"),
(@SCRIPT_MORTUS,9,15,0,0,0,100,0,0,0,0,0,12,@HELLSCREAMELITE,3,170000,0,0,0,8,0,0,0,1364.43,1053.62,53.2934,5.25344,"Grand Executor Mortuus - On Script - Summon Creature 'Hellscream's Elite'"),
(@SCRIPT_MORTUS,9,16,0,0,0,100,0,0,0,0,0,12,@HELLSCREAMELITE,3,170000,0,0,0,8,0,0,0,1363.08,1048.15,53.2222,5.25344,"Grand Executor Mortuus - On Script - Summon Creature 'Hellscream's Elite'"),
(@SCRIPT_MORTUS,9,17,0,0,0,100,0,0,0,0,0,12,@HELLSCREAMELITE,3,170000,0,0,0,8,0,0,0,1364.08,1050.84,53.2916,5.25344,"Grand Executor Mortuus - On Script - Summon Creature 'Hellscream's Elite'"),
(@SCRIPT_MORTUS,9,18,0,0,0,100,0,0,0,0,0,12,@HELLSCREAMELITE,3,170000,0,0,0,8,0,0,0,1366.69,1050.31,53.342,5.25344,"Grand Executor Mortuus - On Script - Summon Creature 'Hellscream's Elite'"),
(@SCRIPT_MORTUS,9,19,0,0,0,100,0,0,0,0,0,12,@HELLSCREAMELITE,3,170000,0,0,0,8,0,0,0,1357.85,1050.12,52.9982,5.25344,"Grand Executor Mortuus - On Script - Summon Creature 'Hellscream's Elite'"), 
(@SCRIPT_MORTUS,9,20,0,0,0,100,0,0,0,0,0,12,@GARROSH,3,170000,0,0,0,8,0,0,0,1399.31,1064.2,60.5617,3.92699,"Grand Executor Mortuus - On Script - Summon Creature 'Garrosh Hellscream'"), -- FIXED By MAYOR
(@SCRIPT_MORTUS,9,21,0,0,0,100,0,0,0,0,0,12,@CROMUSH,3,170000,0,0,0,8,0,0,0,1366.92,1054.46,53.1978,5.62373,"Grand Executor Mortuus - On Script - Summon Creature 'High Warlord Cromush'"), -- FIXED By MAYOR
(@SCRIPT_MORTUS,9,22,0,0,0,100,0,167000,167000,0,0,11,@QUEST_QREDIT,0,0,0,0,0,7,0,0,0,0,0,0,0,"Grand Executor Mortuus - On Script - Cast quest credit'"), -- FIXED By MAYOR
-- Lady Sylvanas Windrunner SAI
(@SYLVANAS,0,0,0,38,0,100,0,0,1,0,0,80,@SCRIPT_SYLVANAS,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner - On Data Set 0 1 - Run Script"),
(@SCRIPT_SYLVANAS,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner - On Script - Say Line 0"),
(@SCRIPT_SYLVANAS,9,1,0,0,0,100,0,7000,7000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner -  - Say Line 1"),
(@SCRIPT_SYLVANAS,9,2,0,0,0,100,0,25000,25000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner - On Script - Say Line 2"),
(@SCRIPT_SYLVANAS,9,3,0,0,0,100,0,4000,4000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner - On Script - Say Line 3"), 
(@SCRIPT_SYLVANAS,9,4,0,0,0,100,0,16000,16000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner - On Script - Say Line 4"), -- FIXED By MAYOR
(@SCRIPT_SYLVANAS,9,5,0,0,0,100,0,8000,8000,8000,8000,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner - On Script - Say Line 5"), -- FIXED By MAYOR
(@SCRIPT_SYLVANAS,9,6,0,0,0,100,0,6000,6000,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner - On Script - Say Line 6"), -- FIXED By MAYOR
(@SCRIPT_SYLVANAS,9,7,0,0,0,100,0,5000,5000,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner - On Script - Say Line 7"), -- FIXED By MAYOR
(@SCRIPT_SYLVANAS,9,8,0,0,0,100,0,10000,10000,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner - On Script - Say Line 8"), -- FIXED By MAYOR
(@SCRIPT_SYLVANAS,9,9,0,0,0,100,0,3000,3000,0,0,45,0,1,0,0,0,0,11,@AGATHA,150,0,0,0,0,0,"Lady Sylvanas Windrunner - On Script - Set Data 0 1"), -- FIXED By MAYOR
(@SCRIPT_SYLVANAS,9,10,0,0,0,100,0,32000,32000,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner - On Script - Say Line 9"),
(@SCRIPT_SYLVANAS,9,11,0,0,0,100,0,20000,20000,0,0,1,10,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner - On Script - Say Line 10"), 
-- Agatha SAI  
(@AGATHA,0,0,0,38,0,100,0,0,1,0,0,80,@SCRIPT_AGATHA,0,0,0,0,0,1,0,0,0,0,0,0,0,"Agatha - On Data Set 0 1 - Run Script"),
(@SCRIPT_AGATHA,9,0,0,0,0,100,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,1363.66,1028.2,64.706,0.686,"Agatha - On Script - Move To Position"), -- FIXED By MAYOR
(@SCRIPT_AGATHA,9,1,0,0,0,100,0,3000,3000,3000,3000,69,0,0,0,0,0,0,8,0,0,0,1370.7,1033.03,59.019,0.667,"Agatha - On Script - Move To Position"), -- FIXED By MAYOR
(@SCRIPT_AGATHA,9,2,0,0,0,100,0,6200,6200,0,0,11,83173,0,0,0,0,0,9,44592,0,100,0,0,0,0,"Agatha - On Script - Cast 'Raise Forsaken'"), -- FIXED By MAYOR
(@SCRIPT_AGATHA,9,3,0,0,0,100,0,8000,8000,0,0,69,0,0,0,0,0,0,8,0,0,0,1364,1028,55,0.855,"Agatha - On Script - Move To Position"), -- FIXED By MAYOR
(@SCRIPT_AGATHA,9,4,0,0,0,100,0,7300,7300,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0.855,"Agatha - On Script - Set Orientation 0,855"), -- FIXED By MAYOR
-- Fallen Human SAI
(@FALLENHUMAN,0,0,0,8,0,100,0,83173,0,0,0,80,@SCRIPT_FALLENHUMAN,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Spellhit - Cast Spell Raise Forsaken' - Run Script"),
(@SCRIPT_FALLENHUMAN,9,0,0,0,0,100,0,0,0,0,0,69,0,0,0,0,0,0,19,@TRIGER1,15,0,0,0,0,0,"Fallen Human - On Script - Move To Closest Creature 'Invisible Trigger One'"),
(@SCRIPT_FALLENHUMAN,9,1,0,0,0,100,0,5000,5000,0,0,69,0,0,0,0,0,0,19,@TRIGER2,15,0,0,0,0,0,"Fallen Human - On Script - Move To Closest Creature 'Invisible Trigger One'"),
(@SCRIPT_FALLENHUMAN,9,2,0,0,0,100,0,2000,2000,0,0,12,@FORSAKEN_TRUPER,3,30000,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Summon Creature 'Forsaken Trooper'"),
(@SCRIPT_FALLENHUMAN,9,3,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Despawn Instant"),
-- Garrosh Hellscream SAI
(@GARROSH,0,0,0,54,0,100,0,0,0,0,0,80,@SCRIPT_GARROSH,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream - On Just Summoned - Run Script"),
(@SCRIPT_GARROSH,9,0,0,0,0,100,0,0,0,0,0,11,96441,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream - On Script - Cast 'Thermalsprung JUMP'"), -- ACTION JUMP POSITION is not working -- FIXED By MAYOR
(@SCRIPT_GARROSH,9,1,0,0,0,100,0,3100,3100,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream - On Script - Say Line 0"),
(@SCRIPT_GARROSH,9,2,0,0,0,100,0,13000,13000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream - On Script - Say Line 1"),
(@SCRIPT_GARROSH,9,3,0,0,0,100,0,32000,32000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream - On Script - Say Line 2"),
(@SCRIPT_GARROSH,9,4,0,0,0,100,0,47000,47000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream - On Script - Say Line 3"),
(@SCRIPT_GARROSH,9,5,0,0,0,100,0,22000,22000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream - On Script - Say Line 4"),
(@SCRIPT_GARROSH,9,6,0,0,0,100,0,5500,5500,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream - On Script - Say Line 5"),
(@SCRIPT_GARROSH,9,7,0,0,0,100,0,12000,12000,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream - On Script - Say Line 6"),
(@SCRIPT_GARROSH,9,8,0,0,0,100,0,5000,5000,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream - On Script - Say Line 7"),
(@SCRIPT_GARROSH,9,9,0,0,0,100,0,16000,16000,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream - On Script - Say Line 8"),
(@SCRIPT_GARROSH,9,10,0,0,0,100,0,11000,11000,0,0,69,0,0,0,0,0,0,8,0,0,0,1351.29,1045.22,52.292,0,"Garrosh Hellscream - On Script - Move To Position"), 
(@SCRIPT_GARROSH,9,11,0,0,0,100,0,170000,170000,0,0,11,@SPELL4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream - On Script - Cast 'Simple Teleport'"), -- FIXED By MAYOR
-- High Warlord Cromush SAI
(@CROMUSH,0,0,0,54,0,100,0,0,0,0,0,80,@SCRIPT_CROMUSH,0,0,0,0,0,1,0,0,0,0,0,0,0,"High Warlord Cromush - On Just Summoned - Run Script"),
(@SCRIPT_CROMUSH,9,0,0,0,0,100,0,0,0,0,0,53,0,4464000,0,0,0,0,1,0,0,0,0,0,0,0,"High Warlord Cromush - On Script - Start Waypoint"), 
(@SCRIPT_CROMUSH,9,1,0,0,0,100,0,95000,95000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"High Warlord Cromush - On Script - Say Line 0"), -- FIXED By MAYOR
(@SCRIPT_CROMUSH,9,2,0,0,0,100,0,60000,60000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"High Warlord Cromush - On Script - Say Line 1"), -- FIXED By MAYOR
-- Portal from Orgrimmar SAI
(@PORTAL,0,0,0,54,0,100,0,0,0,0,0,11,@SPELL2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Portal from Orgrimmar - On Just Summoned - Cast 'Air Revenant Entrance'"),
-- Hellscream's Elite SAI
(@HELLSCREAMELITE,0,0,0,54,0,100,0,0,0,0,0,11,@SPELL4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hellscream's Elite - On Just Summoned - Cast 'Simple Teleport'"),
(@HELLSCREAMELITE,0,1,0,60,0,100,0,169000,169000,169000,169000,11,@SPELL4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hellscream's Elite - On Update - Cast 'Simple Teleport'");
