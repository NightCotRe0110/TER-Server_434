-- Actionlist SAI
SET @ENTRY := 20401900;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,1000,1000,0,0,45,0,1,0,0,0,0,11,42645,10,0,0,0,0,0,"Send data 1 to Princess");

-- Silverwing Warrior SAI
SET @ENTRY := 12897;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,8000,25000,28000,11,11977,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cast Rend");

-- Alexandra Blazen SAI
SET @ENTRY := 8378;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,1,1,0,0,2,250,0,0,0,0,0,1,0,0,0,0,0,0,0,"Alexandra Blazen - On Data Set 1 1 - Set Faction 250"),
(@ENTRY,0,1,0,38,0,100,0,2,2,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,"Alexandra Blazen - On Data Set 2 2 - Set Faction 35"),
(@ENTRY,0,2,0,4,0,100,0,0,0,0,0,11,48168,2,0,0,0,0,1,0,0,0,0,0,0,0,"Alexandra Blazen - On Aggro - Cast 'Inner Fire'"),
(@ENTRY,0,3,0,2,0,100,0,0,0,20000,20000,11,11640,0,0,0,0,0,1,0,0,0,0,0,0,0,"Alexandra Blazen - Between 0-0% Health - Cast 'Renew'");

SET @ENTRY := -97629;
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;

SET @ENTRY := -96818;
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;

