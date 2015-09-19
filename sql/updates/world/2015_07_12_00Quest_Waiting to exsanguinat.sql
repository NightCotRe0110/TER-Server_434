/*	
							SCRIPTS ARE NOT FOR FREE
***********************************************************************************
//////////////////////										//////////////////////*
//////////////////////			Scripts made by MAYOR 		//////////////////////*
//////////////////////	blizzlike fixes for WowSource V9 DB	//////////////////////*
//////////////////////			  WowSource V9 DB			//////////////////////*	
//////////////////////		For more scripst Contac me 		//////////////////////*		
//////////////////////		yurialicia2012@gmail.com        //////////////////////*	
***********************************************************************************

*/

SET @YORICK			:= 44882;
SET @IVAR 		    := 44884;
SET @CROWLY 		:= 44883;
SET @SPELL1			:= 34189; -- SPELL Stealth
SET @SPELL2			:= 46598; -- SPELL Ride Vehicle Hardcoded
SET @SPELL3		    := 80743; -- SPELL Eject Passenger 1
SET @SPELL4			:= 83788; -- SPELL Hide in Aimore
SET @QUEST 			:= 27045;
SET @AIMORE 		:= 44894;
SET @AIMORE2		:= 44893;

SET @YORICK_SCRIPT	:= @YORICK*100;
SET @YORICK_SCRIPT2	:= @YORICK*101;
SET @IVAR_SCRIPT	:= @IVAR*100;
SET @CROWLY_SCRIPT	:= @CROWLY*100;

-- REQUERIMIENDO CORRECTO
UPDATE quest_template SET CompletedText="",ObjectiveText1="Learn of Darius Crowley's Plans" WHERE Id=@QUEST;