-- The Defias Traitor SAI
SET @ENTRY := 467;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,19,0,100,0,155,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Defias Traitor - On Accepted Quest 'The Defias Brotherhood' - Say Line 0"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,"The Defias Traitor - Link With Previous - Store Target List"),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,83,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Defias Traitor - Link With Previous - Remove npcflag 'Quest Giver"),
(@ENTRY,0,4,0,40,0,100,0,36,467,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Defias Traitor - On WP Reached 36 - Disable run"),
(@ENTRY,0,5,0,40,0,100,0,37,467,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Defias Traitor - On WP Reached 37 - Say Line 1"),
(@ENTRY,0,6,7,40,0,100,0,45,467,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Defias Traitor - On WP Reached 45 - Say Line 2"),
(@ENTRY,0,7,8,61,0,100,0,0,0,0,0,15,155,0,0,0,0,0,12,1,0,0,0,0,0,0,"The Defias Traitor - Link With Previous - Area Explored Or Event Happens"),
(@ENTRY,0,8,0,61,0,100,1,0,0,0,0,41,3000,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Defias Traitor - Link WIth Previous - Despawn"),
(@ENTRY,0,9,0,4,0,100,0,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Defias Traitor - On Aggro - Say Line 3");


-- The Plains Vision SAI
SET @ENTRY := 2983;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,40,0,100,0,50,2983,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Plains Vision - On Waypoint 50 Reached - Despawn In 1000 ms");

-- Patrick Mills SAI
SET @ENTRY := 8382;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,1,1,0,0,2,250,0,0,0,0,0,1,0,0,0,0,0,0,0,"Patrick Mills - On Data Set 1 1 - Set Faction 250"),
(@ENTRY,0,1,0,38,0,100,0,2,2,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,"Patrick Mills - On Data Set 2 2 - Set Faction 35"),
(@ENTRY,0,2,0,4,0,100,0,0,0,0,0,11,8258,2,0,0,0,0,1,0,0,0,0,0,0,0,"Patrick Mills - On Aggro - Cast 'Devotion Aura'"),
(@ENTRY,0,3,0,0,0,100,0,2000,2000,4000,4000,11,17143,0,0,0,0,0,2,0,0,0,0,0,0,0,"Patrick Mills - In Combat - Cast 'Holy Strike'");

-- Fei Fei SAI
SET @ENTRY := 20206;
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;

-- Molthor SAI
SET @ENTRY := 14875;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,64,0,100,0,0,0,0,0,5,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Molthor - On Gossip Hello - Play Emote 4 (No Repeat)"),
(@ENTRY,0,2,0,40,0,100,0,11,14875,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Molthor - On Waypoint 12 Reached - Run Script"),
(@ENTRY,0,3,0,40,0,100,0,11,14875,0,0,54,39000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Molthor - On Waypoint 12 Reached - Pause Waypoint");

-- Razaani Light Orb SAI
SET @ENTRY := 20635;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,28337,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Razaani Light Orb - On Spellhit 'Magnetic Pull' - Run Script (No Repeat)"),
(@ENTRY,0,1,0,38,0,100,0,0,1,30000,30000,69,1,0,0,0,0,0,19,22333,20,0,0,0,0,0,"Razaani Light Orb - On Data Set 0 1 - Move To Closest Creature 'Orb Collecting Totem' (No Repeat)"),
(@ENTRY,0,2,3,34,0,100,1,8,1,0,0,11,35426,0,0,0,0,0,1,0,0,0,0,0,0,0,"Razaani Light Orb - On Reached Point 1 - Cast 'Arcane Explosion Visual' (No Repeat)"),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,80,2084135,2,0,0,0,0,1,0,0,0,0,0,0,0,"Razaani Light Orb - On Reached Point 1 - Run Script (No Repeat)");

-- Razaani Light Orb - Mini SAI
SET @ENTRY := 20771;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,28337,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Razaani Light Orb - Mini - On Spellhit 'Magnetic Pull' - Run Script"),
(@ENTRY,0,1,0,38,0,100,0,1,1,30000,30000,69,1,0,0,0,0,0,19,22333,20,0,0,0,0,0,"Razaani Light Orb - Mini - On Data Set 1 1 - Move To Closest Creature 'Orb Collecting Totem'"),
(@ENTRY,0,2,3,34,0,100,1,8,1,0,0,11,35426,0,0,0,0,0,1,0,0,0,0,0,0,0,"Razaani Light Orb - Mini - On Reached Point 1 - Cast 'Arcane Explosion Visual' (No Repeat)"),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,80,2097871,2,0,0,0,0,1,0,0,0,0,0,0,0,"Razaani Light Orb - Mini - On Reached Point 1 - Run Script (No Repeat)");

-- Major Mills SAI
SET @ENTRY := 23905;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,1,100,0,11198,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Major Mills - On Quest 'Take Down Tethyr!' Taken - Say Line 0"),
(@ENTRY,0,1,0,19,1,100,0,11198,0,0,0,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"Major Mills - On Quest 'Take Down Tethyr!' Taken - Run Script"),
(@ENTRY,0,1,2,38,0,100,0,0,1,0,0,82,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tethyr - On data set - Add npcflag"),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tethyr - On data set - talk"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,15,11198,0,0,0,0,0,18,100,0,0,0,0,0,0,"Tethyr - On data sett - Area explored"),
(@ENTRY,0,4,0,38,0,100,0,0,2,0,0,82,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tethyr - On data set - Add npcflag");

UPDATE `quest_template` SET `SpecialFlags` = 2 WHERE `Id` = 11198;
UPDATE `quest_template` SET `SpecialFlags` = 2 WHERE `Id` = 12274;

-- Arctic Grizzly SAI
SET @ENTRY := 26482;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,23,0,100,1,47628,1,1,1,11,47675,0,0,0,0,0,1,0,0,0,0,0,0,0,"Arctic Grizzly - On Aura - Cast Recently Inoculated"),
(@ENTRY,0,2,0,61,0,100,1,0,0,0,0,41,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Arctic Grizzly - Event Linked - Despawn Delay 5 Seconds");

-- Fire Upon the Waters Kill Credit Bunny SAI
SET @ENTRY := 28013;
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;

-- Thorim SAI
SET @ENTRY := 29445;
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;

-- Frostbite SAI
SET @ENTRY := 29903;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,54,0,100,0,0,0,0,0,11,54993,0,0,0,0,0,1,0,0,0,0,0,0,0,"Frost Bite - On Just Summoned - Cast Frosthound Periodic"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"Frost Bite - On Just Summoned - Run Script"),
(@ENTRY,0,2,0,7,0,100,0,0,0,0,0,11,54993,0,0,0,0,0,1,0,0,0,0,0,0,0,"Frost Bite - On Evade - Cast Frosthound Periodic"),
(@ENTRY,0,3,0,40,0,100,0,4,29903,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Frost Bite - On Reached WP3 - Say Line 1"),
(@ENTRY,0,4,5,40,0,100,0,23,29903,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Frost Bite - On Reached WP3 - Say Line 2"),
(@ENTRY,0,5,6,61,0,100,0,0,0,0,0,1,3,0,0,0,0,0,23,0,0,0,0,0,0,0,"Frost Bite - On Reached WP3 - Say Line 3"),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Frost Bite - On Reached WP3 - Despawn");

-- Lumbering Atrocity
SET @ENTRY := 30920;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,8000,12000,12000,11,40504,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Cleave');

-- Hungering Plaguehound
SET @ENTRY := 30952;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,5000,25000,34000,11,3427,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Infected Wound');


UPDATE `quest_template` SET `SpecialFlags` = 2 WHERE `Id` = 27863;
UPDATE `quest_template` SET `SpecialFlags` = 2 WHERE `Id` = 27866;
UPDATE `quest_template` SET `SpecialFlags` = 2 WHERE `Id` = 27868;

UPDATE `quest_template` SET `SpecialFlags` = 2 WHERE `Id` = 10329;
UPDATE `quest_template` SET `SpecialFlags` = 2 WHERE `Id` = 10330;
UPDATE `quest_template` SET `SpecialFlags` = 2 WHERE `Id` = 10321;
UPDATE `quest_template` SET `SpecialFlags` = 2 WHERE `Id` = 10338;
UPDATE `quest_template` SET `SpecialFlags` = 2 WHERE `Id` = 10322;
UPDATE `quest_template` SET `SpecialFlags` = 2 WHERE `Id` = 10365;
UPDATE `quest_template` SET `SpecialFlags` = 2 WHERE `Id` = 10323;

-- Dark Strand Assassin SAI
SET @ENTRY := 3879;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,5000,11000,18000,11,3405,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dark Strand Assassin - IC - Cast Soul Rend"),
(@ENTRY,0,1,0,0,0,100,0,5000,9000,15000,21000,11,32862,64,0,0,0,0,2,0,0,0,0,0,0,0,"Dark Strand Assassin - IC - Cast Drain Soul"),
(@ENTRY,0,2,0,54,0,100,0,0,0,0,0,18,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dark Strand Assassin - On Just Summoned - Set Unit Flags - Immune to NPC/NPC"),
(@ENTRY,0,3,0,38,0,100,0,1,1,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dark Strand Assassin - On Data Set - Remove Unit Flags - Immune to NPC/NPC");


-- Spitelash Raider SAI
SET @ENTRY := 12204;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,5,0,0,0,100,0,40,1000,6500,9000,11,12545,0,0,0,0,0,2,0,0,0,0,0,0,0,"Spitelash Raider - In Combat - Cast 'Spitelash'"),
(@ENTRY,0,6,0,0,0,100,0,1000,2500,11000,15000,11,12548,0,0,0,0,0,2,0,0,0,0,0,0,0,"Spitelash Raider - In Combat - Cast 'Frost Shock'");

-- Spitelash Witch SAI
SET @ENTRY := 12205;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,5,0,1,0,100,0,1000,1000,60000,60000,11,12550,2,0,0,0,0,1,0,0,0,0,0,0,0,"Spitelash Witch - Out of Combat - Cast 'Lightning Shield'"),
(@ENTRY,0,6,0,0,0,100,0,2000,2000,4000,5000,11,9672,0,0,0,0,0,2,0,0,0,0,0,0,0,"Spitelash Witch - In Combat - Cast 'Frostbolt'");

-- Multi-Spectrum Light Trap Bunny SAI
SET @ENTRY := 21926;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,1,0,0,0,0,50,185011,30000,0,0,0,0,1,0,0,0,0,0,0,0,"Multi-Spectrum Light Trap Bunny - On Just Summoned - Summon Gameobject 'Multi-Spectrum Light Trap' (Phase 1) (No Repeat)"),
(@ENTRY,0,1,0,1,0,100,1,0,0,0,0,9,0,0,0,0,0,0,15,185011,0,0,0,0,0,0,"Multi-Spectrum Light Trap Bunny - Out of Combat - Activate Gameobject (Phase 1) (No Repeat)"),
(@ENTRY,0,2,0,1,0,100,1,3000,3000,3000,3000,11,28337,0,0,0,0,0,19,20635,20,0,0,0,0,0,"Multi-Spectrum Light Trap Bunny - Out of Combat - Cast 'Magnetic Pull' (Phase 1) (No Repeat)"),
(@ENTRY,0,3,0,1,0,100,1,3000,3000,3000,3000,11,28337,0,0,0,0,0,19,20771,20,0,0,0,0,0,"Multi-Spectrum Light Trap Bunny - Out of Combat - Cast 'Magnetic Pull' (Phase 1) (No Repeat)"),
(@ENTRY,0,5,0,61,0,100,1,0,0,0,0,9,0,0,0,0,0,0,15,185011,0,0,0,0,0,0,"Multi-Spectrum Light Trap Bunny - On Data Set 1 1 - Activate Gameobject (No Repeat)");

-- Lithe Stalker SAI
SET @ENTRY := 30894;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,8,0,100,0,58151,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,"Lithe Stalker - On Spellhit (Subdued Lithe Stalker) - Store Targetlist"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,29,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Lithe Stalker - On Spellhit (Subdued Lithe Stalker) - Follow Target"),
(@ENTRY,0,3,0,61,0,100,0,58178,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lithe Stalker - On Spellhit (CSA Dummy Effect) - Despawn");

-- Orphan Matron Aria SAI
SET @ENTRY := 34365;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,2,4,62,0,100,0,10502,2,0,0,11,65359,0,0,0,0,0,7,0,0,0,0,0,0,0,"Orphan Matron Aria - On gossip select - Create oracle orphan whistle"),
(@ENTRY,0,3,4,62,0,100,0,10502,3,0,0,11,65360,0,0,0,0,0,7,0,0,0,0,0,0,0,"Orphan Matron Aria - On gossip select - Create wolvar orphan whistle"),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Orphan Matron Aria - On gossip select - Close gossip");

-- Actionlist SAI
SET @ENTRY := 20401900;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,1000,1000,0,0,45,0,1,0,0,0,0,11,42645,10,0,0,0,0,0,"Send data 1 to Princess");

-- Actionlist SAI
SET @ENTRY := 4264500;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,5000,5000,0,0,1,0,0,0,0,0,0,18,10,0,0,0,0,0,0,"talk to player"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,46,20,0,0,0,0,0,1,0,0,0,0,0,0,0,"Move forward"),
(@ENTRY,9,2,0,0,0,100,0,10000,10000,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Die self");

-- Wounded Hyjal Defender SAI
SET @ENTRY := 52834;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,8,0,100,0,97670,0,0,0,41,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"molten front quests fix");

-- West Plains Drifter SAI
SET @ENTRY := 42391;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,87,0,0,0,1,0,2000,0,0,0,0,7,0,0,0,0,0,0,0,"Murder was the case - On Gossip1 - random aggro sentence"),
(@ENTRY,0,1,0,62,0,100,0,87,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Murder was the case - On Gossip1 - close gossip"),
(@ENTRY,0,2,0,52,0,100,0,0,42391,0,0,49,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Murder was the case - On Gossip1 - start attack"),
(@ENTRY,0,3,0,52,0,100,0,0,42391,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Murder was the case - On Gossip1 - npc_flag to 0"),
(@ENTRY,0,4,0,52,0,100,0,0,42391,0,0,2,20,0,0,0,0,0,1,0,0,0,0,0,0,0,"Murder was the case - On Gossip1 - change faction to aggressive"),
(@ENTRY,0,5,0,25,0,100,0,0,0,0,0,2,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"Murder was the case - On Reset - change faction back to neutral"),
(@ENTRY,0,6,0,25,0,100,0,0,0,0,0,81,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Murder was the case - On Reset - change npc_flag back to gossip"),
(@ENTRY,0,7,0,62,0,100,0,87,1,0,0,87,@ENTRY*100+01,@ENTRY*100+02,@ENTRY*100+03,@ENTRY*100+04,0,0,1,0,0,0,0,0,0,0,"Murder was the case - On Gossip 2 - Tell random clue"),
(@ENTRY,0,12,0,62,0,100,0,87,1,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Murder was the case - On Gossip 2 - close gossip"),
(@ENTRY,0,13,0,62,0,100,0,87,1,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Murder was the case - Make the gossiper unavailable"),
(@ENTRY,0,14,0,60,0,100,0,30000,30000,30000,30000,81,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Murder was the case - Reactivate gossiper every 30s");

-- Thug SAI
SET @ENTRY := 42387;
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;

SET @ENTRY := -44315;
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;

SET @ENTRY := 58964;
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
SET @ENTRY := 75548;
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
SET @ENTRY := 573340;
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;

-- Stormcrest Eagle SAI
SET @ENTRY := 30108;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,40,0,100,0,1,30108,0,0,1,0,0,0,0,0,0,19,30401,10,0,0,0,0,0,"Stormcrest Eagle - On Waypoint 1 Reached - Say Line 0"),
(@ENTRY,0,2,0,40,0,100,0,2,30108,0,0,1,1,0,0,0,0,0,19,30401,10,0,0,0,0,0,"Stormcrest Eagle - On Waypoint 2 Reached - Say Line 1"),
(@ENTRY,0,3,0,40,0,100,0,4,30108,0,0,1,2,0,0,0,0,0,19,30401,10,0,0,0,0,0,"Stormcrest Eagle - On Waypoint 4 Reached - Say Line 2"),
(@ENTRY,0,4,0,40,0,100,0,6,30108,0,0,1,3,0,0,0,0,0,19,30401,10,0,0,0,0,0,"Stormcrest Eagle - On Waypoint 6 Reached - Say Line 3"),
(@ENTRY,0,5,0,40,0,100,0,8,30108,0,0,1,4,0,0,0,0,0,19,30401,10,0,0,0,0,0,"Stormcrest Eagle - On Waypoint 8 Reached - Say Line 4"),
(@ENTRY,0,6,0,40,0,100,0,10,30108,0,0,1,5,0,0,0,0,0,19,30401,10,0,0,0,0,0,"Stormcrest Eagle - On Waypoint 10 Reached - Say Line 5"),
(@ENTRY,0,7,0,40,0,100,0,12,30108,0,0,1,6,0,0,0,0,0,19,30401,10,0,0,0,0,0,"Stormcrest Eagle - On Waypoint 12 Reached - Say Line 6"),
(@ENTRY,0,8,0,40,0,100,0,14,30108,0,0,1,7,0,0,0,0,0,19,30401,10,0,0,0,0,0,"Stormcrest Eagle - On Waypoint 14 Reached - Say Line 7"),
(@ENTRY,0,9,0,40,0,100,0,16,30108,0,0,1,8,0,0,0,0,0,19,30401,10,0,0,0,0,0,"Stormcrest Eagle - On Waypoint 16 Reached - Say Line 8"),
(@ENTRY,0,10,0,40,0,100,0,18,30108,0,0,1,9,0,0,0,0,0,19,30401,10,0,0,0,0,0,"Stormcrest Eagle - On Waypoint 18 Reached - Say Line 9"),
(@ENTRY,0,12,0,40,0,100,0,22,30108,0,0,1,10,0,0,0,0,0,19,30401,10,0,0,0,0,0,"Stormcrest Eagle - On Waypoint 22 Reached - Say Line 10"),
(@ENTRY,0,13,0,40,0,100,0,24,30108,0,0,1,11,0,0,0,0,0,19,30401,10,0,0,0,0,0,"Stormcrest Eagle - On Waypoint 24 Reached - Say Line 11"),
(@ENTRY,0,14,0,40,0,100,0,25,30108,0,0,1,12,0,0,0,0,0,19,30401,10,0,0,0,0,0,"Stormcrest Eagle - On Waypoint 25 Reached - Say Line 12"),
(@ENTRY,0,15,0,40,0,100,0,26,30108,0,0,1,13,0,0,0,0,0,19,30401,10,0,0,0,0,0,"Stormcrest Eagle - On Waypoint 26 Reached - Say Line 13"),
(@ENTRY,0,16,0,40,0,100,0,28,30108,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Stormcrest Eagle - On Waypoint 28 Reached - Despawn Instant");

-- Sigrid Iceborn's Proto-Drake SAI
SET @ENTRY := 30159;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,2,40,0,100,1,9,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sigrid Iceborn's Proto-Drake - On Waypoint 9 Reached - Despawn Instant (No Repeat)"),
(@ENTRY,0,2,0,61,0,100,1,9,0,0,0,45,1,1,0,0,0,0,11,31242,20,0,0,0,0,0,"Sigrid Iceborn's Proto-Drake - On Waypoint 9 Reached - Set Data 1 1 (No Repeat)");

-- Harrison Jones SAI
SET @ENTRY := 44860;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,11929,1,0,0,53,0,26814,0,0,9000,0,0,0,0,0,0,0,0,0,"Harrison Jones - On Gossip Option 1 Selected - Start Waypoint"),
(@ENTRY,0,1,0,19,0,100,0,27141,0,0,0,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"Harrison Jones - On PE Quest Accept Start Script"),
(@ENTRY,0,1,2,61,0,100,0,11929,1,0,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Harrison Jones - On Gossip Option 1 Selected - Close Gossip"),
(@ENTRY,0,3,4,58,0,100,0,4,0,0,0,33,42793,0,0,0,0,0,7,0,0,0,0,0,0,0,"Harrison Jones - On Waypoint Finished - Quest Credit 'On to Something'"),
(@ENTRY,0,4,0,61,0,100,0,4,0,0,0,41,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Harrison Jones - On Waypoint Finished - Despawn In 5000 ms");

-- Actionlist SAI
SET @ENTRY := 4436500;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"talk 0"),
(@ENTRY,9,1,0,1,0,100,0,7000,7000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"talk 1"),
(@ENTRY,9,2,0,0,0,100,0,25000,25000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"talk 2"),
(@ENTRY,9,3,0,0,0,100,0,4000,4000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"talk 3"),
(@ENTRY,9,4,0,0,0,100,0,16000,16000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"talk 4 "),
(@ENTRY,9,5,0,0,0,100,0,8000,8000,8000,8000,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,"talk 5"),
(@ENTRY,9,6,0,0,0,100,0,6000,6000,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"talk 6"),
(@ENTRY,9,7,0,0,0,100,0,5000,5000,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"talk 7"),
(@ENTRY,9,8,0,0,0,100,0,10000,10000,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,"talk 8 1min21"),
(@ENTRY,9,9,0,0,0,100,0,3000,3000,0,0,45,0,1,0,0,0,0,10,59236,44608,0,0,0,0,0,"send data 1 to valkir 1min24"),
(@ENTRY,9,10,0,0,0,100,0,32000,32000,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0,"talk 9"),
(@ENTRY,9,11,0,0,0,100,0,20000,20000,0,0,1,10,0,0,0,0,0,1,0,0,0,0,0,0,0,"talk 10");

-- Actionlist SAI
SET @ENTRY := 4486000;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,53,0,44860,0,0,0,0,1,0,0,0,0,0,0,0,"Script - Start WP 1 Harrison Jones"),
(@ENTRY,9,1,0,0,0,100,0,6000,6000,6000,6000,12,46720,5,45000,0,0,0,8,0,0,0,-8948.19,-1528.95,94.4531,4.89651,"Script - Summon Pygmy Ambusher"),
(@ENTRY,9,2,0,0,0,100,0,200,200,200,200,20,0,0,0,0,0,0,11,46720,30,0,0,0,0,0,"Script - Pygmy Attacks"),
(@ENTRY,9,3,0,0,0,100,0,10,10,10,10,9,1,0,0,0,0,0,20,205388,30,0,0,0,0,0,"Script - Activate Brazier"),
(@ENTRY,9,4,0,0,0,100,0,100,100,100,100,1,0,1,0,0,0,0,1,0,0,0,0,0,0,0,"Script - HJ Says 1"),
(@ENTRY,9,5,0,0,0,100,0,2000,2000,2000,2000,53,0,44861,0,0,0,0,1,0,0,0,0,0,0,0,"Script - HJ WP 2"),
(@ENTRY,9,6,0,0,0,100,0,100,100,100,100,1,1,1,0,0,0,0,1,0,0,0,0,0,0,0,"Script - HJ Says 2"),
(@ENTRY,9,7,0,0,0,100,0,1000,1000,1000,1000,53,0,44862,0,0,0,0,17,0,20,0,0,0,0,0,"Script - Player Go Waypoint"),
(@ENTRY,9,9,0,0,0,100,0,10,10,10,10,11,110263,2,0,0,0,0,1,0,0,0,0,0,0,0,"Script - Cast Explosion"),
(@ENTRY,9,10,0,0,0,100,0,200,200,200,200,62,1,0,0,0,0,0,17,0,20,0,-9210.32,-1554.97,65.4522,3.27979,"Script - Teleport Player");

-- Actionlist SAI
SET @ENTRY := 4488201;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,11,46598,0,0,0,0,0,11,44884,15,0,0,0,0,0,"enter vehicle"),
(@ENTRY,9,1,0,0,0,100,0,7000,7000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"talk 2"),
(@ENTRY,9,3,0,0,0,100,0,0,0,0,0,97,15,15,0,0,0,0,8,0,0,0,1296.29,1206.47,58.5,0,"jump"),
(@ENTRY,9,4,0,0,0,100,0,1000,1000,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"die self");

-- Actionlist SAI
SET @ENTRY := 4491400;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,11,83835,0,0,0,0,0,1,0,0,0,0,0,0,0,"cast 83835 on self"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"talk 0");

-- Actionlist SAI
SET @ENTRY := 4518000;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,200,200,200,200,1,0,200,0,0,0,0,1,0,0,0,0,0,0,0,"Script - HJ Says 1"),
(@ENTRY,9,1,0,0,0,100,0,300,300,300,300,53,1,45180,0,0,0,0,1,0,0,0,0,0,0,0,"Script - HJ WP Start"),
(@ENTRY,9,2,0,0,0,100,0,11000,11000,11000,11000,1,1,1,0,0,0,0,1,0,0,0,0,0,0,0,"Script - HJ Says 2"),
(@ENTRY,9,4,0,0,0,100,0,600,600,600,600,53,1,45181,0,0,0,0,1,0,0,0,0,0,0,0,"Script - HJ WP Start 2"),
(@ENTRY,9,5,0,0,0,100,0,1,1,1,1,11,82929,2,0,0,0,0,1,0,0,0,0,0,0,0,"Script - HJ Jump 1"),
(@ENTRY,9,6,0,0,0,100,0,200,200,200,200,1,2,1,0,0,0,0,1,0,0,0,0,0,0,0,"Script - HJ Says 3"),
(@ENTRY,9,7,0,0,0,100,0,1,1,1,1,11,82929,2,0,0,0,0,1,0,0,0,0,0,0,0,"Script - HJ Jump 2"),
(@ENTRY,9,8,0,0,0,100,0,600,600,600,600,41,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Script - HJ Despawn");

-- Actionlist SAI
SET @ENTRY := 4529601;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,1000,1000,1000,1000,1,1,1,0,0,0,0,1,0,0,0,0,0,0,0,"Script - HJ Says 2"),
(@ENTRY,9,1,0,0,0,100,0,3000,3000,3000,3000,53,1,45298,0,0,0,0,1,0,0,0,0,0,0,0,"Script - HJ Start WP 3"),
(@ENTRY,9,2,0,0,0,100,0,16000,16000,16000,16000,53,1,45299,0,0,0,0,1,0,0,0,0,0,0,0,"Script - HJ Start WP 4"),
(@ENTRY,9,3,0,0,0,100,0,200,200,200,200,11,82929,2,0,0,0,0,1,0,0,0,0,0,0,0,"Script - HJ Jump 1"),
(@ENTRY,9,4,0,0,0,100,0,1000,1000,1000,1000,11,82929,2,0,0,0,0,1,0,0,0,0,0,0,0,"Script - HJ Jump 2"),
(@ENTRY,9,5,0,0,0,100,0,2000,2000,2000,2000,11,82929,2,0,0,0,0,1,0,0,0,0,0,0,0,"Script - HJ Jump 3"),
(@ENTRY,9,6,0,0,0,100,0,2000,2000,2000,2000,11,82929,2,0,0,0,0,1,0,0,0,0,0,0,0,"Script - HJ Jump 4"),
(@ENTRY,9,7,0,0,0,100,0,2000,2000,2000,2000,11,82929,2,0,0,0,0,1,0,0,0,0,0,0,0,"Script - HJ Jump 5"),
(@ENTRY,9,8,0,0,0,100,0,2000,2000,2000,2000,11,82929,2,0,0,0,0,1,0,0,0,0,0,0,0,"Script - HJ Jump 6"),
(@ENTRY,9,9,0,0,0,100,0,12000,12000,12000,12000,53,82929,45300,0,0,0,0,1,0,0,0,0,0,0,0,"Script - HJ Start WP 5");

-- Actionlist SAI
SET @ENTRY := 4533082;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,11,46598,0,0,0,0,0,11,44884,15,0,0,0,0,0,"Deathstalker Rane Yorick - On Script - Cast 'Ride Vehicle Hardcoded'"),
(@ENTRY,9,1,0,0,0,100,0,7000,7000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deathstalker Rane Yorick - On Script - Say Line 2"),
(@ENTRY,9,3,0,0,0,100,0,0,0,0,0,97,15,15,0,0,0,0,8,0,0,0,1296.29,1206.47,58.5,0,"Deathstalker Rane Yorick - On Script - Jump To Pos"),
(@ENTRY,9,4,0,0,0,100,0,1000,1000,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deathstalker Rane Yorick - On Script - Kill Self");

-- Northeastern Pool Credit SAI
SET @ENTRY := 53191;
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;

-- Injured Druid of the Talon SAI
SET @ENTRY := 53243;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,64,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"molten front quests fix");

-- Hyjal Wisp SAI
SET @ENTRY := 53083;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,530830,0,29143,2000,0,1,0,0,0,0,0,0,0,"molten front quests fix"),
(@ENTRY,0,1,0,40,0,100,0,4,530830,0,0,70,2,0,0,0,0,0,20,208899,20,0,0,0,0,0,"molten front quests fix");

-- Goldwing Hawk SAI
SET @ENTRY := 52594;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,64,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"molten front quests fix");

-- Alpine Songbird SAI
SET @ENTRY := 52595;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,64,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"molten front quests fix");

-- Scarlet Corpse SAI
SET @ENTRY := 49340;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,8,0,100,0,91942,0,0,0,45,0,3,0,0,0,0,19,49337,10,0,0,0,0,0,"on spellhit 91942 set data 3 to darnell"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,11,46598,0,0,0,0,0,19,49337,0,0,0,0,0,0,"Jump on darnell"),
(@ENTRY,0,3,0,38,0,100,0,0,1,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"die self");

-- Skylord Omnuron SAI
SET @ENTRY := 52490;
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;

-- Forest Owl SAI
SET @ENTRY := 52596;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,64,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"molten front quests fix");