-- Disminuido el tamaño del aimore para poder el spell de la camara recto
-- Añadido el flag para q el aimore 1 se pudiera targetiar 
-- Quitado el quest giver flag que tenia Yorick
UPDATE creature_template SET scale=0.5 WHERE entry=@AIMORE2;
UPDATE creature_template SET npcflag=1 WHERE entry=@AIMORE;
UPDATE creature_template SET npcflag=0 WHERE entry=@YORICK;
-- UPDATE creature comportamiento en template 
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@YORICK;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@IVAR;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@CROWLY;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@AIMORE;
-- Borrados antiguos SAI
DELETE FROM `smart_scripts` WHERE `entryorguid`=@YORICK AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@IVAR AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@CROWLY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@AIMORE AND `source_type`=0;
-- Borado de los scripts
DELETE FROM `smart_scripts` WHERE `entryorguid`=@YORICK_SCRIPT AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@IVAR_SCRIPT AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@CROWLY_SCRIPT AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@YORICK_SCRIPT2 AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@YORICK_SCRIPT1 AND `source_type`=9;
-- SAI Y SCRIPT DE LAS CREATURAS Q INTERVIENE EN EL QUEST
-- Deathstalker Rane Yorick SAI
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@YORICK,0,0,0,54,0,100,0,0,0,0,0,80,@YORICK_SCRIPT,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deathstalker Rane Yorick - On Just Summoned - Run Script"),
(@YORICK,0,1,0,38,0,100,0,0,1,0,0,80,@YORICK_SCRIPT,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deathstalker Rane Yorick - On Data Set 0 1 - Run Script"),
(@YORICK_SCRIPT,9,0,0,0,0,100,0,0,0,0,0,53,0,@YORICK_SCRIPT,0,0,0,0,1,0,0,0,0,0,0,0,"Deathstalker Rane Yorick - On Script - Start Waypoint"),
(@YORICK_SCRIPT,9,1,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deathstalker Rane Yorick - On Script - Say Line 0"),
(@YORICK_SCRIPT,9,2,0,0,0,100,0,35000,35000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deathstalker Rane Yorick - On Script - Say Line 1"),
(@YORICK_SCRIPT,9,3,0,0,0,100,0,500,500,0,0,11,34189,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deathstalker Rane Yorick - On Script - Cast 'Stealth'"),
(@YORICK_SCRIPT,9,4,0,0,0,100,0,2000,2000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,4.65,"Deathstalker Rane Yorick - On Script - Set Orientation 5,65"),-- FIXED BY MAYPR
(@YORICK_SCRIPT,9,5,0,0,0,100,0,2000,2000,2000,2000,12,@CROWLY,3,180000,0,0,0,8,0,0,0,1299.36,1206.64,58.5706,0,"Deathstalker Rane Yorick - On Script - Summon Creature 'Lord Darius Crowley'"),
(@YORICK_SCRIPT,9,6,0,0,0,100,0,0,0,0,0,12,@IVAR,3,180000,0,0,0,8,0,0,0,1296.2,1210.54,58.5533,0,"Deathstalker Rane Yorick - On Script - Summon Creature 'Packleader Ivar Bloodfang'"),
(@YORICK_SCRIPT2,9,0,0,0,0,100,0,0,0,0,0,11,@SPELL2,0,0,0,0,0,11,@IVAR,15,0,0,0,0,0,"Deathstalker Rane Yorick - On Script - Cast 'Ride Vehicle Hardcoded'"),
(@YORICK_SCRIPT2,9,1,0,0,0,100,0,7000,7000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deathstalker Rane Yorick - On Script - Say Line 2"),
(@YORICK_SCRIPT2,9,3,0,0,0,100,0,0,0,0,0,97,15,15,0,0,0,0,8,0,0,0,1296.29,1206.47,58.5,0,"Deathstalker Rane Yorick - On Script - Jump To Pos"),
(@YORICK_SCRIPT2,9,4,0,0,0,100,0,1000,1000,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deathstalker Rane Yorick - On Script - Kill Self"),
(@YORICK_SCRIPT2,9,5,0,0,0,100,0,0,0,0,0,33,@YORICK,0,0,0,0,0,7,0,0,0,0,0,0,0,"Deathstalker Rane Yorick - On Script - Quest Credit 'Waiting to Exsanguinate'"),-- FIXED BY MAYOR

-- Packleader Ivar Bloodfang SAI
(@IVAR,0,0,0,54,0,100,0,0,0,0,0,80,@IVAR_SCRIPT,0,0,0,0,0,1,0,0,0,0,0,0,0,"Packleader Ivar Bloodfang - On Just Summoned - Run Script"),
(@IVAR_SCRIPT,9,0,0,0,0,100,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,1308.4,1206.28,58.5109,0,"Packleader Ivar Bloodfang - On Script - Move To Position"),
(@IVAR_SCRIPT,9,1,0,0,0,100,0,15500,15500,15500,15500,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Packleader Ivar Bloodfang - On Script - Say Line 0"),
(@IVAR_SCRIPT,9,2,0,0,0,100,0,31000,31000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Packleader Ivar Bloodfang - On Script - Say Line 1"),
(@IVAR_SCRIPT,9,3,0,0,0,100,0,11000,11000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Packleader Ivar Bloodfang - On Script - Say Line 2"),
(@IVAR_SCRIPT,9,4,0,0,0,100,0,2000,2000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Packleader Ivar Bloodfang - On Script - Say Line 3"),
(@IVAR_SCRIPT,9,5,0,0,0,100,0,17000,17000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Packleader Ivar Bloodfang - On Script - Say Line 4"),
(@IVAR_SCRIPT,9,6,0,0,0,100,0,2000,2000,0,0,69,0,0,0,0,0,0,8,0,0,0,1312.2,1208.56,58.51,0,"Packleader Ivar Bloodfang - On Script - Move To Position"),
(@IVAR_SCRIPT,9,7,0,0,0,100,0,2000,2000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,"Packleader Ivar Bloodfang - On Script - Say Line 5"),
(@IVAR_SCRIPT,9,8,0,0,0,100,0,5000,5000,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"Packleader Ivar Bloodfang - On Script - Say Line 6"),
(@IVAR_SCRIPT,9,9,0,0,0,100,0,5000,5000,0,0,69,0,0,0,0,0,0,8,0,0,0,1313.58,1210.62,58.51,0,"Packleader Ivar Bloodfang - On Script - Move To Position"),
(@IVAR_SCRIPT,9,10,0,0,0,100,0,3000,3000,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"Packleader Ivar Bloodfang - On Script - Say Line 7"),
(@IVAR_SCRIPT,9,11,0,0,0,100,0,3000,3000,0,0,45,0,1,0,0,0,0,11,@YORICK,10,0,0,0,0,0,"Packleader Ivar Bloodfang - On Script - Set Data 0 1"),
(@IVAR_SCRIPT,9,12,0,0,0,100,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,1309.41,1206.23,58.51,0,"Packleader Ivar Bloodfang - On Script - Move To Position"),
(@IVAR_SCRIPT,9,13,0,0,0,100,0,3000,3000,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,"Packleader Ivar Bloodfang - On Script - Say Line 8"),
(@IVAR_SCRIPT,9,14,0,0,0,100,0,11000,11000,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0,"Packleader Ivar Bloodfang - On Script - Say Line 9"),-- FIXED BY MAYOR
(@IVAR_SCRIPT,9,15,0,0,0,100,0,0,0,0,0,11,@SPELL3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Packleader Ivar Bloodfang - On Script - Cast 'Eject Passenger 1'"),
(@IVAR_SCRIPT,9,16,0,0,0,100,0,3000,3000,0,0,66,0,0,0,0,0,0,11,44883,30,0,0,0,0,0,"Packleader Ivar Bloodfang - On Script - Set Orientation Closest Creature 'Lord Darius Crowley'"),
(@IVAR_SCRIPT,9,17,0,0,0,100,0,1000,1000,0,0,1,10,0,0,0,0,0,1,0,0,0,0,0,0,0,"Packleader Ivar Bloodfang - On Script - Say Line 10"),
(@IVAR_SCRIPT,9,18,0,0,0,100,0,7000,7000,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Packleader Ivar Bloodfang - On Script - Set Run On"),
(@IVAR_SCRIPT,9,19,0,0,0,100,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,1297.07,1212.5,58.49,0,"Packleader Ivar Bloodfang - On Script - Move To Position"),
(@IVAR_SCRIPT,9,20,0,0,0,100,0,3000,3000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Packleader Ivar Bloodfang - On Script - Despawn Instant"),
-- Crowly SCRIPT
(@CROWLY,0,0,0,54,0,100,0,0,0,0,0,80,@CROWLY_SCRIPT,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lord Darius Crowley - On Just Summoned - Run Script"),
(@CROWLY_SCRIPT,9,0,0,0,0,100,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,1313.48,1206.09,58.5119,0,"Lord Darius Crowley - On Script - Move To Position"),
(@CROWLY_SCRIPT,9,1,0,0,0,100,0,8000,8000,8000,8000,66,0,0,0,0,0,0,11,@IVAR,30,0,0,0,0,0,"Lord Darius Crowley - On Script - Set Orientation Closest Creature 'Packleader Ivar Bloodfang'"),
(@CROWLY_SCRIPT,9,2,0,0,0,100,0,5000,5000,5000,5000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lord Darius Crowley - On Script - Say Line 0"),
(@CROWLY_SCRIPT,9,3,0,0,0,100,0,19000,19000,19000,19000,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lord Darius Crowley - On Script - Say Line 1"),
(@CROWLY_SCRIPT,9,4,0,0,0,100,0,8000,8000,8000,8000,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lord Darius Crowley - On Script - Say Line 2"),
(@CROWLY_SCRIPT,9,5,0,0,0,100,0,29000,29000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lord Darius Crowley - On Script - Say Line 3"),
(@CROWLY_SCRIPT,9,6,0,0,0,100,0,52000,52000,0,0,69,0,0,0,0,0,0,8,0,0,0,1297.23,1212.63,58.58,0,"Lord Darius Crowley - On Script - Move To Position"),
(@CROWLY_SCRIPT,9,7,0,0,0,100,0,4000,4000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lord Darius Crowley - On Script - Despawn Instant"),
(@AIMORE,0,0,0,64,0,100,0,0,0,0,0,86,@SPELL4,0,7,0,0,0,19,@AIMORE2,10,0,0,0,0,0,"Armoire - On Gossip Hello - Cross Cast 'HIDE AIMORE'");