-- Waters of Farseeing SAI
SET @ENTRY := 207414;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,1,0,61,0,100,0,0,0,0,0,28,94687,0,0,0,0,0,7,0,0,0,0,0,0,0,"Waters of Farseeing - On link - Remove Waters of Farseeing");

-- Central Pool Credit SAI
SET @ENTRY := 53192;
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;

-- Waters of Farseeing SAI
SET @ENTRY := 207416;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,1,0,61,0,100,0,0,0,0,0,28,94687,0,0,0,0,0,7,0,0,0,0,0,0,0,"Waters of Farseeing - On link - Remove Waters of Farseeing");

-- Actionlist SAI
SET @ENTRY := 4246500;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,12,43809,5,980000,0,0,0,8,0,0,0,2339.98,195.193,179.936,2.95537,"Script - Summon Torunscar"),
(@ENTRY,9,1,0,0,0,100,0,1000,1000,1000,1000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Script - Therazane Says 1"),
(@ENTRY,9,2,0,0,0,100,0,4000,4000,4000,4000,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Script - Therazane Says 2"),
(@ENTRY,9,3,0,0,0,100,0,4000,4000,4000,4000,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Script - Therazane Says 3"),
(@ENTRY,9,4,0,0,0,100,0,4000,4000,4000,4000,1,0,0,0,0,0,0,19,43809,40,0,0,0,0,0,"Script - Torunscar Says 1"),
(@ENTRY,9,5,0,0,0,100,0,4000,4000,4000,4000,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Script - Therazane Says 4"),
(@ENTRY,9,6,0,0,0,100,0,4000,4000,4000,4000,1,1,0,0,0,0,0,19,43809,40,0,0,0,0,0,"Script -Torunscar Says 2"),
(@ENTRY,9,7,0,0,0,100,0,4000,4000,4000,4000,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Script - Therazane Says 5"),
(@ENTRY,9,8,0,0,0,100,0,4000,4000,4000,4000,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,"Script - Therazane Says 6"),
(@ENTRY,9,9,0,0,0,100,0,4000,4000,4000,4000,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"Script - Therazane Says 7"),
(@ENTRY,9,10,0,0,0,100,0,4000,4000,4000,4000,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"Script - Therazane Says 8"),
(@ENTRY,9,11,0,0,0,100,0,4000,4000,4000,4000,1,2,0,0,0,0,0,19,43809,40,0,0,0,0,0,"Script - Torunscar Says 3"),
(@ENTRY,9,12,0,0,0,100,0,4000,4000,4000,4000,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,"Script - Therazane Says 9");

-- Theresa SAI
SET @ENTRY := 5697;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,71,0,0,2717,0,0,0,1,0,0,0,0,0,0,0,"Theresa - On Data Set  - Equip Bottle"),
(@ENTRY,0,2,3,40,0,100,0,54,5697,0,0,54,17000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Theresa - On Reached WP9  - Pause WP"),
(@ENTRY,0,3,4,61,0,100,0,0,0,0,0,1,1,10000,0,0,0,0,1,0,0,0,0,0,0,0,"Theresa - On Reached WP9  - Say Line 1"),
(@ENTRY,0,4,13,61,0,100,0,0,0,0,0,71,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Theresa - On Reached WP9  - Unequip Bottle"),
(@ENTRY,0,5,6,52,0,100,0,1,5697,0,0,1,0,3000,0,0,0,0,19,4607,0,0,0,0,0,0,"Theresa - On Text Over  - Say"),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,71,0,0,2717,0,0,0,1,0,0,0,0,0,0,0,"Theresa - On Text Over  - Equip Bottle"),
(@ENTRY,0,7,8,40,0,100,0,109,5697,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,4.27606,"Theresa - On Reached WP18  - Set Orientation"),
(@ENTRY,0,8,9,61,0,100,0,0,0,0,0,1,2,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Theresa - On Reached WP18  - Say Line 1"),
(@ENTRY,0,9,14,61,0,100,0,0,0,0,0,71,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Theresa - On Reached WP18 - Unequip Bottle"),
(@ENTRY,0,10,15,52,0,100,0,2,5697,0,0,1,1,0,0,0,0,0,19,5696,0,0,0,0,0,0,"Theresa - On Text Over  - Say"),
(@ENTRY,0,11,12,52,0,100,0,0,4607,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Theresa - On Text Over  - Say"),
(@ENTRY,0,12,0,61,0,100,0,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,"Theresa - On Text Over - Stand"),
(@ENTRY,0,13,0,61,0,100,0,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,"Theresa - On Reached WP9 - Kneel"),
(@ENTRY,0,14,0,61,0,100,0,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,"Theresa - On Reached WP18 - Kneel"),
(@ENTRY,0,15,0,61,0,100,0,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,"Theresa - On Text Over - Stand");

-- Deldren Ravenelm SAI
SET @ENTRY := 52921;
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;

-- Northwestern Pool Credit SAI
SET @ENTRY := 53190;
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;


-- Windcaller Voramus SAI
SET @ENTRY := 53217;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,64,0,100,0,0,0,0,0,53,1,533550,0,29206,2000,1,1,0,0,0,0,0,0,0,"molten front quests fix"),
(@ENTRY,0,1,0,64,0,100,0,0,0,0,0,72,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"molten front quests fix"),
(@ENTRY,0,2,0,64,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"molten front quests fix");

-- Windcaller Nordrala SAI
SET @ENTRY := 53355;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,64,0,100,0,0,0,0,0,53,1,533550,0,29206,2000,1,1,0,0,0,0,0,0,0,"molten front quests fix"),
(@ENTRY,0,1,0,64,0,100,0,0,0,0,0,72,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"molten front quests fix"),
(@ENTRY,0,2,0,64,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"molten front quests fix");

-- Darnell SAI
SET @ENTRY := 49141;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"On summoned call time action 4914100"),
(@ENTRY,0,1,0,38,0,100,1,0,1,0,0,80,@ENTRY*100+01,0,0,0,0,0,1,0,0,0,0,0,0,0,"On data set do event 4914101"),
(@ENTRY,0,3,0,38,0,100,0,0,2,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,"On data set 2 despawn self");

-- Ffexk the Dunestalker SAI
SET @ENTRY := 50897;
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;

-- Desiccated Magus
SET @ENTRY := 44315;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4700,11,11538,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Frostbolt'),
(@ENTRY,0,1,0,9,0,100,0,0,8,15000,25000,11,79847,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Blast Wave on Close');

-- Sergeant Houser SAI
SET @ENTRY := 5662;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,1,0,100,0,7000,15000,15000,22000,54,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sergeant Houser - OOC  - Pause WP"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sergeant Houser - OOC  - Say");

-- Zangen Stonehoof SAI
SET @ENTRY := 4721;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,2,40,0,100,0,1,4721,0,0,54,25000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zangen Stonehoof - On Reached WP1 - Pause WP"),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Zangen Stonehoof - Linked with Previous Event - Run Script"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zangen Stonehoof - Linked with Previous Event - Set Phase 2"),
(@ENTRY,0,4,5,40,0,100,0,2,4721,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,4.74729,"Zangen Stonehoof - On Reached WP2 - Set Orientation"),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zangen Stonehoof - Linked with Previous Event - Set Phase 1"),
(@ENTRY,0,6,0,1,2,100,0,0,0,3125,3125,4,6675,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zangen Stonehoof - OOC (Phase 2) - Play Sound");

-- Caretaker Dilandrus SAI
SET @ENTRY := 16856;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,40,0,100,0,5,16856,0,0,80,@ENTRY*100+01,2,0,0,0,0,1,0,0,0,0,0,0,0,"Caretaker Dilandrus - On Waypoint 5 Reached - Run Script"),
(@ENTRY,0,2,0,40,0,100,0,7,16856,0,0,80,@ENTRY*100+01,2,0,0,0,0,1,0,0,0,0,0,0,0,"Caretaker Dilandrus - On Waypoint 7 Reached - Run Script"),
(@ENTRY,0,3,0,40,0,100,0,11,16856,0,0,80,@ENTRY*100+01,2,0,0,0,0,1,0,0,0,0,0,0,0,"Caretaker Dilandrus - On Waypoint 11 Reached - Run Script"),
(@ENTRY,0,4,0,40,0,100,0,15,16856,0,0,80,@ENTRY*100+01,2,0,0,0,0,1,0,0,0,0,0,0,0,"Caretaker Dilandrus - On Waypoint 15 Reached - Run Script"),
(@ENTRY,0,5,0,40,0,100,0,20,16856,0,0,80,@ENTRY*100+01,2,0,0,0,0,1,0,0,0,0,0,0,0,"Caretaker Dilandrus - On Waypoint 20 Reached - Run Script"),
(@ENTRY,0,6,0,40,0,100,0,24,16856,0,0,80,@ENTRY*100+01,2,0,0,0,0,1,0,0,0,0,0,0,0,"Caretaker Dilandrus - On Waypoint 24 Reached - Run Script"),
(@ENTRY,0,7,0,40,0,100,0,30,16856,0,0,80,@ENTRY*100+01,2,0,0,0,0,1,0,0,0,0,0,0,0,"Caretaker Dilandrus - On Waypoint 30 Reached - Run Script"),
(@ENTRY,0,8,0,40,0,100,0,33,16856,0,0,54,300000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Caretaker Dilandrus - On Waypoint 33 Reached - Pause Waypoint");

-- Protectorate Demolitionist SAI
SET @ENTRY := 20802;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,1,0,4000,0,0,0,0,1,0,0,0,0,0,0,0,"Protectorate Demolitionist - Just Summoned - Say 0"),
(@ENTRY,0,2,3,40,0,100,0,3,20802,0,0,54,4000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Protectorate Demolitionist - Reached WP 3 - Pause Wp"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,1,1,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Protectorate Demolitionist - Link Event - Say 1"),
(@ENTRY,0,4,5,40,0,100,0,5,20802,0,0,54,4000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Protectorate Demolitionist - Reached WP 5 - Pause Wp"),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,1,2,4000,0,0,0,0,1,0,0,0,0,0,0,0,"Protectorate Demolitionist - Link Event - Say 2"),
(@ENTRY,0,6,7,40,0,100,0,7,20802,0,0,54,10000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Protectorate Demolitionist - Reached WP 7 - Pause Wp"),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"Protectorate Demolitionist - Link - Start Script"),
(@ENTRY,0,8,9,40,0,100,0,8,20802,0,0,54,10000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Protectorate Demolitionist - Reached WP 8 - Pause Wp"),
(@ENTRY,0,9,10,61,0,100,0,0,0,0,0,1,5,6000,0,0,0,0,1,0,0,0,0,0,0,0,"Protectorate Demolitionist - Link - Say 5"),
(@ENTRY,0,10,0,61,0,100,0,0,0,0,0,15,10406,0,0,0,0,0,21,15,0,0,0,0,0,0,"Protectorate Demolitionist - Link - Complete Quest"),
(@ENTRY,0,11,12,52,0,100,0,5,20802,0,0,11,35517,0,0,0,0,0,1,0,0,0,0,0,0,0,"Protectorate Demolitionist - Text Over - cast teleportaion visual"),
(@ENTRY,0,12,0,61,0,100,0,0,0,0,0,41,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Protectorate Demolitionist - Text Over - despawn"),
(@ENTRY,0,13,0,4,0,100,0,0,0,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"Protectorate Demolitionist - On aggro - talk");


-- Oronok Torn-heart SAI
SET @ENTRY := 21685;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,1,1,0,0,81,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Oronok Torn-heart - On Data Set 1 1 - Set NPC Flags Gossip"),
(@ENTRY,0,1,2,62,0,100,0,8350,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,"Oronok Torn-heart - On Gossip Select - Store Targetlist"),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Oronok Torn-heart - On Gossip Select - Set NPC Flags None"),
(@ENTRY,0,3,4,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,21686,0,0,0,0,0,0,"Oronok Torn-heart - On Gossip Select - Set Data"),
(@ENTRY,0,4,5,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,21687,0,0,0,0,0,0,"Oronok Torn-heart - On Gossip Select - Set Data"),
(@ENTRY,0,6,7,40,0,100,0,12,21685,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Oronok Torn-heart - On Reached WP12 - Set Home Position"),
(@ENTRY,0,7,8,61,0,100,0,0,0,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Oronok Torn-heart - On Reached WP12 - Set Unit Flags"),
(@ENTRY,0,8,9,61,0,100,0,0,0,0,0,2,495,0,0,0,0,0,1,0,0,0,0,0,0,0,"Oronok Torn-heart - On Reached WP12 - Set Faction"),
(@ENTRY,0,9,10,61,0,100,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Oronok Torn-heart - On Reached WP12 - Set Aggresive"),
(@ENTRY,0,10,0,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,21181,0,0,0,0,0,0,"Oronok Torn-heart - On Reached WP12 - Set Data on Cyrukh the Firelord <The Dirge of Karabor>"),
(@ENTRY,0,11,0,0,0,100,0,0,0,8000,11000,11,16006,0,0,0,0,0,2,0,0,0,0,0,0,0,"Oronok Torn-heart - IC - Cast Chain Lightning"),
(@ENTRY,0,12,0,0,0,100,0,0,0,6000,8000,11,12548,0,0,0,0,0,2,0,0,0,0,0,0,0,"Oronok Torn-heart - IC - Cast Frost Shock"),
(@ENTRY,0,13,0,2,0,100,0,0,40,5000,8000,11,12491,0,0,0,0,0,1,0,0,0,0,0,0,0,"Oronok Torn-heart - On Less than 40% HP - Cast Healing Wave"),
(@ENTRY,0,14,0,38,0,100,0,5,5,0,0,11,12491,0,0,0,0,0,19,21687,0,0,0,0,0,0,"Oronok Torn-heart - On Data Set - Cast Healing Wave"),
(@ENTRY,0,15,0,38,0,100,0,6,6,0,0,71,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Oronok Torn-heart - On Data Set 6 6 - Unequip weapon"),
(@ENTRY,0,18,0,40,0,100,0,1,@ENTRY*100+00,0,0,66,0,0,0,0,0,0,19,21024,0,0,0,0,0,0,"Oronok Torn-heart - On Reached WP1 (Path 2) - Set Orientation");

-- Anchorite Yazmina SAI
SET @ENTRY := 23734;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,40,0,5,0,0,0,0,0,87,@ENTRY*100+00,@ENTRY*100+01,@ENTRY*100+02,@ENTRY*100+03,0,0,1,0,0,0,0,0,0,0,"Anchorite Yazmina <First Aid Trainer> - On Reached WP - Run Random Script");

-- Iron Rune Construct SAI
SET @ENTRY := 24825;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,75,44643,0,0,0,0,0,23,0,0,0,0,0,0,0,"Iron Rune Construct - Just Summoned - Add aura to owner"),
(@ENTRY,0,1,0,28,0,100,0,0,0,0,0,28,44643,0,0,0,0,0,23,0,0,0,0,0,0,0,"Iron Rune Construct - Passenger removed - remove aura from owner"),
(@ENTRY,0,2,0,8,0,100,0,44626,0,5000,5000,80,2482600,0,0,0,0,0,19,24826,1,0,0,0,0,0,"Iron Rune Construct - On spellhit  - Action List"),
(@ENTRY,0,3,0,8,0,100,0,44626,0,5000,5000,80,2482700,0,0,0,0,0,19,24827,1,0,0,0,0,0,"Iron Rune Construct - On spellhit  - Action List"),
(@ENTRY,0,4,0,8,0,100,0,44626,0,5000,5000,80,2482800,0,0,0,0,0,19,24828,1,0,0,0,0,0,"Iron Rune Construct - On spellhit  - Action List"),
(@ENTRY,0,5,0,8,0,100,0,44626,0,5000,5000,80,2483100,0,0,0,0,0,19,24831,1,0,0,0,0,0,"Iron Rune Construct - On spellhit  - Action List"),
(@ENTRY,0,6,0,8,0,100,0,44626,0,5000,5000,80,2482900,0,0,0,0,0,19,24829,1,0,0,0,0,0,"Iron Rune Construct - On spellhit  - Action List"),
(@ENTRY,0,7,0,8,0,100,0,44626,0,5000,5000,80,2483200,0,0,0,0,0,19,24832,1,0,0,0,0,0,"Iron Rune Construct - On spellhit  - Action List"),
(@ENTRY,0,14,0,58,0,100,0,0,0,0,0,28,44626,0,0,0,0,0,1,0,0,0,0,0,0,0,"Iron Rune Construct - On waypoint end - Remove aura");

-- Alliance Emissary SAI
SET @ENTRY := 27492;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,2,40,0,100,0,2,27492,0,0,54,30000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Alliance Emissary - On reached WP2 - Pause Event"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Alliance Emissary - Link - Run script");

-- Crusader Lamoof SAI
SET @ENTRY := 28142;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,54,0,100,0,0,0,0,0,11,50681,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crusader Lamoof - On Just Summoned - Cast 'Bleeding Out'"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,"Crusader Lamoof - On Waypoint 5 Reached - Store Targetlist (No Repeat)"),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,29,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Crusader Lamoof - On Waypoint 5 Reached - Start Follow Invoker (No Repeat)"),
(@ENTRY,0,3,4,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crusader Lamoof - On Waypoint 5 Reached - Set Event Phase 1 (No Repeat)"),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,91,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crusader Lamoof - On Waypoint 5 Reached - Remove Flag Standstate Sit Down (No Repeat)"),
(@ENTRY,0,5,0,23,1,100,1,50681,0,0,0,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crusader Lamoof - On Has Aura 'Bleeding Out' - Run Script (No Repeat)"),
(@ENTRY,0,6,7,40,0,100,1,5,0,0,0,90,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crusader Lamoof - On Waypoint 5 Reached - Set Flag Standstate Sit Down (No Repeat)"),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,41,20000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crusader Lamoof - On Spellhit 'Resuscitate' - Despawn In 20000 ms"),
(@ENTRY,0,8,9,8,1,100,0,50669,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crusader Lamoof - On Spellhit 'Quest Credit' - Set Event Phase 2 (Phase 1)"),
(@ENTRY,0,9,10,61,0,100,0,0,0,0,0,11,50683,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crusader Lamoof - On Spellhit 'Quest Credit' - Cast 'Kill Credit Lamoof 01' (Phase 1)"),
(@ENTRY,0,10,11,61,0,100,0,0,0,0,0,11,50723,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crusader Lamoof - On Spellhit 'Quest Credit' - Cast 'Strip Aura Lamoof 01' (Phase 1)"),
(@ENTRY,0,11,12,61,0,100,0,0,0,0,0,86,50684,0,12,1,0,0,1,0,0,0,0,0,0,0,"Crusader Lamoof - On Spellhit 'Resuscitate' - Cross Cast 'Lamoof Kill Credit'"),
(@ENTRY,0,12,13,61,0,100,0,0,0,0,0,86,50722,0,12,1,0,0,1,0,0,0,0,0,0,0,"Crusader Lamoof - On Spellhit 'Resuscitate' - Cross Cast 'Strip Aura Lamoof'"),
(@ENTRY,0,13,14,61,0,100,0,0,0,0,0,29,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Crusader Lamoof - On Spellhit 'Resuscitate' - Stop Follow "),
(@ENTRY,0,14,15,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crusader Lamoof - On Spellhit 'Resuscitate' - Say Line 0"),
(@ENTRY,0,16,0,61,0,100,0,0,0,0,0,83,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crusader Lamoof - On Spellhit 'Resuscitate' - Remove Npc Flag Gossip");

-- D16 Propelled Delivery Device SAI
SET @ENTRY := 30477;
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;

-- Highlord Tirion Fordring SAI
SET @ENTRY := 35361;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,3,0,40,0,100,0,5,@ENTRY*100+01,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Highlord Tirion Fordring - On Reached WP 5 (Path 1) - Despawn"),
(@ENTRY,0,4,0,40,0,100,0,7,@ENTRY*100+02,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Highlord Tirion Fordring - On Reached WP 7 (Path 2) - Despawn"),
(@ENTRY,0,5,0,40,0,100,0,53,@ENTRY*100+03,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Highlord Tirion Fordring - On Reached WP 53 (Path 3) - Despawn"),
(@ENTRY,0,6,7,40,0,100,0,26,@ENTRY*100+03,0,0,54,76000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Highlord Tirion Fordring - On Reached WP 26 (Path 3) - Pause WP"),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Highlord Tirion Fordring - On Reached WP 26 (Path 3) - Run Script");

-- Dorius Stonetender SAI
SET @ENTRY := 8284;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,58,0,100,0,12,0,0,0,50,175704,60000,0,0,0,0,19,8284,0,0,0,0,0,0,"Singed Letter was dropped by Dorius");

-- Melizza Brimbuzzle SAI
SET @ENTRY := 12277;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,61,0,100,0,6132,0,0,0,81,0,0,0,0,0,0,10,0,0,0,0,0,0,0,"Melizza Brimbuzzle - On Quest 'Get Me Out of Here!' Taken - Set Npc Flag "),
(@ENTRY,0,2,0,40,0,100,0,3,@ENTRY*100+00,0,0,1,0,0,0,0,0,0,21,20,0,0,0,0,0,0,"Melizza Brimbuzzle - On Waypoint 3 Reached - Say Line 0"),
(@ENTRY,0,3,4,40,0,100,0,58,@ENTRY*100+00,0,0,15,6132,0,0,0,0,0,17,0,30,0,0,0,0,0,"Melizza Brimbuzzle - On Waypoint 58 Reached - Quest Credit 'Get Me Out of Here!'"),
(@ENTRY,0,4,5,61,0,100,0,58,@ENTRY*100+00,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Melizza Brimbuzzle - On Waypoint 58 Reached - Say Line 1"),
(@ENTRY,0,6,0,61,0,100,0,58,@ENTRY*100+00,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Melizza Brimbuzzle - On Waypoint 58 Reached - Set Active On"),
(@ENTRY,0,7,8,40,0,100,0,69,@ENTRY*100+01,0,0,54,10000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Melizza Brimbuzzle - On Waypoint 69 Reached - Pause Waypoint"),
(@ENTRY,0,8,0,61,0,100,0,69,@ENTRY*100+01,0,0,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"Melizza Brimbuzzle - On Waypoint 69 Reached - Run Script"),
(@ENTRY,0,9,0,40,0,100,0,93,@ENTRY*100+01,0,0,41,3000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Melizza Brimbuzzle - On Waypoint 93 Reached - Despawn In 3000 ms"),
(@ENTRY,0,10,0,11,0,100,0,0,0,0,0,81,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Melizza Brimbuzzle - On Respawn - Set Npc Flag Questgiver"),
(@ENTRY,0,11,0,40,0,100,1,57,@ENTRY*100+00,0,0,80,@ENTRY*100+01,0,0,0,0,0,1,0,0,0,0,0,0,0,"Melizza Brimbuzzle - On Waypoint 57 Reached - Run Script (No Repeat)");

-- Vagath SAI
SET @ENTRY := 21768;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,40,0,100,0,2,21768,0,0,54,15000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vagath - On Reached WP2 - Pause WP"),
(@ENTRY,0,2,3,40,0,100,0,4,21768,0,0,41,0,0,0,0,0,0,9,21776,0,100,0,0,0,0,"Vagath - On Reached WP4 - Despawn Illidari Temptress"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vagath - On Reached WP4 - Despawn");

-- Akama SAI
SET @ENTRY := 22990;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,40,0,100,0,2,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Akama - On waypoint2 - Start Script"),
(@ENTRY,0,2,0,40,0,100,0,6,0,0,0,11,39932,0,0,0,0,0,1,0,0,0,0,0,0,0,"Akama - On waypoint3 - Cast Spell"),
(@ENTRY,0,3,0,0,0,100,0,1000,1000,4000,4000,11,39945,2,0,0,0,0,2,0,0,0,0,0,0,0,"Akama - IC - Cast Spell");


-- Lady Sinestra SAI
SET @ENTRY := 23284;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,40,0,100,0,1,@ENTRY*100+00,0,0,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sinestra - On wp1 - Action list"),
(@ENTRY,0,2,0,40,0,100,0,4,@ENTRY*100+00,0,0,80,@ENTRY*100+01,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sinestra - On wp4 - Action list"),
(@ENTRY,0,3,0,58,0,100,0,7,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sinestra - On wp Ended - Despawn");

-- The Lich King SAI
SET @ENTRY := 37857;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,40,0,100,0,11,37857,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"The Lich King - On Reached WP11 - Run Script");

-- Highlord Tirion Fordring SAI
SET @ENTRY := 32239;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,10200,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Highlord Tirion Fordring - On Gossip Select - Close Gossip Menu"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Highlord Tirion Fordring - On Gossip Select - Set Npc Flags"),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,9,32241,0,200,0,0,0,0,"Highlord Tirion Fordring - On Gossip Select - Set Data Disguised Crusader"),
(@ENTRY,0,3,4,61,0,100,0,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Highlord Tirion Fordring - On Gossip Select - Set Emote State 0"),
(@ENTRY,0,4,5,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Highlord Tirion Fordring - On Gossip Select - Say Line 0"),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,91,35536,0,0,0,0,0,1,0,0,0,0,0,0,0,"Highlord Tirion Fordring - On Gossip Select - Start WP"),
(@ENTRY,0,7,8,40,0,100,1,5,32239,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Highlord Tirion Fordring - On Reached WP5 - Say Line 1"),
(@ENTRY,0,8,0,61,0,100,0,0,0,0,0,12,32272,1,300000,0,0,0,8,0,0,0,6131.26,2763.73,573.997,5.13127,"Highlord Tirion Fordring - On Reached WP5 - Summon High Invoker Basaleph"),
(@ENTRY,0,9,0,40,0,100,1,13,32239,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Highlord Tirion Fordring - On Reached WP13 - Run Script"),
(@ENTRY,0,11,13,40,0,100,1,3,@ENTRY*100+00,0,0,71,0,0,13262,0,0,0,1,0,0,0,0,0,0,0,"Highlord Tirion Fordring - On Reached WP3 (Path2) - Equip Item"),
(@ENTRY,0,12,0,38,0,100,0,2,2,0,0,11,60456,0,0,0,0,0,19,32184,0,0,0,0,0,0,"Highlord Tirion Fordring - On Data Set - Cast Tirion Smashes Heart"),
(@ENTRY,0,13,0,61,0,100,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Highlord Tirion Fordring - On Reached WP3 (Path 2) - Set Home Position"),
(@ENTRY,0,14,15,38,0,100,0,3,3,0,0,66,0,0,0,0,0,0,19,32184,0,0,0,0,0,0,"Highlord Tirion Fordring - On Data Set - Set Orientation"),
(@ENTRY,0,15,0,61,0,100,0,0,0,0,0,90,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"Highlord Tirion Fordring - On Data Set - Set Bytes 1"),
(@ENTRY,0,16,0,38,0,100,0,6,6,0,0,41,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Highlord Tirion Fordring - On Data Set - Despawn");

-- Archmage Rhydian SAI
SET @ENTRY := 33696;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,1,1,0,0,1,0,2000,0,0,0,0,1,0,0,0,0,0,0,0,"Archmage Rhydian - On Data Set - Say Line 0"),
(@ENTRY,0,2,3,40,0,100,0,8,33696,0,0,54,8000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Archmage Rhydian - On Reached WP8 - Pause WP"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Archmage Rhydian - On Reached WP8 - Say Line 1"),
(@ENTRY,0,4,0,40,0,100,0,10,33696,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,5.91667,"Archmage Rhydian - On Reached WP10 - Set Orientation");

-- Automated Lab Transport SAI
SET @ENTRY := 36098;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,1,1,1,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"q14310 - Automated Lab Transport despawn self on activate event"),
(@ENTRY,0,1,2,54,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"q14310 - Automated Lab Transport set phase 1 on event spawn"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,44,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"q14310 - Automated Lab Transport set phasemask"),
(@ENTRY,0,4,5,40,0,100,0,44,36098,0,0,11,68379,3,0,0,0,0,18,15,0,0,0,0,0,0,"q14310 - Automated Lab Transport on waypoint END cast killcredit"),
(@ENTRY,0,5,6,61,0,100,0,0,0,0,0,41,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,"q14310 - Automated Lab Transport on waypoint END Despawn"),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,36061,15,0,0,0,0,0,"q14310 - Automated Lab Transport on waypoint END activate Research Intern talking");

-- The Lich King SAI
SET @ENTRY := 28498;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,2,40,0,100,0,2,0,0,0,54,83000,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Lich King - On WP 2 - Pause movement 83 seconds"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"The Lich King - On WP 2 - Run script"),
(@ENTRY,0,3,4,40,0,100,0,3,0,0,0,45,0,2,0,0,0,0,10,127495,0,0,0,0,0,0,"The Lich King - On WP 3 - Despawn"),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Lich King - On WP 3 - Despawn"),
(@ENTRY,0,5,0,54,0,100,0,0,0,0,0,53,0,@ENTRY*100+00,0,0,0,0,1,0,0,0,0,0,0,0,"The Lich King - On Just Summoned - Start Waypoint"),
(@ENTRY,0,6,0,40,0,100,0,4,@ENTRY*100+00,0,0,1,7,0,0,0,0,0,19,28998,0,0,0,0,0,0,"The Lich King - Reached WP4 - Say"),
(@ENTRY,0,7,0,40,0,100,0,8,@ENTRY*100+00,0,0,80,@ENTRY*100+01,2,0,0,0,0,1,0,0,0,0,0,0,0,"The Lich King - Reached WP8 - Run Script"),
(@ENTRY,0,8,9,40,0,100,0,4,@ENTRY*100+01,0,0,45,2,2,0,0,0,0,10,98914,28960,0,0,0,0,0,"The Lich King - Reached WP4 (Path 2) - Set Data"),
(@ENTRY,0,9,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Lich King - Reached WP4 (Path 2) - Despawn");

-- Warmage Preston SAI
SET @ENTRY := 25732;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,61,0,100,0,1,1,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warmage Preston - On Data Set 1 1 - Set Active On"),
(@ENTRY,0,2,0,40,0,100,0,1,25732,0,0,54,10000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warmage Moran - On Waypoint 1 Reached - Pause Waypoint");

-- Shadow's Edge SAI
SET @ENTRY := 38191;
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;

-- Borak, Son of Oronok SAI
SET @ENTRY := 21686;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,2,40,0,100,0,18,21686,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Borak, Son of Oronok - On Reached WP18 - Set Home Position"),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,2,495,0,0,0,0,0,1,0,0,0,0,0,0,0,"Borak, Son of Oronok - On Reached WP18 - Set Faction"),
(@ENTRY,0,3,4,61,0,100,0,0,0,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Borak, Son of Oronok - On Reached WP18 - Set Unit Flags"),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Borak, Son of Oronok - On Reached WP18 - Set Aggresive"),
(@ENTRY,0,5,0,38,0,100,0,2,2,0,0,49,0,0,0,0,0,0,19,21181,0,0,0,0,0,0,"Borak, Son of Oronok - On Data Set - Start Attack"),
(@ENTRY,0,6,0,9,0,100,0,0,5,3000,6000,11,27611,0,0,0,0,0,1,0,0,0,0,0,0,0,"Borak, Son of Oronok - On Range - Cast Eviscerate"),
(@ENTRY,0,7,0,9,0,100,0,0,5,15000,18000,11,30470,0,0,0,0,0,1,0,0,0,0,0,0,0,"Borak, Son of Oronok - On Range - Cast Slice and Dice"),
(@ENTRY,0,8,0,38,0,100,0,3,3,0,0,71,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Borak, Son of Oronok - On Data Set 3 3 - Unequip weapon"),
(@ENTRY,0,10,0,40,0,100,0,1,@ENTRY*100+00,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,1.66084,"Borak, Son of Oronok - On Reached WP1 (Path 2) - Set Orientation");

-- Hunter of the Hand SAI
SET @ENTRY := 17875;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,2,40,0,100,0,7,17875,0,0,66,0,0,0,0,0,0,19,17843,0,0,0,0,0,0,"Hunter of the Hand - On Reached WP7 - Set Orientation"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hunter of the Hand - On Reached WP7 - Set Bytes 1"),
(@ENTRY,0,3,4,38,0,100,0,2,2,0,0,29,10,0,0,0,0,0,19,17843,0,0,0,0,0,0,"Hunter of the Hand - On Data Set - Start Closest path"),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hunter of the Hand - On Data Set - Run Script"),
(@ENTRY,0,5,6,38,0,100,0,3,3,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hunter of the Hand - On Data Set - Remove Bytes 1"),
(@ENTRY,0,6,7,61,0,100,0,0,0,0,0,5,15,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hunter of the Hand - On Data Set - Play emote OneShotRoar"),
(@ENTRY,0,8,0,40,0,100,0,9,@ENTRY*100+00,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hunter of the Hand - On Reached WP9 (Path 06) - Despawn");

-- Archaeologist Adamant Ironheart SAI
SET @ENTRY := 17242;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,2,0,40,0,100,0,1,@ENTRY*100+01,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,6.26573,"Archaeologist Adamant Ironheart - On Reached WP1 (Path 2) - Set Orientation");

-- Grom'tor, Son of Oronok SAI
SET @ENTRY := 21687;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,2,40,0,100,0,17,21687,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gromtor, Son of Oronok - On Reached WP17 - Set Home Position"),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gromtor, Son of Oronok - On Reached WP17 - Set Unit Flags"),
(@ENTRY,0,3,4,61,0,100,0,0,0,0,0,2,495,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gromtor, Son of Oronok - On Reached WP17 - Set Faction"),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gromtor, Son of Oronok - On Reached WP17 - Set Aggresive"),
(@ENTRY,0,5,0,38,0,100,0,2,2,0,0,49,0,0,0,0,0,0,19,21181,0,0,0,0,0,0,"Gromtor, Son of Oronok - On Data Set - Start Attack"),
(@ENTRY,0,6,0,4,0,100,0,0,0,0,0,11,31403,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gromtor, Son of Oronok - On Agro - Cast Battle Shout"),
(@ENTRY,0,7,0,9,0,100,0,0,5,3000,7000,11,29426,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gromtor, Son of Oronok - On Range - Cast Heroic Strike"),
(@ENTRY,0,8,0,9,0,100,0,0,5,8000,13000,11,12169,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gromtor, Son of Oronok - On Range - Cast Shield Block"),
(@ENTRY,0,9,0,9,0,100,0,0,5,18000,23000,11,15062,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gromtor, Son of Oronok - On Range - Cast Shield Wall"),
(@ENTRY,0,10,0,0,0,100,0,0,5000,5000,8000,11,26281,0,0,0,0,0,2,0,0,0,0,0,0,0,"Gromtor, Son of Oronok - IC - Cast Taunt"),
(@ENTRY,0,11,0,2,0,100,0,0,40,5000,8000,45,4,4,0,0,0,0,19,21685,0,0,0,0,0,0,"Gromtor, Son of Oronok - On Less than 40% HP - Set Data Oronok Torn-heart"),
(@ENTRY,0,12,0,38,0,100,0,3,3,0,0,71,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gromtor, Son of Oronok - On Data Set 3 3 - Unequip weapon"),
(@ENTRY,0,14,0,40,0,100,0,1,@ENTRY*100+00,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,1.50312,"Gromtor, Son of Oronok - On Reached WP1 (Path 2) - Set Orientation");

-- The Chef SAI
SET @ENTRY := 47405;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,2,40,0,100,0,2,47405,0,0,54,11000,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Chef - On Waypoint 2 Reached - Pause Waypoint"),
(@ENTRY,0,2,0,61,0,100,0,2,47405,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Chef - On Waypoint 2 Reached - Set Emote State 233"),
(@ENTRY,0,3,4,40,0,100,0,3,47405,0,0,54,10000,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Chef - On Waypoint 3 Reached - Pause Waypoint"),
(@ENTRY,0,4,0,61,0,100,0,3,47405,0,0,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Chef - On Waypoint 3 Reached - Set Emote State 69"),
(@ENTRY,0,5,0,40,0,100,0,4,47405,0,0,17,26,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Chef - On Waypoint 4 Reached - Set Emote State 26");

-- Tiny Arcane Construct SAI
SET @ENTRY := 18237;
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;

-- Perry Gatner SAI
SET @ENTRY := 19228;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,2,40,0,100,0,3,19228,0,0,54,220000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Perry Gatner - On Reached WP3 - Pause WP"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Perry Gatner - On Reached WP3 - Run Script 1"),
(@ENTRY,0,3,0,40,0,100,0,6,19228,0,0,41,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Perry Gatner - On Reached WP6 - Despawn"),
(@ENTRY,0,4,0,40,0,100,0,2,19228,0,0,80,@ENTRY*100+01,0,0,0,0,0,1,0,0,0,0,0,0,0,"Perry Gatner - On Reached WP2 - Run Script 2"),
(@ENTRY,0,5,0,40,0,100,0,4,19228,0,0,80,@ENTRY*100+02,0,0,0,0,0,1,0,0,0,0,0,0,0,"Perry Gatner - On Reached WP6 - Run Script 3");

-- Axle SAI
SET @ENTRY := 23995;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,2,40,0,100,0,4,23995,0,0,54,24000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Axle - On Waypoint 4 Reached - Pause Waypoint"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"Axle - On Waypoint 4 Reached - Run Script"),
(@ENTRY,0,3,4,40,0,100,0,8,23995,0,0,54,140000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Axle - On Waypoint 8 Reached - Pause Waypoint"),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,66,23995,0,0,0,0,0,1,0,0,0,0,0,0,0,"Axle - On Waypoint 8 Reached - Set Orientation Home Position"),
(@ENTRY,0,5,6,62,0,100,0,9123,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Axle - On Gossip Option 0 Selected - Close Gossip"),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,85,24751,0,0,0,0,0,7,0,0,0,0,0,0,0,"Axle - On Gossip Option 0 Selected - Invoker Cast 'Trick or Treat'");

-- Scout Vor'takh SAI
SET @ENTRY := 26666;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,40,0,100,0,6,26666,0,0,54,32000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scout Vor'takh - On On reached wp6 - Pause WP"),
(@ENTRY,0,2,0,40,0,100,0,7,26666,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,4.55531,"Scout Vor'takh - On On reached wp7 - Set Orientation");

-- Buddy SAI
SET @ENTRY := 17953;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,1,1,0,0,29,0,0,0,0,0,0,19,17831,0,0,0,0,0,0,"Buddy - On Data Set - Follow Watcher Leesa'oh "),
(@ENTRY,0,1,2,1,0,100,0,0,30000,60000,75000,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0,"Buddy - OOC - Play emote OneShotAttack1H"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,4,643,0,0,0,0,0,1,0,0,0,0,0,0,0,"Buddy - OOC - Play Sound ID 643"),
(@ENTRY,0,3,0,25,0,100,0,0,0,0,0,89,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"Buddy - On Reset Set Random Movement"),
(@ENTRY,0,4,5,38,0,100,0,2,2,0,0,29,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Buddy - On Data Set - Follow Watcher Leesa'oh "),
(@ENTRY,0,6,0,40,0,100,0,1,17953,0,0,89,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"Buddy - On Reached WP1 - Set Random Movement");

-- Kyle the Frenzied SAI
SET @ENTRY := 23616;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,2,8,0,100,0,42222,0,55000,55000,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,"Kyle the Frenzied - On Spellhit 'Lunch for Kyle' - Store Targetlist"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Kyle the Frenzied - On Spellhit 'Lunch for Kyle' - Run Script");

-- Lou the Cabin Boy SAI
SET @ENTRY := 27923;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,28,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lou the Cabin Boy - On Passenger Removed - Despawn Instant"),
(@ENTRY,0,2,0,54,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lou the Cabin Boy - On Just Summoned - Set Reactstate Passive"),
(@ENTRY,0,3,0,40,0,100,0,13,27923,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lou the Cabin Boy - On Waypoint 13 Reached - Despawn Instant");

-- King Jokkum SAI
SET @ENTRY := 30331;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jokkum - JustSummoned - Talk1"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,18,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jokkum - JustSummoned - Add unit flag"),
(@ENTRY,0,3,0,40,0,100,0,22,@ENTRY*100+00,0,0,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jokkum - On way pont 22 - Actionlist");

-- Crusade Commander Korfax SAI
SET @ENTRY := 28175;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,38,0,100,0,1,1,0,0,66,0,0,0,0,0,0,19,28244,0,0,0,0,0,0,"Crusade Commander Korfax - On Data Set 1 1 - Set Orientation"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crusade Commander Korfax - On Data Set 1 1 - Say Line 1"),
(@ENTRY,0,3,0,40,0,100,0,1,28175,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Crusade Commander Korfax - On Reached WP4 - Run Script"),
(@ENTRY,0,4,0,40,0,100,0,1,28175,0,0,54,18000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crusade Commander Korfax - On Reached WP3 - Pause WP"),
(@ENTRY,0,5,0,40,0,100,0,5,28175,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,1.54325,"Crusade Commander Korfax - On Reached WP5 - Set Orientation");

-- Lady Jaina Proudmoore SAI
SET @ENTRY := 35320;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,40,0,100,0,11,35320,0,0,54,70000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Jaina Proudmoore - On Reached WP13 - Pause WP"),
(@ENTRY,0,2,0,40,0,100,0,16,35320,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Jaina Proudmoore - On Reached WP18 - Despawn"),
(@ENTRY,0,3,0,38,0,100,0,1,1,0,0,66,0,0,0,0,0,0,19,35361,0,0,0,0,0,0,"Lady Jaina Proudmoore - On Data Set 1 1 - Face Tirion");

-- Blood Lord Zarath SAI
SET @ENTRY := 21410;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,2,61,0,100,1,0,0,0,0,45,1,1,0,0,0,0,11,21293,500,0,0,0,0,0,"Blood Lord Zarath - On Just Summoned - Set Data 1 1"),
(@ENTRY,0,2,0,61,0,100,1,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Blood Lord Zarath - On Just Summoned - Set Reactstate Aggressive"),
(@ENTRY,0,3,0,38,0,100,0,0,1,0,0,66,0,0,0,0,0,0,19,21409,10,0,0,0,0,0,"Blood Lord Zarath - On Data Set 0 1 - Set Orientation Closest Creature 'Envoy Icarius'"),
(@ENTRY,0,4,5,38,0,100,0,1,1,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,4.716,"Blood Lord Zarath - On Data Set 1 1 - Set Orientation 5"),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Blood Lord Zarath - On Data Set 1 1 - Run Script"),
(@ENTRY,0,6,0,40,0,100,0,1,21410,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Blood Lord Zarath - On Waypoint 1 Reached - Set Home Position");

-- Olum's Spirit SAI
SET @ENTRY := 22870;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,54,0,100,0,0,0,0,0,11,36545,0,0,0,0,0,1,0,0,0,0,0,0,0,"Olums Spirit - On Just Summoned - Cast Floating Drowned"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,11,36550,0,0,0,0,0,1,0,0,0,0,0,0,0,"Olums Spirit - On Just Summoned - Cast Floating Drowned"),
(@ENTRY,0,3,0,40,0,100,0,1,22870,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Olums Spirit - On Reached WP1 - Despawn");

-- Garrosh Hellscream SAI
SET @ENTRY := 25237;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,6,40,0,100,0,2,@ENTRY*100+00,0,0,54,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream - On Reached WP 2 (Path 1) - Pause WP"),
(@ENTRY,0,1,0,40,0,100,0,3,@ENTRY*100+00,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,3.82227,"Garrosh Hellscream - On Reached WP 3 (Path 1) - Set Orientation"),
(@ENTRY,0,2,6,40,0,100,0,3,@ENTRY*100+01,0,0,54,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream - On Reached WP 3 (Path 2) - Pause WP"),
(@ENTRY,0,3,0,40,0,100,0,5,@ENTRY*100+01,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,3.82227,"Garrosh Hellscream - On Reached WP 5 (Path 2) - Set Orientation"),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,11,45404,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream - Link - Cast Crush Under Foot");

-- Skeletal Assault Gryphon SAI
SET @ENTRY := 31157;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,2,40,0,100,0,35,31157,0,0,11,50630,2,0,0,0,0,1,0,0,0,0,0,0,0,"Skeletal Assault Gryphon - On Waypoint 35 Reached - Cast 'Eject All Passengers'"),
(@ENTRY,0,2,0,61,0,100,0,36,31157,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Skeletal Assault Gryphon - On Waypoint 36 Reached - Despawn In 1000 ms");

-- Daphne Stilwell SAI
SET @ENTRY := 6182;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,19,0,100,0,1651,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daphne Stilwell - On Accepted Quest 'The Tome of Valor' - Say Line 0"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,"Daphne Stilwell - Link With Previous - Store Target List"),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,83,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daphne Stilwell - Link With Previous - Remove npcflag 'Quest Giver'"),
(@ENTRY,0,3,4,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daphne Stilwell - Link With Previous - Set Event Phase to 1"),
(@ENTRY,0,5,0,40,0,100,0,5,6182,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Daphne Stilwell - On WP 5 Reached - Call TAL 618200"),
(@ENTRY,0,6,0,40,0,100,0,8,6182,0,0,80,@ENTRY*100+01,2,0,0,0,0,1,0,0,0,0,0,0,0,"Daphne Stilwell - On WP 8 Reached - Call TAL 618201"),
(@ENTRY,0,7,8,38,2,100,0,1,1,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daphne Stilwell - On Data Set 1 1(phase 2) - Remove Root"),
(@ENTRY,0,8,0,61,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daphne Stilwell - Link With Previous - Say Line 1"),
(@ENTRY,0,9,0,40,2,100,0,9,6182,0,0,80,@ENTRY*100+02,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daphne Stilwell - On WP 9 Reached - Call TAL 618202"),
(@ENTRY,0,10,11,38,4,100,0,1,1,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daphne Stilwell - On Data Set 1 1(phase 3) - Remove Root"),
(@ENTRY,0,11,0,61,0,100,0,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daphne Stilwell - Link With Previous - Say Line 2"),
(@ENTRY,0,12,0,40,0,100,0,10,6182,0,0,80,@ENTRY*100+03,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daphne Stilwell - On WP 10 Reached - Call TAL 618203"),
(@ENTRY,0,13,14,38,8,100,0,1,1,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daphne Stilwell - On Data Set 1 1(phase 4) - Remove Root"),
(@ENTRY,0,14,0,61,0,100,0,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daphne Stilwell - Link With Previous - Say Line 3"),
(@ENTRY,0,15,0,40,8,100,0,11,6182,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daphne Stilwell - On WP 11 Reached - Disable Run"),
(@ENTRY,0,16,0,40,8,100,0,12,6182,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daphne Stilwell - On WP 12 Reached - Say Line 4"),
(@ENTRY,0,17,18,40,8,100,0,14,6182,0,0,54,3000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daphne Stilwell - On WP 14 Reached - Pause WP"),
(@ENTRY,0,18,19,61,8,100,0,0,0,0,0,40,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daphne Stilwell - Link With Previous - Set Sheath to 0"),
(@ENTRY,0,19,0,61,8,100,0,0,0,0,0,5,432,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daphne Stilwell - Link With Previous - Play Emote"),
(@ENTRY,0,20,21,40,8,100,0,18,6182,0,0,15,1651,0,0,0,0,0,12,1,0,0,0,0,0,0,"Daphne Stilwell - On WP 18 Reached - Area Explored Or Event Happens"),
(@ENTRY,0,21,0,61,8,100,0,0,0,0,0,82,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daphne Stilwell - Link With Previous - Add npcflag 'Quest Giver'"),
(@ENTRY,0,22,0,0,0,100,0,0,0,0,0,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,"Daphne Stilwell - In Combat - Cast spell 'Shoot'"),
(@ENTRY,0,23,24,11,0,100,0,0,0,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daphne Stilwell - On Respawn - Remove Root"),
(@ENTRY,0,24,0,61,0,100,0,0,0,0,0,40,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daphne Stilwell - Link With Previous - Set Sheath to 0"),
(@ENTRY,0,25,26,40,0,100,0,19,6182,0,0,55,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daphne Stilwell - On WP 19 Reached - Stop WP"),
(@ENTRY,0,26,0,61,0,100,0,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daphne Stilwell - Link With Previous - Evade");

-- Sentinel Selarin SAI
SET @ENTRY := 3694;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,40,0,100,0,23,3694,0,0,41,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sentinel Selarin - On Waypoint 23 Reached - Despawn Instant"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sentinel Selarin - On Just Summoned - Set Active On"),
(@ENTRY,0,3,0,40,0,100,0,1,3694,0,0,54,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sentinel Selarin - On Waypoint 1 Reached - Pause Waypoint"),
(@ENTRY,0,4,0,40,0,100,0,12,3694,0,0,54,120000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sentinel Selarin - On Waypoint 12 Reached - Pause Waypoint");

-- Sagan SAI
SET @ENTRY := 19482;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,38,0,100,0,1,1,0,0,11,34718,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sagan <Ravandwyrs Familiar> - On Data Set - Cast Transform Sagan (Skunk)"),
(@ENTRY,0,2,0,38,0,100,0,2,2,0,0,28,34718,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sagan <Ravandwyrs Familiar> - On Data Set - Remove Aura Transform Sagan (Skunk)");

-- Iron Rune Construct SAI
SET @ENTRY := 24806;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,25,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Iron Rune Construct - Just Summoned - Set phase 1"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,50,186952,60,0,0,0,0,1,0,0,0,0,0,0,0,"Iron Rune Construct - Just Summoned - SummonGob"),
(@ENTRY,0,2,3,8,1,100,0,44498,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Iron Rune Construct - spell hit - Say text"),
(@ENTRY,0,3,4,61,0,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Iron Rune Construct - spell hit - Set phase 2"),
(@ENTRY,0,4,5,61,0,100,0,0,0,0,0,60,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Iron Rune Construct - spell hit - Set fly"),
(@ENTRY,0,6,7,61,0,100,0,0,0,0,0,9,0,0,0,0,0,0,14,65653,186956,0,0,0,0,0,"Iron Rune Construct - spell hit - Activate Gobject"),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,80,2471700,0,0,0,0,0,19,24717,30,0,0,0,0,0,"Iron Rune Construct - spell hit - ActionList"),
(@ENTRY,0,8,9,40,0,100,0,5,24806,0,0,11,44499,0,0,0,0,0,23,0,0,0,0,0,0,0,"Iron Rune Construct - Waypoint reached - cast credit spell"),
(@ENTRY,0,9,10,61,0,100,0,0,0,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Iron Rune Construct - Waypoint reached - Set phase 3"),
(@ENTRY,0,10,0,61,0,100,0,0,0,0,0,9,0,0,0,0,0,0,14,65654,186957,0,0,0,0,0,"Iron Rune Construct - Just Summoned - Activate gob"),
(@ENTRY,0,11,0,1,4,100,1,7000,7000,0,0,28,46598,0,0,0,0,0,1,0,0,0,0,0,0,0,"Iron Rune Construct - OOC (phase 3) - Remove Vehicle aura");


-- Thassarian SAI
SET @ENTRY := 32310;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,2,40,0,100,0,8,32310,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Thassarian - On Data Set - Set Home Position"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Thassarian - On Data Set - Set Hostile"),
(@ENTRY,0,4,5,38,0,100,0,3,3,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Thassarian - On Data Set - Set Passive"),
(@ENTRY,0,5,6,61,0,100,0,0,0,0,0,41,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Thassarian - On Data Set - Despawn After 30 seconds"),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Thassarian - On Data Set - Evade");

-- Thrall SAI
SET @ENTRY := 35368;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,54,0,100,0,0,0,0,0,45,1,1,0,0,0,0,9,35460,0,200,0,0,0,0,"Thrall - On Just Summoned - Set Data 1 1 on Kor Kron Elite"),
(@ENTRY,0,2,3,40,0,100,0,7,35368,0,0,54,39000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Thrall - On Reached WP7 - Pause WP"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Thrall - On Reached WP7 - Run Script 1"),
(@ENTRY,0,4,5,40,0,100,0,12,35368,0,0,54,85000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Thrall - On Reached WP12 - Pause WP"),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+01,2,0,0,0,0,1,0,0,0,0,0,0,0,"Thrall - On Reached WP15 - Run Script 2"),
(@ENTRY,0,6,7,40,0,100,0,19,35368,0,0,45,2,2,0,0,0,0,9,35460,0,200,0,0,0,0,"Thrall - On Reached WP19 - Set Data 2 2 on Kor Kron Elite"),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Thrall - On Reached WP19 - Despawn");

-- Dusk SAI
SET @ENTRY := 28182;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,40,0,100,0,21,28182,0,0,41,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dusk - On Waypoint 21 Reached - Despawn Instant"),
(@ENTRY,0,2,0,54,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dusk - On Just Summoned - Set Reactstate Passive"),
(@ENTRY,0,3,0,28,0,100,0,0,0,0,0,41,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dusk - On Passenger Removed - Despawn Instant");

-- Bouldercrag the Rockshaper SAI
SET @ENTRY := 29801;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,100,1,0,30,0,0,11,56330,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cast Iron's Bane at 30% HP"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,83,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"On link - Remove npc flags"),
(@ENTRY,0,3,4,58,0,100,0,0,0,0,0,66,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"On WP end - Set orientation"),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"On link - Start script"),
(@ENTRY,0,5,6,38,0,100,0,1,1,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,"On data - Despawn"),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"On data - Talk");

-- Audrid SAI
SET @ENTRY := 18903;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,11,40,0,100,0,4,18903,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - On Reached WP4 - Pause WP"),
(@ENTRY,0,2,12,40,0,100,0,9,18903,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - On Reached WP9 - Pause WP"),
(@ENTRY,0,3,13,40,0,100,0,11,18903,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - On Reached WP11 - Pause WP"),
(@ENTRY,0,4,14,40,0,100,0,12,18903,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - On Reached WP12 - Pause WP"),
(@ENTRY,0,5,15,40,0,100,0,13,18903,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - On Reached WP13 - Pause WP"),
(@ENTRY,0,6,16,40,0,100,0,14,18903,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - On Reached WP14 - Pause WP"),
(@ENTRY,0,7,17,40,0,100,0,17,18903,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - On Reached WP17 - Pause WP"),
(@ENTRY,0,8,18,40,0,100,0,22,18903,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - On Reached WP22 - Pause WP"),
(@ENTRY,0,9,19,40,0,100,0,25,18903,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - On Reached WP25 - Pause WP"),
(@ENTRY,0,10,20,40,0,100,0,28,18903,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - On Reached WP29 - Pause WP"),
(@ENTRY,0,11,21,61,0,100,0,0,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - Linked with Previous Event - Run Script 1"),
(@ENTRY,0,12,22,61,0,100,0,0,0,0,0,80,@ENTRY*100+01,2,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - Linked with Previous Event - Run Script 2"),
(@ENTRY,0,13,22,61,0,100,0,0,0,0,0,80,@ENTRY*100+02,2,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - Linked with Previous Event - Run Script 3"),
(@ENTRY,0,14,21,61,0,100,0,0,0,0,0,80,@ENTRY*100+03,2,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - Linked with Previous Event - Run Script 4"),
(@ENTRY,0,14,23,61,0,100,0,12,18903,0,0,80,@ENTRY*100+03,2,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - On Waypoint 12 Reached - Run Script"),
(@ENTRY,0,15,21,61,0,100,0,0,0,0,0,80,@ENTRY*100+04,2,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - Linked with Previous Event - Run Script 5"),
(@ENTRY,0,16,24,61,0,100,0,0,0,0,0,80,@ENTRY*100+05,2,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - Linked with Previous Event - Run Script 6"),
(@ENTRY,0,17,22,61,0,100,0,0,0,0,0,80,@ENTRY*100+06,2,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - Linked with Previous Event - Run Script 7"),
(@ENTRY,0,18,21,61,0,100,0,0,0,0,0,80,@ENTRY*100+07,2,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - Linked with Previous Event - Run Script 8"),
(@ENTRY,0,19,21,61,0,100,0,0,0,0,0,80,@ENTRY*100+08,2,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - Linked with Previous Event - Run Script 9"),
(@ENTRY,0,20,21,61,0,100,0,0,0,0,0,80,@ENTRY*100+09,2,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - Linked with Previous Event - Run Script 10"),
(@ENTRY,0,21,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,1.5,"Audrid - Linked with Previous Event - Set Orientation"),
(@ENTRY,0,22,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,3,"Audrid - Linked with Previous Event - Set Orientation"),
(@ENTRY,0,23,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,4.5,"Audrid - Linked with Previous Event - Set Orientation"),
(@ENTRY,0,24,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,6,"Audrid - Linked with Previous Event - Set Orientation");

-- Envoy Icarius SAI
SET @ENTRY := 21409;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Envoy Icarius - On Just Summoned - Set Reactstate Aggressive"),
(@ENTRY,0,2,0,40,0,100,0,1,21409,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Envoy Icarius - On Waypoint 1 Reached - Run Script"),
(@ENTRY,0,3,0,4,1,100,1,0,0,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"Envoy Icarius - On Aggro - Say Line 6");

-- Lady Sinestra SAI
SET @ENTRY := 23283;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,58,0,100,0,1,@ENTRY*100+00,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sinestra - On way point ended - action list");

-- Feero Ironhand SAI
SET @ENTRY := 4484;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,19,0,100,1,976,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,"Feero Ironhand - On Quest Accept (Supplies to Aubderdine) - Store Targetlist "),
(@ENTRY,0,1,2,61,0,100,1,0,0,0,0,2,774,0,0,0,0,0,1,0,0,0,0,0,0,0,"Feero Ironhand - On Quest Accept (Supplies to Aubderdine) - Set Faction"),
(@ENTRY,0,2,3,61,0,100,1,0,0,0,0,19,512,0,0,0,0,0,1,0,0,0,0,0,0,0,"Feero Ironhand - On Quest Accept (Supplies to Aubderdine) - Remove Unit Flags"),
(@ENTRY,0,3,0,61,0,100,1,0,0,0,0,1,7,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Feero Ironhand - On Quest Accept (Supplies to Aubderdine) - Say Line 7"),
(@ENTRY,0,4,0,7,0,100,0,0,0,0,0,19,512,0,0,0,0,0,1,0,0,0,0,0,0,0,"Feero Ironhand - On Evade - Remove Unit Flags"),
(@ENTRY,0,5,6,40,0,100,1,18,4484,0,0,1,0,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Feero Ironhand - On Reached WP18 - Say Line 0"),
(@ENTRY,0,6,7,61,0,100,1,0,0,0,0,107,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Feero Ironhand - On Reached WP18 - Summon Summon Group 0"),
(@ENTRY,0,7,0,61,0,100,1,0,0,0,0,54,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Feero Ironhand - On Reached WP18 - Pause WP (2 Seconds)"),
(@ENTRY,0,8,0,40,0,100,1,19,4484,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Feero Ironhand - On Reached WP19 - Say Line 1"),
(@ENTRY,0,9,10,40,0,100,1,27,4484,0,0,1,2,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Feero Ironhand - On Reached WP27 - Say"),
(@ENTRY,0,10,11,61,0,100,1,0,0,0,0,107,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Feero Ironhand - On Reached 27 - Summon Summon Group 1"),
(@ENTRY,0,11,0,61,0,100,1,0,0,0,0,54,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Feero Ironhand - On Reached WP27 - Pause WP (5 Seconds)"),
(@ENTRY,0,12,0,40,0,100,1,28,4484,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Feero Ironhand - On Reached WP28 - Say Line 3"),
(@ENTRY,0,13,14,40,0,100,1,41,4484,0,0,1,4,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Feero Ironhand - On Reached WP41 - Say Line 4"),
(@ENTRY,0,14,15,61,0,100,1,0,0,0,0,107,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Feero Ironhand - On Reached WP41 - Summon Summon Group 2"),
(@ENTRY,0,15,0,61,0,100,1,0,0,0,0,54,10000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Feero Ironhand - On Reached WP41 - Pause WP (10 Seconds)"),
(@ENTRY,0,16,17,40,0,100,1,43,4484,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"Feero Ironhand - On Reached WP43 - Say Line 5"),
(@ENTRY,0,17,18,61,0,100,1,0,0,0,0,15,976,0,0,0,0,0,12,1,0,0,0,0,0,0,"Feero Ironhand - On Reached 43 - Call Areaexploredoreventhappens"),
(@ENTRY,0,18,19,61,0,100,1,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Feero Ironhand - On Reached 43 - Set Run"),
(@ENTRY,0,19,0,61,0,100,1,0,0,0,0,54,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Feero Ironhand - On Reached WP43 - Pause WP (5 Seconds)"),
(@ENTRY,0,20,0,40,0,100,1,45,4484,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Feero Ironhand - On Reached WP45 - Despawn"),
(@ENTRY,0,21,0,6,0,100,1,0,0,0,0,6,976,0,0,0,0,0,12,1,0,0,0,0,0,0,"Feero Ironhand - On Death - Fail Quest"),
(@ENTRY,0,22,0,52,0,100,1,2,4484,0,0,45,1,1,0,0,0,0,9,3893,0,100,0,0,0,0,"Feero Ironhand - On Text Over line 2 - Set Data Forsaken Scout"),
(@ENTRY,0,23,0,52,0,100,1,4,4484,0,0,1,0,5000,0,0,0,0,19,3899,0,0,0,0,0,0,"Feero Ironhand - On Text Over line 4 - Say Line 0 (Balizar the Umbrage)"),
(@ENTRY,0,27,0,52,0,100,1,0,4484,0,0,45,1,1,0,0,0,0,9,3879,0,100,0,0,0,0,"Feero Ironhand - On Text Over line 0 - Set Data Dark Strand assasin");

-- Gharsul the Remorseless SAI
SET @ENTRY := 15958;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,54,0,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gharsul the Remorseless - On Just Summoned - Set Phase 2"),
(@ENTRY,0,2,3,40,0,100,0,1,15958,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gharsul the Remorseless - On Reached WP1 - Set Home position"),
(@ENTRY,0,3,4,61,0,100,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gharsul the Remorseless - On Reached WP1 - Set react state agressive"),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,49,0,0,0,0,0,0,19,15402,0,0,0,0,0,0,"Gharsul the Remorseless - On Reached WP1 - Attack Apprentice Mirveda");

-- Zeev Fizzlespark SAI
SET @ENTRY := 29525;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,1,1,0,0,1,0,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Zeev Fizzlespark - On Data Set - Say Line"),
(@ENTRY,0,2,0,40,0,100,0,8,29525,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zeev Fizzlespark - On Reached WP8 - Despawn");

-- The Lich King SAI
SET @ENTRY := 32184;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,2,40,0,100,0,6,32184,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"The Lich King - On Reached WP8 - Run Script"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Lich King - On Reached WP8 - Set Home Position"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,102,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Lich King - On Reached WP8 - Switch HP Regen off"),
(@ENTRY,0,4,0,38,0,100,0,1,1,0,0,41,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Lich King - On Data Set - Despawn");

-- Crusader Jonathan SAI
SET @ENTRY := 28136;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,54,0,100,0,0,0,0,0,11,50665,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crusader Jonathan - On Just Summoned - Cast 'Bleeding Out'"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,"Crusader Jonathan - On Waypoint 5 Reached - Store Targetlist (No Repeat)"),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,29,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Crusader Jonathan - On Waypoint 5 Reached - Start Follow Invoker (No Repeat)"),
(@ENTRY,0,3,4,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crusader Jonathan - On Waypoint 5 Reached - Set Event Phase 1 (No Repeat)"),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,91,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crusader Jonathan - On Waypoint 5 Reached - Remove Flag Standstate Sit Down (No Repeat)"),
(@ENTRY,0,5,0,23,1,100,1,50665,0,0,0,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crusader Jonathan - On Has Aura 'Bleeding Out' - Run Script (No Repeat)"),
(@ENTRY,0,6,7,40,0,100,1,5,0,0,0,90,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crusader Jonathan - On Waypoint 5 Reached - Set Flag Standstate Sit Down (No Repeat)"),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,41,20000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crusader Jonathan - On Waypoint 5 Reached - Despawn In 20000 ms (No Repeat)"),
(@ENTRY,0,8,9,8,1,100,0,50669,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crusader Jonathan - On Spellhit 'Quest Credit' - Set Event Phase 2 (Phase 1)"),
(@ENTRY,0,9,10,61,0,100,0,0,0,0,0,11,50671,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crusader Jonathan - On Spellhit 'Resuscitate' - Cast 'Kill Credit Jonathan 01'"),
(@ENTRY,0,10,11,61,0,100,0,0,0,0,0,11,50709,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crusader Jonathan - On Spellhit 'Resuscitate' - Cast 'Strip Aura Jonathan 01'"),
(@ENTRY,0,11,12,61,0,100,0,0,0,0,0,86,50680,0,12,1,0,0,1,0,0,0,0,0,0,0,"Crusader Jonathan - On Spellhit 'Resuscitate' - Cross Cast 'Jonathan Kill Credit'"),
(@ENTRY,0,12,13,61,0,100,0,0,0,0,0,86,50710,0,12,1,0,0,1,0,0,0,0,0,0,0,"Crusader Jonathan - On Spellhit 'Resuscitate' - Cross Cast 'Strip Aura Jonanthan'"),
(@ENTRY,0,13,14,61,0,100,0,0,0,0,0,29,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Crusader Jonathan - On Waypoint 5 Reached - Stop Follow  (No Repeat)"),
(@ENTRY,0,14,15,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crusader Jonathan - On Waypoint 5 Reached - Say Line 0 (No Repeat)"),
(@ENTRY,0,16,0,61,0,100,0,0,0,0,0,83,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crusader Jonathan - On Waypoint 5 Reached - Remove Npc Flag Gossip (No Repeat)");

-- Warmage Moran SAI
SET @ENTRY := 25727;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,61,0,100,0,1,1,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warmage Moran - On Data Set 1 1 - Set Active On"),
(@ENTRY,0,2,3,40,0,100,0,1,25727,0,0,54,10000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warmage Moran - On Waypoint 1 Reached - Pause Waypoint"),
(@ENTRY,0,3,0,61,0,100,0,1,25727,0,0,75,42726,0,0,0,0,0,9,25724,0,100,0,0,0,0,"Warmage Moran - On Waypoint 1 Reached - Add Aura 'Cosmetic - Immolation (Whole Body)'");

-- High Abbot Landgren SAI
SET @ENTRY := 27439;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,2,40,0,100,0,2,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"High Abbot Landgren - On Reached WP2 - Say"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,54,6000,0,0,0,0,0,1,0,0,0,0,0,0,0,"High Abbot Landgren - Linked with Previous Event - Pause WP"),
(@ENTRY,0,3,4,40,0,100,0,9,0,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,4.5,"High Abbot Landgren - On Reached WP10 - Set Orientation"),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,1,1,10000,0,0,0,0,21,50,0,0,0,0,0,0,"High Abbot Landgren - Linked with Previous Event - Say"),
(@ENTRY,0,5,0,52,0,100,0,1,27439,0,0,1,2,10000,0,0,0,0,21,50,0,0,0,0,0,0,"High Abbot Landgren - On Text Over Say - Say"),
(@ENTRY,0,6,0,52,0,100,0,2,27439,0,0,1,3,10000,0,0,0,0,21,50,0,0,0,0,0,0,"High Abbot Landgren - On Text Over Say - Say"),
(@ENTRY,0,7,0,52,0,100,0,3,27439,0,0,1,4,10000,0,0,0,0,21,50,0,0,0,0,0,0,"High Abbot Landgren - On Text Over Say - Say"),
(@ENTRY,0,8,9,52,0,100,0,4,27439,0,0,1,5,10000,0,0,0,0,21,50,0,0,0,0,0,0,"High Abbot Landgren - On Text Over Say - Say"),
(@ENTRY,0,9,10,61,0,100,0,0,0,0,0,11,48771,0,0,0,0,0,21,50,0,0,0,0,0,0,"High Abbot Landgren - Linked with Previous Event - Cast A Fall from Grace: Kill Credit"),
(@ENTRY,0,10,11,61,0,100,0,0,0,0,0,15,12274,0,0,0,0,0,21,50,0,0,0,0,0,0,"High Abbot Landgren - Linked with Previous Event - Call Areaexploredoreventhappens"),
(@ENTRY,0,11,12,61,0,100,0,0,0,0,0,11,48773,0,0,0,0,0,1,0,0,0,0,0,0,0,"High Abbot Landgren - Linked with Previous Event - Cast A Fall from Grace: High Abbot Ride Vehicle"),
(@ENTRY,0,12,13,61,0,100,0,0,0,0,0,11,66733,2,0,0,0,0,1,0,0,0,0,0,0,0,"High Abbot Landgren - Linked with Previous Event - Cast Jump Back"),
(@ENTRY,0,13,0,61,0,100,0,0,0,0,0,41,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,"High Abbot Landgren - Linked with Previous Event - Despawn After 2 Seconds");

-- Crusader Josephine SAI
SET @ENTRY := 28148;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,54,0,100,0,0,0,0,0,11,50695,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crusader Josephine - On Just Summoned - Cast 'Bleeding Out'"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,"Crusader Josephine - On Spellhit 'Resuscitate' - Store Targetlist"),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,29,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Crusader Josephine - On Waypoint 4 Reached - Start Follow Invoker (No Repeat)"),
(@ENTRY,0,3,4,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crusader Josephine - On Waypoint 4 Reached - Set Event Phase 1 (No Repeat)"),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,91,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crusader Josephine - On Waypoint 4 Reached - Remove Flag Standstate Sit Down (No Repeat)"),
(@ENTRY,0,5,0,23,1,100,1,50695,0,0,0,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crusader Josephine - On Has Aura 'Bleeding Out' - Run Script (No Repeat)"),
(@ENTRY,0,6,7,40,0,100,1,4,0,0,0,90,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crusader Josephine - On Waypoint 4 Reached - Set Flag Standstate Sit Down (No Repeat)"),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,41,20000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crusader Josephine - On Spellhit 'Quest Credit' - Despawn In 20000 ms (Phase 1)"),
(@ENTRY,0,8,9,8,1,100,0,50669,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crusader Josephine - On Spellhit 'Quest Credit' - Set Event Phase 2 (Phase 1)"),
(@ENTRY,0,9,10,61,0,100,0,0,0,0,0,11,50698,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crusader Josephine - On Just Summoned - Cast 'Kill Credit Jospehine 01'"),
(@ENTRY,0,10,11,61,0,100,0,0,0,0,0,11,50711,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crusader Josephine - On Just Summoned - Cast 'Strip Aura Josephine 01'"),
(@ENTRY,0,11,12,61,0,100,0,0,0,0,0,86,50699,0,12,1,0,0,1,0,0,0,0,0,0,0,"Crusader Josephine - On Just Summoned - Cross Cast 'Josephine Kill Credit'"),
(@ENTRY,0,12,13,61,0,100,0,0,0,0,0,86,50712,0,12,1,0,0,1,0,0,0,0,0,0,0,"Crusader Josephine - On Just Summoned - Cross Cast 'Strip Aura Josephine'"),
(@ENTRY,0,13,14,61,0,100,0,0,0,0,0,29,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Crusader Josephine - On Just Summoned - Stop Follow "),
(@ENTRY,0,14,15,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crusader Josephine - On Just Summoned - Say Line 0"),
(@ENTRY,0,16,0,61,0,100,0,0,0,0,0,83,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crusader Josephine - On Just Summoned - Remove Npc Flag Gossip");


-- Veranus SAI
SET @ENTRY := 30393;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,18,33554432,0,0,0,1,0,1,0,0,0,0,0,0,0,"Veranus - JustSummoned - Set unit_flag not selectable"),
(@ENTRY,0,2,0,40,0,100,0,2,0,0,0,11,50630,0,0,0,0,0,1,0,0,0,0,0,0,0,"Veranus - On waypoint 2 - Eject passenger");

-- Brann Bronzebeard SAI
SET @ENTRY := 34044;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,2,40,0,100,0,11,34044,0,0,54,4000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Brann Bronzebeard - On Reached WP13 - Pause WP"),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Brann Bronzebeard - On Reached WP13 - Say Line 1"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,16128,0,0,0,0,0,0,"Brann Bronzebeard - On Reached WP13 - Set Data On Rhonin"),
(@ENTRY,0,4,0,38,0,100,0,1,1,0,0,41,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Brann Bronzebeard - On Data Set - Despawn");

-- Garrosh Hellscream SAI
SET @ENTRY := 35372;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,40,0,100,0,7,35372,0,0,54,39000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream - On Reached WP10 - Pause WP"),
(@ENTRY,0,3,0,40,0,100,0,12,35372,0,0,54,85000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream - On Reached WP15 - Pause WP"),
(@ENTRY,0,4,0,40,0,100,0,19,35372,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream - On Reached WP22 - Despawn"),
(@ENTRY,0,5,0,38,0,100,0,1,1,0,0,66,0,0,0,0,0,0,19,35368,0,0,0,0,0,0,"Garrosh Hellscream - On Data Set 1 1 - Face Thrall"),
(@ENTRY,0,6,0,38,0,100,0,2,2,0,0,66,0,0,0,0,0,0,19,35361,0,0,0,0,0,0,"Garrosh Hellscream - On Data Set 2 2 - Face Tirion");

-- Eitrigg SAI
SET @ENTRY := 28244;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,20,0,100,0,12584,0,0,0,1,6,0,0,0,0,0,19,28178,0,0,0,0,0,0,"Eitrigg - On Quest Reward (Pure Evil) - Say Line 7 on Avenger Metz"),
(@ENTRY,0,2,3,40,0,100,0,1,28244,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Eitrigg - On Reached WP2 - Run Script"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,54,3000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Eitrigg - On Reached WP2 - Pause WP"),
(@ENTRY,0,4,0,40,0,100,0,3,28244,0,0,54,100000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Eitrigg - On Reached WP3 - Pause WP"),
(@ENTRY,0,5,0,40,0,100,0,4,28244,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,1.56042,"Eitrigg - On Reached WP4 - Set Orientation");

-- Overseer Kraggosh SAI
SET @ENTRY := 36217;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,38,0,100,0,2,2,0,0,66,0,0,0,0,0,0,10,79267,36213,0,0,0,0,0,"Overseer Kraggosh - On Data Set  - Face Kor kron overseer"),
(@ENTRY,0,2,0,40,0,100,0,2,36217,0,0,54,45000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Overseer Kraggosh - On Reached WP2  - Pause WP"),
(@ENTRY,0,3,0,40,0,100,0,5,36217,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,3.12414,"Overseer Kraggosh - On Reached WP5  - Set Orientation");

-- Whisperwind Druid SAI
SET @ENTRY := 48487;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,2,40,0,100,0,1,48487,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Whisperwind Druid - On Waypoint 1 Reached - Run Script"),
(@ENTRY,0,2,0,61,0,100,0,1,48487,0,0,54,12000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Whisperwind Druid - On Waypoint 1 Reached - Pause Waypoint"),
(@ENTRY,0,3,0,40,0,100,0,3,48487,0,0,41,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Whisperwind Druid - On Waypoint 3 Reached - Despawn In 2000 ms");

-- Seer Olum SAI
SET @ENTRY := 22820;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,54,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Seer Olum - On Just Summoned - Set NPC Flags"),
(@ENTRY,0,2,0,40,0,100,0,2,22820,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Seer Olum - On Reached WP2 - Set Home Position"),
(@ENTRY,0,3,4,8,0,100,0,39552,0,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Seer Olum - On Spellhit (Olums Sacrifice) - Die"),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,12,22870,1,20000,0,0,0,1,0,0,0,0,0,0,0,"Seer Olum - On Spellhit (Olums Sacrifice) - Summon Olums Spirit");

-- Apothecary Ravien SAI
SET @ENTRY := 23782;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,2,40,0,100,0,6,23782,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Apothecary Ravien - On Reached WP6 - Pause WP"),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,19,24126,0,0,0,0,0,0,"Apothecary Ravien - On Reached WP6 - Set Orientation"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,24126,0,0,0,0,0,0,"Apothecary Ravien - On Reached WP6 - Set Data on Apothecary Lysander"),
(@ENTRY,0,4,0,40,0,100,0,7,23782,0,0,45,2,2,0,0,0,0,19,24126,0,0,0,0,0,0,"Apothecary Ravien - On Reached WP7 - Set Data on Apothecary Lysander"),
(@ENTRY,0,5,0,40,0,100,0,18,23782,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Apothecary Ravien - On Reached WP18 - Despawn");

-- Ashtongue Deathsworn SAI
SET @ENTRY := 21701;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,40,0,100,0,2,0,0,0,54,23000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Akama - On waypoint2 - event");

-- Hungry Bog Lord SAI
SET @ENTRY := 17955;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,40,0,100,0,9,17955,0,0,54,11500,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hungry Boglord - On Reached WP10 Pause WP"),
(@ENTRY,0,2,0,40,0,100,0,23,17955,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hungry Boglord - On Reached WP24 - Despawn");

-- Maiev Shadowsong SAI
SET @ENTRY := 22989;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,40,0,100,0,1,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Vagath - On waypoint1 - Start Script"),
(@ENTRY,0,2,0,0,0,100,0,1000,1000,3000,3000,11,39954,0,0,0,0,0,2,0,0,0,0,0,0,0,"Maiev - IC - Cast Spell");

-- Warmage Austin SAI
SET @ENTRY := 25733;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,61,0,100,0,1,1,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warmage Austin - On Data Set 1 1 - Set Active On"),
(@ENTRY,0,2,0,40,0,100,0,1,25733,0,0,54,10000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warmage Moran - On Waypoint 1 Reached - Pause Waypoint");

-- Highlord Darion Mograine SAI
SET @ENTRY := 32312;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,40,0,100,1,8,32312,0,0,107,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Highlord Darion Mograine - On Reached WP1 - Summon Group"),
(@ENTRY,0,2,3,40,0,100,1,14,32312,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Highlord Darion Mograine - On Reached WP9 - Set Home Position"),
(@ENTRY,0,3,4,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,9,32309,0,200,0,0,0,0,"Highlord Darion Mograine - On Reached WP9 - Set Data 1 1 Ebon Knight"),
(@ENTRY,0,4,5,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,32310,0,0,0,0,0,0,"Highlord Darion Mograine - On Reached WP9 - Set Data 1 1 Thassarian"),
(@ENTRY,0,5,6,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,32311,0,0,0,0,0,0,"Highlord Darion Mograine - On Reached WP9 - Set Data 1 1 Koltira"),
(@ENTRY,0,6,7,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,19,32311,0,0,0,0,0,0,"Highlord Darion Mograine - On Reached WP9 - Set Data 1 1 Koltira"),
(@ENTRY,0,7,8,61,0,100,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Highlord Darion Mograine - On Reached WP9 - Set Hostile"),
(@ENTRY,0,8,10,61,0,100,0,0,0,0,0,45,3,3,0,0,0,0,9,32175,0,200,0,0,0,0,"Highlord Darion Mograine - On Reached WP9 - Set Data 3 3 Chosen Zealot"),
(@ENTRY,0,9,0,7,2,100,0,0,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Highlord Darion Mograine - On Evade (Phase 2) - Run Script"),
(@ENTRY,0,10,0,61,0,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Highlord Darion Mograine - On Just Summoned - Set Phase 2");

-- D16 Propelled Delivery Device SAI
SET @ENTRY := 30487;
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;

-- King Varian Wrynn SAI
SET @ENTRY := 35321;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,54,0,100,0,0,0,0,0,45,1,1,0,0,0,0,9,35322,0,200,0,0,0,0,"King Varian Wrynn - On Just Summoned - Set Data 1 1 on Stormwind Royal Guard"),
(@ENTRY,0,2,3,40,0,100,0,11,35321,0,0,54,70000,0,0,0,0,0,1,0,0,0,0,0,0,0,"King Varian Wrynn - On Reached WP11 - Pause WP"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"King Varian Wrynn - On Reached WP11 - Run Script 1"),
(@ENTRY,0,4,5,40,0,100,0,19,35321,0,0,45,2,2,0,0,0,0,9,35322,0,200,0,0,0,0,"King Varian Wrynn - On Reached WP19 - Set Data 2 2 on Stormwind Royal Guard"),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"King Varian Wrynn - On Reached WP19 - Despawn");

-- Spirit of Sathrah SAI
SET @ENTRY := 7411;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,40,0,100,0,9,7411,0,0,41,3000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Spirit of Sathrah - On Waypoint 9 Reached - Despawn In 3000 ms");

-- Black Dragon Whelpling SAI
SET @ENTRY := 23364;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,11,0,100,0,0,0,0,0,11,15750,2,0,0,0,0,1,0,0,0,0,0,0,0,"Black Dragon Whelpling - On Spawn - Cast Rookery Whelp Spawn-in Spell"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Black Dragon Whelpling - On Spawn - Say"),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,18,33536,0,0,0,0,0,1,0,0,0,0,0,0,0,"Black Dragon Whelpling - On Spawn - Set Unit Flags"),
(@ENTRY,0,3,4,61,0,100,0,0,0,0,0,70,300,0,0,0,0,0,14,27915,185932,0,0,0,0,0,"Black Dragon Whelpling - On Spawn - Despawn Obsidia's Egg"),
(@ENTRY,0,5,6,40,0,100,0,2,23364,0,0,45,1,1,0,0,0,0,19,23282,0,0,0,0,0,0,"Black Dragon Whelpling - On Reached WP2 - Set Data on Obsidia"),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Black Dragon Whelpling - Reached WP2 - Despawn");

-- Prince Keleseth SAI
SET @ENTRY := 24041;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Prince Keleseth - On Just Summoned - Set Passive"),
(@ENTRY,0,2,0,40,0,100,0,2,24041,0,0,45,1,1,0,0,0,0,9,24044,0,200,0,0,0,0,"Prince Keleseth - On Just Summoned - Set Data"),
(@ENTRY,0,3,0,38,0,100,0,1,1,0,0,11,42982,0,0,0,0,0,1,0,0,0,0,0,0,0,"Prince Keleseth - On Data Set - Cast Vampire Prince Teleport"),
(@ENTRY,0,4,0,38,0,100,0,2,2,0,0,11,43056,0,0,0,0,0,1,0,0,0,0,0,0,0,"Prince Keleseth - On Data Set - Cast Vampire Soul Retrieve Channel");

-- Warmage Archus SAI
SET @ENTRY := 27888;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,61,0,100,0,1,1,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warmage Archus - On Data Set 1 1 - Set Active On"),
(@ENTRY,0,2,0,40,0,100,0,1,27888,0,0,54,10000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warmage Moran - On Waypoint 1 Reached - Pause Waypoint");

-- The Lich King SAI
SET @ENTRY := 28498;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,2,40,0,100,0,2,0,0,0,54,83000,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Lich King - On WP 2 - Pause movement 83 seconds"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"The Lich King - On WP 2 - Run script"),
(@ENTRY,0,3,4,40,0,100,0,3,0,0,0,45,0,2,0,0,0,0,10,127495,0,0,0,0,0,0,"The Lich King - On WP 3 - Despawn"),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Lich King - On WP 3 - Despawn"),
(@ENTRY,0,6,0,40,0,100,0,4,@ENTRY*100+00,0,0,1,7,0,0,0,0,0,19,28998,0,0,0,0,0,0,"The Lich King - Reached WP4 - Say"),
(@ENTRY,0,7,0,40,0,100,0,8,@ENTRY*100+00,0,0,80,@ENTRY*100+01,2,0,0,0,0,1,0,0,0,0,0,0,0,"The Lich King - Reached WP8 - Run Script"),
(@ENTRY,0,8,9,40,0,100,0,4,@ENTRY*100+01,0,0,45,2,2,0,0,0,0,10,98914,28960,0,0,0,0,0,"The Lich King - Reached WP4 (Path 2) - Set Data"),
(@ENTRY,0,9,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Lich King - Reached WP4 (Path 2) - Despawn");







































