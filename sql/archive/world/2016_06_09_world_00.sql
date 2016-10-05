-- Splinter Fist Warrior
SET @ENTRY := 212;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,20,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Aggro'),
(@ENTRY,0,1,0,0,0,100,0,6000,9000,17000,24000,11,78828,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Bladestorm');
-- NPC talk text insert
SET @ENTRY := 212;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'I\'ll crush you!',12,0,50,0,0,0, 'on Aggro Text'),
(@ENTRY,0,1, 'Me smash! You die!',12,0,50,0,0,0, 'on Aggro Text'),
(@ENTRY,0,2, 'Raaar!!! Me smash $r!',12,0,50,0,0,0, 'on Aggro Text');

-- Defias Night Runner SAI
SET @ENTRY := 215;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,1,0,0,0,0,11,22766,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Stealth on Spawn'),
(@ENTRY,0,1,0,7,0,100,1,0,0,0,0,11,22766,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Stealth on Evade'),
(@ENTRY,0,2,0,67,0,100,0,3900,6900,0,0,11,37685,0,0,0,0,0,2,0,0,0,0,0,0,0,'Casts Backstab'),
(@ENTRY,0,3,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,"Defias Night Runner - At 15% HP - Flee For Assist");

-- Kurzen Commando SAI
SET @ENTRY := 938;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,1,0,0,0,0,11,30831,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Stealth on Spawn'),
(@ENTRY,0,1,0,7,0,100,1,0,0,0,0,11,30831,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Stealth on Evade'),
(@ENTRY,0,2,0,67,0,100,0,3900,6900,0,0,11,37685,0,0,0,0,0,2,0,0,0,0,0,0,0,'Casts Backstab'),
(@ENTRY,0,3,0,2,0,100,1,0,15,0,0,11,7964,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kurzen Commando - At 15% HP - Cast Smoke Bomb");

-- Dragonmaw Centurion
SET @ENTRY := 1036;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,8000,12000,15000,11,78660,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Devastate'),
(@ENTRY,0,1,0,2,0,100,0,0,40,15000,17000,11,3419,2,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Improved Blocking at 40% HP'),
(@ENTRY,0,2,0,0,0,100,0,3000,9000,10000,20000,11,76622,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Sunder Armor');

-- Riverpaw Shaman
SET @ENTRY := 1065;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4700,11,9532,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Lightning Bolt'),
(@ENTRY,0,1,2,2,0,100,1,0,15,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Flee at 15% HP'),
(@ENTRY,0,2,0,61,0,100,1,0,15,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text at 15% HP'),
(@ENTRY,0,3,0,1,0,100,0,500,1000,600000,600000,11,12550,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Lightning Shield on Spawn'),
(@ENTRY,0,4,0,16,0,100,0,12550,1,15000,30000,11,12550,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Lightning Shield on Repeat');
-- NPC talk text insert
SET @ENTRY := 1065;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'More bones to gnaw on...',12,0,50,0,0,0, 'on Aggro Text'),
(@ENTRY,0,1, 'Grrrr... fresh meat!',12,0,50,0,0,0, 'on Aggro Text'),
(@ENTRY,1,0, '%s attempts to run away in fear!',16,0,100,0,0,0, 'combat Flee');

-- Torn Fin Tidehunter
SET @ENTRY := 2377;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,100,1,0,15,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Flee at 15% HP');

-- Lieutenant Benedict SAI
SET @ENTRY := 3192;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,1000,1000,300000,300000,11,7164,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lieutenant Benedict - Out Of Combat - Cast Defensive Stance"),
(@ENTRY,0,1,0,13,0,70,0,40000,40000,0,0,11,11972,0,0,0,0,0,2,0,0,0,0,0,0,0,"Lieutenant Benedict - On Target Casting - Cast Shield Bash"),
(@ENTRY,0,2,0,0,0,75,0,2000,7000,11000,25000,11,11972,0,0,0,0,0,2,0,0,0,0,0,0,0,"Lieutenant Benedict - In Combat - Cast Shield Bash"),
(@ENTRY,0,3,0,0,0,100,0,7000,12000,12000,34000,11,3248,0,0,0,0,0,2,0,0,0,0,0,0,0,"Lieutenant Benedict - In Combat - Cast Improved Blocking"),
(@ENTRY,0,4,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,"Lieutenant Benedict - At 15% HP - Flee For Assist");

-- Elder Mystic Razorsnout
SET @ENTRY := 3270;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,4000,5000,18000,22000,11,75068,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Lava Burst'),
(@ENTRY,0,1,0,0,0,100,0,3000,6000,15000,27000,11,39591,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Searing Totem');

-- Felmusk Felsworn
SET @ENTRY := 3762;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4700,11,32707,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast bolt'),
(@ENTRY,0,1,0,0,0,100,0,7000,8000,22000,26000,11,11962,2,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Immolate'),
(@ENTRY,0,2,0,0,0,100,0,10000,12000,600000,600000,11,6942,2,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Overwhelming Stench'),
(@ENTRY,0,3,0,2,0,100,1,0,30,0,0,11,8599,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Enrage at 30% HP'),
(@ENTRY,0,4,0,2,0,100,1,0,30,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text at 30% HP');
-- NPC talk text insert
SET @ENTRY := 3762;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, '%s becomes enraged!',16,0,100,0,0,0, 'combat Enrage');

-- Stonevault Cave Lurker
SET @ENTRY := 4850;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,3,0,0,0,0,11,22766,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Sneak on Spawn'),
(@ENTRY,0,1,0,0,0,100,2,3000,4000,17000,18000,11,3583,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Deadly Poison');

-- Wastewander Rogue SAI
SET @ENTRY := 5615;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,1,0,0,0,0,11,30831,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Stealth on Spawn'),
(@ENTRY,0,1,0,7,0,100,1,0,0,0,0,11,30831,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Stealth on Evade'),
(@ENTRY,0,2,0,67,0,100,0,3900,6900,0,0,11,37685,0,0,0,0,0,2,0,0,0,0,0,0,0,'Casts Backstab');

-- Addled Leper SAI
SET @ENTRY := 6221;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,1,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Addled Leper - Out Of Combat - Allow Combat Movement"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,20,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Addled Leper - Out Of Combat - Start Auto Attack"),
(@ENTRY,0,2,0,1,0,100,1,1000,1000,0,0,11,7165,1,0,0,0,0,1,0,0,0,0,0,0,0,"Addled Leper - Out Of Combat - Cast Battle Stance"),
(@ENTRY,0,3,4,4,0,100,0,0,0,0,0,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,"Addled Leper - On Aggro - Cast Shoot"),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Addled Leper - On Aggro - Increment Phase"),
(@ENTRY,0,5,6,9,0,100,0,5,30,2300,3900,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,"Addled Leper - At 5 - 30 Range - Cast Shoot"),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Addled Leper - At 5 - 30 Range - Display ranged weapon"),
(@ENTRY,0,7,8,9,0,100,0,25,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Addled Leper - At 25 - 80 Range - Allow Combat Movement"),
(@ENTRY,0,8,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Addled Leper - At 25 - 80 Range - Start Auto Attack"),
(@ENTRY,0,9,10,9,0,100,0,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Addled Leper - At 0 - 5 Range - Allow Combat Movement"),
(@ENTRY,0,10,11,9,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Addled Leper - At 0 - 5 Range - Display melee weapon"),
(@ENTRY,0,11,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Addled Leper - At 0 - 5 Range - Start Auto Attack"),
(@ENTRY,0,12,13,9,0,100,0,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Addled Leper - At 5 - 15 Range - Allow Combat Movement"),
(@ENTRY,0,13,0,61,0,100,0,0,0,0,0,20,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Addled Leper - At 5 - 15 Range - Start Auto Attack"),
(@ENTRY,0,14,0,9,0,100,0,0,5,17000,23000,11,9080,1,0,0,0,0,2,0,0,0,0,0,0,0,"Addled Leper - At 0 - 5 Range - Cast Hamstring"),
(@ENTRY,0,15,0,0,0,100,0,7000,9000,13000,16000,11,25712,1,0,0,0,0,2,0,0,0,0,0,0,0,"Addled Leper - In Combat - Cast Heroic Strike"),
(@ENTRY,0,16,0,2,0,100,0,0,30,30000,45000,11,22883,1,0,0,0,0,1,0,0,0,0,0,0,0,"Addled Leper - At 30% HP - Cast Heal"),
(@ENTRY,0,17,0,2,0,100,1,0,15,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Addled Leper - At 15% HP - Increment Phase"),
(@ENTRY,0,18,19,2,0,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Addled Leper - At 15% HP - Allow Combat Movement"),
(@ENTRY,0,19,20,2,0,100,0,0,0,0,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Addled Leper - At 15% HP - Flee For Assist"),
(@ENTRY,0,20,0,7,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Addled Leper - On Evade - Display melee weapon");

-- Dawnblade Reservist
SET @ENTRY := 25087;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,7700,13500,17850,11,32915,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Raptor Strike');

-- Nightbane Shadow Weaver
SET @ENTRY := 533;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4700,11,77721,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shadow Weave'),
(@ENTRY,0,10,0,2,1,100,1,0,45,0,0,11,85072,1,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Woven Shadows at 45% HP');

-- Murloc Minor Tidecaller
SET @ENTRY := 548;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4700,11,9672,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Frostbolt'),
(@ENTRY,0,1,0,2,0,100,1,0,15,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Flee at 15% HP');

-- Shadowhide Assassin
SET @ENTRY := 579;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,1,0,0,0,0,11,22766,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Sneak on Spawn'),
(@ENTRY,0,1,0,7,0,100,1,0,0,0,0,11,22766,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Sneak on Evade'),
(@ENTRY,0,2,0,0,0,100,0,5000,7000,15000,16000,11,744,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Poison');

-- Kurzen Medicine Man SAI
SET @ENTRY := 940;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,500,1000,600000,600000,11,12550,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Lightning Shield on Spawn'),
(@ENTRY,0,1,0,16,0,100,0,12550,1,15000,30000,11,12550,1,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Lightning Shield on Repeat'),
(@ENTRY,0,2,0,2,0,100,0,0,40,22000,25000,11,3359,2,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Drink Potion at 40% HP');

-- Lord Malathrom SAI
SET @ENTRY := 503;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,1000,5900,14200,11,30898,32,0,0,0,0,2,0,0,0,0,0,0,0,"Lord Malathrom - In Combat - Cast Shadow Word: Pain"),
(@ENTRY,0,1,0,0,0,100,0,5000,11000,22000,33000,11,3537,1,0,0,0,0,1,0,0,0,0,0,0,0,"Lord Malathrom - In Combat - Cast Minions of Malathrom");

-- Defias Squallshaper SAI
SET @ENTRY := 1732;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,2,1000,1000,1800000,1800000,11,12544,0,0,0,0,0,1,0,0,0,0,0,0,0,"Defias Squallshaper - Out Of Combat - Cast Frost Armor"),
(@ENTRY,0,1,0,0,0,30,2,1100,13600,23500,33500,11,122,0,0,0,0,0,1,0,0,0,0,0,0,0,"Defias Squallshaper - In Combat - Cast Frost Nova"),
(@ENTRY,0,3,0,2,0,100,3,0,15,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,"Defias Squallshaper - At 15% HP - Flee For Assist");

-- Hillsbrad Tailor SAI
SET @ENTRY := 2264;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,67,0,100,0,3900,6900,0,0,11,37685,0,0,0,0,0,2,0,0,0,0,0,0,0,'Casts Backstab'),
(@ENTRY,0,1,0,9,0,100,0,0,5,7000,11000,11,101,1,0,0,0,0,2,0,0,0,0,0,0,0,"Hillsbrad Tailor - At 0 - 5 Range - Cast Trip"),
(@ENTRY,0,2,0,2,0,100,1,0,30,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,"Hillsbrad Tailor - At 30% HP - Flee For Assist");

-- Foreman Bonds SAI
SET @ENTRY := 2305;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,1,0,0,0,0,11,8258,1,0,0,0,0,1,0,0,0,0,0,0,0,"Foreman Bonds - On Respawn - Cast Devotion Aura"),
(@ENTRY,0,1,0,9,0,100,0,0,5,60000,60000,11,39077,1,0,0,0,0,2,0,0,0,0,0,0,0,"Foreman Bonds - At 0 - 5 Range - Cast Hammer of Justice"),
(@ENTRY,0,2,3,2,0,100,0,0,30,0,0,12,7360,1,300000,0,0,0,2,0,0,0,0,0,0,0,"Foreman Bonds - At 30% HP - Summon Creature Dun Garok Soldier"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,12,7360,1,300000,0,0,0,2,0,0,0,0,0,0,0,"Foreman Bonds - At 30% HP - Summon Creature Dun Garok Soldier");

-- Ozzie Togglevolt SAI
SET @ENTRY := 1268;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,74222,0,0,0,1,2,2000,0,0,0,0,11,39712,10,0,0,0,0,0,"Ozzie Togglevolt - On spell hit - High Tinker Mekkatorque say part1"),
(@ENTRY,0,1,0,52,0,100,0,2,39712,0,0,1,3,4000,0,0,0,0,11,39712,10,0,0,0,0,0,"Ozzie Togglevolt - On text over - High Tinker Mekkatorque say part2"),
(@ENTRY,0,2,0,52,0,100,0,3,39712,0,0,1,4,4000,0,0,0,0,11,39712,10,0,0,0,0,0,"Ozzie Togglevolt - On text over - High Tinker Mekkatorque say part3"),
(@ENTRY,0,3,4,52,0,100,0,4,39712,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ozzie Togglevolt - On text over - Reply"),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,39712,10,0,0,0,0,0,"Milli Featherwhistle - On link - set data 1");

-- Avarus Kharag SAI
SET @ENTRY := 1679;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,6000,8000,11000,15000,11,39077,0,0,0,0,0,2,0,0,0,0,0,0,0,"Avarus Kharag - In Combat - Cast Hammer of Justice"),
(@ENTRY,0,1,0,2,0,100,0,0,30,20000,30000,11,13952,1,0,0,0,0,1,0,0,0,0,0,0,0,"Avarus Kharag - At 30% HP - Cast Holy Light");

-- Taneel Darkwood SAI
SET @ENTRY := 3940;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,6800,8300,37900,46300,11,30898,0,0,0,0,0,2,0,0,0,0,0,0,0,"Taneel Darkwood - In Combat - Cast Shadow Word: Pain"),
(@ENTRY,0,1,0,2,0,100,0,0,90,15000,18000,11,8362,1,0,0,0,0,1,0,0,0,0,0,0,0,"Taneel Darkwood - At 90% HP - Cast Renew"),
(@ENTRY,0,2,0,2,0,100,0,0,20,20000,30000,11,22883,1,0,0,0,0,1,0,0,0,0,0,0,0,"Taneel Darkwood - At 20% HP - Cast Heal");

-- Scarlet Chaplain SAI
SET @ENTRY := 4299;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,3,0,0,0,0,11,48168,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scarlet Chaplain - On Aggro - Cast Inner Fire"),
(@ENTRY,0,1,0,0,0,100,2,12000,16000,40000,46000,11,11974,1,0,0,0,0,1,0,0,0,0,0,0,0,"Scarlet Chaplain - In Combat - Cast Power Word: Shield"),
(@ENTRY,0,2,0,2,0,100,3,0,50,0,0,11,8362,1,0,0,0,0,1,0,0,0,0,0,0,0,"Scarlet Chaplain - At 50% HP - Cast Renew"),
(@ENTRY,0,3,0,2,0,100,3,0,15,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,"Scarlet Chaplain - At 15% HP - Flee For Assist");

-- Shadowforge Relic Hunter
SET @ENTRY := 4847;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,6000,10000,9000,12000,11,6726,0,0,0,0,0,5,0,0,0,0,0,0,0,'Cast Silence');

-- Stonevault Oracle
SET @ENTRY := 4852;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,6000,15000,31000,36000,11,5605,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Healing Ward'),
(@ENTRY,0,1,0,0,0,100,2,3000,5000,19000,27000,11,8264,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Lava Spout Totem');

-- Wastewander Bandit SAI
SET @ENTRY := 5618;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,4000,8000,7000,12000,11,12540,0,0,0,0,0,2,0,0,0,0,0,0,0,"Wastewander Bandit - In Combat - Cast Gouge"),
(@ENTRY,0,1,0,67,0,100,0,3900,6900,0,0,11,37685,0,0,0,0,0,2,0,0,0,0,0,0,0,'Casts Backstab');

-- Dalin Forgewright SAI
SET @ENTRY := 5682;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,2,0,100,0,0,90,15000,18000,11,8362,1,0,0,0,0,1,0,0,0,0,0,0,0,"Taneel Darkwood - At 90% HP - Cast Renew"),
(@ENTRY,0,2,0,2,0,100,0,0,20,20000,30000,11,22883,1,0,0,0,0,1,0,0,0,0,0,0,0,"Taneel Darkwood - At 20% HP - Cast Heal");

-- Commander Springvale
SET @ENTRY := 4278;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,7,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Aggro'),
(@ENTRY,0,1,0,0,0,100,6,12000,12000,27000,27000,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Battle'),
(@ENTRY,0,2,0,0,0,100,6,2000,4500,12000,20000,11,93685,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Malefic Strike'),
(@ENTRY,0,3,0,0,0,100,6,6000,9000,22000,28000,11,93687,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Desecration'),
(@ENTRY,0,4,0,0,0,100,2,10000,15000,35000,39000,11,93693,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shield of the Perfidious'),
(@ENTRY,0,5,0,0,0,100,4,10000,15000,35000,39000,11,93736,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shield of the Perfidious'),
(@ENTRY,0,6,0,0,0,100,2,4000,7000,18000,29000,11,93686,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Unholy Power'),
(@ENTRY,0,7,0,0,0,100,4,4000,7000,18000,29000,11,93735,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Unholy Power'),
(@ENTRY,0,8,0,2,0,100,5,0,30,0,0,11,96272,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Separation Anxiety at 30% HP'),
(@ENTRY,0,9,0,6,0,100,7,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Death');
-- NPC talk text insert
SET @ENTRY := 4278;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'Intruders in the keep!To arms!',14,0,100,0,0,0, 'on Aggro Text'),
(@ENTRY,1,0, 'Repel the intruders!',14,0,100,0,0,0, 'on Battle Text'),
(@ENTRY,2,0, 'Our vigilance is eternal...',14,0,100,0,0,0, 'on Death Text');

-- Uthil Mooncall
SET @ENTRY := 3941;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,11,7090,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Bear Form on Aggro'),
(@ENTRY,0,2,0,0,1,100,0,2000,4500,12000,15000,11,12161,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Maul');

-- Cenarion Protector
SET @ENTRY := 3797;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,500,1000,300000,300000,11,7090,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Bear Form on Spawn'),
(@ENTRY,0,1,0,0,0,100,0,9000,20000,19000,24000,11,15727,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Demoralizing Roar'),
(@ENTRY,0,2,3,2,0,100,0,0,50,14000,21000,28,7090,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Remove Bear Form at 50% HP'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,11,12160,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Rejuvenation at 50% HP'),
(@ENTRY,0,4,0,3,0,100,0,60,100,100,100,11,7090,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Bear Form HP is above 50%');

-- Scarlet Adept
SET @ENTRY := 4296;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,3400,4700,11,20820,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast bolt'),
(@ENTRY,0,1,2,2,0,100,3,0,15,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Flee at 15% HP'),
(@ENTRY,0,2,0,61,0,100,3,0,15,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text at 15% HP'),
(@ENTRY,0,3,0,14,0,100,2,1450,40,14000,21000,11,11642,0,0,0,0,0,7,0,0,0,0,0,0,0,'Cast Heal on Friendlies');
-- NPC talk text insert
SET @ENTRY := 4296;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, '%s attempts to run away in fear!',16,0,100,0,0,0, 'combat Flee');

-- Scarlet Wizard
SET @ENTRY := 4300;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,4000,9000,16000,17000,11,32749,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Fire Shield'),
(@ENTRY,0,1,0,9,0,100,2,0,8,1200,15000,11,34517,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Arcane Explosion on Close');

-- Nethergarde Cleric SAI
SET @ENTRY := 6000;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,4000,6000,6000,9000,11,9734,0,0,0,0,0,2,0,0,0,0,0,0,0,"Nethergarde Cleric - In Combat - Cast Holy Smite"),
(@ENTRY,0,1,0,2,0,100,0,0,50,45000,60000,11,11974,1,0,0,0,0,1,0,0,0,0,0,0,0,"Nethergarde Cleric - At 50% HP - Cast Power Word: Shield"),
(@ENTRY,0,2,0,14,0,100,0,0,40,16000,21000,11,22883,1,0,0,0,0,7,0,0,0,0,0,0,0,"Nethergarde Cleric - On Friendly Unit At 0 - 40% Health - Cast Heal"),
(@ENTRY,0,3,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,"Nethergarde Cleric - At 15% HP - Flee For Assist");

-- Commander Malor
SET @ENTRY := 11032;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,2,0,5,7000,11000,11,16172,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Head Crack on Close'),
(@ENTRY,0,1,0,9,0,100,2,0,8,9000,14000,11,12734,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Ground Smash on Close'),
(@ENTRY,0,2,0,0,0,100,2,5000,5000,15000,19000,11,15245,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Shadow Bolt Volley');

-- Milli Featherwhistle SAI
SET @ENTRY := 7955;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,74222,0,0,0,1,0,2000,0,0,0,0,11,39712,10,0,0,0,0,0,"Milli Featherwhistle - On spell hit - High Tinker Mekkatorque say part1"),
(@ENTRY,0,1,0,52,0,100,0,0,39712,0,0,1,1,4000,0,0,0,0,11,39712,10,0,0,0,0,0,"Milli Featherwhistle - On text over - High Tinker Mekkatorque say part2"),
(@ENTRY,0,2,3,52,0,100,0,1,39712,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Milli Featherwhistle - On text over - Reply"),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,39712,10,0,0,0,0,0,"Milli Featherwhistle - On link - set data 1");

-- Tog Rustsprocket SAI
SET @ENTRY := 6119;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,74222,0,0,0,1,5,2000,0,0,0,0,11,39712,10,0,0,0,0,0,"Tog Rustsprocket - On spell hit - High Tinker Mekkatorque say part1"),
(@ENTRY,0,1,0,52,0,100,0,5,39712,0,0,1,6,4000,0,0,0,0,11,39712,10,0,0,0,0,0,"Tog Rustsprocket - On text over - High Tinker Mekkatorque say part2"),
(@ENTRY,0,2,0,52,0,100,0,6,39712,0,0,1,7,4000,0,0,0,0,11,39712,10,0,0,0,0,0,"Tog Rustsprocket - On text over - High Tinker Mekkatorque say part3"),
(@ENTRY,0,3,4,52,0,100,0,7,39712,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tog Rustsprocket - On text over - Reply"),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,39712,10,0,0,0,0,0,"Tog Rustsprocket - On link - set data 1");

-- Geolord Mottle
SET @ENTRY := 5826;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,6000,16000,18000,11,80117,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Earth Spike'),
(@ENTRY,0,1,0,1,0,100,0,500,1000,600000,600000,11,79927,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Earth Shield on Spawn');

-- Hukku's Succubus SAI
SET @ENTRY := 8657;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,2,0,5,12000,19500,11,21987,0,0,0,0,0,2,0,0,0,0,0,0,0,"Hukku's Succubus - At 0 - 5 Range - Cast Lash of Pain"),
(@ENTRY,0,1,0,0,0,100,2,8000,12000,15000,19000,11,6358,1,0,0,0,0,6,0,0,0,0,0,0,0,"Hukku's Succubus - In Combat - Cast Seduction");

-- Dragonflayer Vrykul
SET @ENTRY := 23652;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2300,3900,11,38557,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Throw'),
(@ENTRY,0,1,0,9,0,100,0,0,5,8000,9000,11,43410,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Chop on Close');

-- Stonevault Flameweaver
SET @ENTRY := 7321;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,9000,21000,12000,32000,11,7739,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Inferno Shell');

-- Jekyll Flandring SAI
SET @ENTRY := 13219;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,80,0,1000,1000,7000,7000,11,25710,1,0,0,0,0,2,0,0,0,0,0,0,0,"Jekyll Flandring - In Combat - Cast Heroic Strike");

-- Risen Battle Mage
SET @ENTRY := 10425;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,8000,15000,13000,17000,11,17145,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Blast Wave'),
(@ENTRY,0,1,0,9,0,100,2,0,8,9000,14000,11,33860,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Arcane Explosion on Close'),
(@ENTRY,0,2,0,0,0,100,2,5000,5000,17000,22000,11,15732,0,0,0,0,0,5,0,0,0,0,0,0,0,'Cast Immolate');

-- Hakkari Bloodkeeper SAI
SET @ENTRY := 8438;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,3,0,0,0,0,11,7741,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hakkari Bloodkeeper - On Respawn - Cast Summoned Demon"),
(@ENTRY,0,1,0,9,0,100,2,0,40,5000,8000,11,12471,1,0,0,0,0,1,0,0,0,0,0,0,0,"Hakkari Bloodkeeper - At 0 - 40 Range - Cast Shadow Bolt"),
(@ENTRY,0,2,0,0,0,100,2,13000,17000,14000,20000,11,39212,33,0,0,0,0,5,0,0,0,0,0,0,0,"Hakkari Bloodkeeper - In Combat - Cast Corruption");

-- Gnomeregan Evacuee SAI
SET @ENTRY := 7843;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,1,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gnomeregan Evacuee - Out Of Combat - Allow Combat Movement"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,20,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gnomeregan Evacuee - Out Of Combat - Start Auto Attack"),
(@ENTRY,0,2,0,1,0,100,1,1000,1000,0,0,11,7165,1,0,0,0,0,1,0,0,0,0,0,0,0,"Gnomeregan Evacuee - Out Of Combat - Cast Battle Stance"),
(@ENTRY,0,3,4,4,0,100,0,0,0,0,0,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,"Gnomeregan Evacuee - On Aggro - Cast Shoot"),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gnomeregan Evacuee - On Aggro - Increment Phase"),
(@ENTRY,0,5,6,9,0,100,0,5,30,2300,3900,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,"Gnomeregan Evacuee - At 5 - 30 Range - Cast Shoot"),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gnomeregan Evacuee - At 5 - 30 Range - Display ranged weapon"),
(@ENTRY,0,7,8,9,0,100,0,25,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gnomeregan Evacuee - At 25 - 80 Range - Allow Combat Movement"),
(@ENTRY,0,8,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gnomeregan Evacuee - At 25 - 80 Range - Start Auto Attack"),
(@ENTRY,0,9,10,9,0,100,0,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gnomeregan Evacuee - At 0 - 5 Range - Allow Combat Movement"),
(@ENTRY,0,10,11,9,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gnomeregan Evacuee - At 0 - 5 Range - Display melee weapon"),
(@ENTRY,0,11,0,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gnomeregan Evacuee - At 0 - 5 Range - Start Auto Attack"),
(@ENTRY,0,12,13,9,0,100,0,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gnomeregan Evacuee - At 5 - 15 Range - Allow Combat Movement"),
(@ENTRY,0,13,0,61,0,100,0,0,0,0,0,20,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gnomeregan Evacuee - At 5 - 15 Range - Start Auto Attack"),
(@ENTRY,0,14,0,9,0,100,0,0,5,17000,23000,11,9080,1,0,0,0,0,2,0,0,0,0,0,0,0,"Gnomeregan Evacuee - At 0 - 5 Range - Cast Hamstring"),
(@ENTRY,0,15,0,0,0,100,0,7000,9000,13000,16000,11,25712,1,0,0,0,0,2,0,0,0,0,0,0,0,"Gnomeregan Evacuee - In Combat - Cast Heroic Strike"),
(@ENTRY,0,16,0,2,0,100,0,0,30,30000,45000,11,22883,1,0,0,0,0,1,0,0,0,0,0,0,0,"Gnomeregan Evacuee - At 30% HP - Cast Heal"),
(@ENTRY,0,17,0,2,0,100,1,0,15,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gnomeregan Evacuee - At 15% HP - Increment Phase"),
(@ENTRY,0,18,19,2,0,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gnomeregan Evacuee - At 15% HP - Allow Combat Movement"),
(@ENTRY,0,19,0,61,0,100,0,0,0,0,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Gnomeregan Evacuee - At 15% HP - Flee For Assist"),
(@ENTRY,0,20,0,7,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Addled Leper - On Evade - Display melee weapon");

-- Defias Trapper SAI
SET @ENTRY := 504;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,5,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Defias Trapper - On Aggro - Say random text"),
(@ENTRY,0,1,0,67,0,100,0,3900,6900,0,0,11,37685,0,0,0,0,0,2,0,0,0,0,0,0,0,'Casts Backstab'),
(@ENTRY,0,2,0,0,0,100,0,6500,14200,20500,31100,11,12024,0,0,0,0,0,2,0,0,0,0,0,0,0,"Defias Trapper - Combat - Cast Net"),
(@ENTRY,0,3,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Defias Trapper - HP@15% - Flee");

-- Murloc Oracle
SET @ENTRY := 517;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4700,11,9734,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Holy Smite'),
(@ENTRY,0,1,2,2,0,100,1,0,15,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Flee at 15% HP'),
(@ENTRY,0,2,0,61,0,100,1,0,15,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text at 15% HP'),
(@ENTRY,0,3,0,2,1,100,1,0,30,0,0,11,11835,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Power Word: Shield at 30% HP');
-- NPC talk text insert
SET @ENTRY := 517;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, '%s attempts to run away in fear!',16,0,100,0,0,0, 'combat Flee');

-- Canyon Ettin
SET @ENTRY := 43094;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,8000,8000,18000,22000,11,88421,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Log Smash');

-- Fenros
SET @ENTRY := 507;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,7137,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Shadow Charge on Aggro'),
(@ENTRY,0,1,0,0,0,100,0,2000,3000,9000,12000,11,6595,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Exploit Weakness'),
(@ENTRY,0,2,0,0,0,100,0,6000,9000,19000,22000,11,84308,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Furious Howl');

-- Murloc Tidecaller
SET @ENTRY := 545;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,100,1,0,15,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Flee at 15% HP');

-- Shadowhide Warrior
SET @ENTRY := 568;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,7164,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Defensive Stance on Aggro'),
(@ENTRY,0,1,0,0,0,100,0,5000,8000,15000,15000,11,11971,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Sunder Armor');

-- Defias Night Blade SAI
SET @ENTRY := 909;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,18500,2000,18500,11,744,32,0,0,0,0,2,0,0,0,0,0,0,0,"Defias Night Blade - In Combat - Cast Poison"),
(@ENTRY,0,1,0,0,0,100,0,3200,15100,11700,44100,11,7992,0,0,0,0,0,2,0,0,0,0,0,0,0,"Defias Night Blade - In Combat - Cast Slowing Poison"),
(@ENTRY,0,2,0,67,0,100,0,3900,6900,0,0,11,37685,0,0,0,0,0,2,0,0,0,0,0,0,0,'Casts Backstab'),
(@ENTRY,0,3,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,"Defias Night Blade - At 15% HP - Flee For Assist");

-- Skeletal Healer SAI
SET @ENTRY := 787;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Skeletal Healer - Out Of Combat - Allow Combat Movement"),
(@ENTRY,0,1,2,4,0,100,0,0,0,0,0,11,9613,0,0,0,0,0,2,0,0,0,0,0,0,0,"Skeletal Healer - On Aggro - Cast Shadow Bolt"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Skeletal Healer - On Aggro - Increment Phase"),
(@ENTRY,0,3,0,9,0,100,0,0,40,3500,3700,11,9613,0,0,0,0,0,2,0,0,0,0,0,0,0,"Skeletal Healer - At 0 - 40 Range - Cast Shadow Bolt"),
(@ENTRY,0,4,5,3,0,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Skeletal Healer - At 15% Mana - Allow Combat Movement"),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Skeletal Healer - At 15% Mana - Increment Phase"),
(@ENTRY,0,6,0,9,0,100,1,35,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Skeletal Healer - At 35 - 80 Range - Allow Combat Movement"),
(@ENTRY,0,7,0,9,0,100,1,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Skeletal Healer - At 5 - 15 Range - Allow Combat Movement"),
(@ENTRY,0,8,0,9,0,100,1,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Skeletal Healer - At 0 - 5 Range - Allow Combat Movement"),
(@ENTRY,0,9,0,3,0,100,0,30,100,100,100,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,"Skeletal Healer - At 100% Mana - Increment Phase"),
(@ENTRY,0,10,0,14,0,100,1,0,40,0,0,11,22883,1,0,0,0,0,7,0,0,0,0,0,0,0,"Skeletal Healer - On Friendly Unit At 0 - 40% Health - Cast Heal");

-- Bluegill Muckdweller SAI
SET @ENTRY := 1028;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,90,0,1100,6300,11100,14500,11,12540,0,0,0,0,0,2,0,0,0,0,0,0,0,"Bluegill Muckdweller - In Combat - Cast Gouge"),
(@ENTRY,0,1,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,"Bluegill Muckdweller - At 15% HP - Flee For Assist");

-- Stromgarde Troll Hunter SAI
SET @ENTRY := 2583;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,2000,5000,19000,23000,11,30898,0,0,0,0,0,2,0,0,0,0,0,0,0,"Stromgarde Troll Hunter - Out Of Combat - Cast Shadow Word: Pain"),
(@ENTRY,0,1,0,2,0,100,0,0,50,12000,18000,11,17137,1,0,0,0,0,1,0,0,0,0,0,0,0,"Stromgarde Troll Hunter - At 50% HP - Cast Flash Heal");

-- Kinelory SAI
SET @ENTRY := 2713;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,3000,30000,38000,11,4948,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kinelory - In Combat - Cast Kinelory's Bear Form"),
(@ENTRY,0,1,0,14,0,100,1,0,40,0,0,11,15981,1,0,0,0,0,7,0,0,0,0,0,0,0,"Kinelory - On Friendly Unit At 0 - 40% Health - Cast Rejuvenation");

-- Shadowforge Chanter
SET @ENTRY := 2742;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,8000,17000,21000,11,15970,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Sleep');

-- Cresting Exile SAI
SET @ENTRY := 2761;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,1000,1000,1800000,1800000,11,12544,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cresting Exile - Out Of Combat - Cast Frost Armor"),
(@ENTRY,0,1,0,0,0,100,0,1400,7300,25600,32300,11,12674,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cresting Exile - In Combat - Cast Frost Nova");

-- Drywhisker Digger
SET @ENTRY := 2574;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,8000,12000,15000,11,82617,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Heave');

-- Witherbark Shadow Hunter
SET @ENTRY := 2557;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,6000,19000,27000,11,6726,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Silence');

-- Stonesplinter Shaman
SET @ENTRY := 1197;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4700,11,9739,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Wrath'),
(@ENTRY,0,1,0,0,0,100,0,9000,12000,22000,22000,11,84857,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Stone Splinter'),
(@ENTRY,0,2,0,1,0,100,0,500,1000,600000,600000,11,79927,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Earth Shield on Spawn'),
(@ENTRY,0,3,0,16,0,100,0,79927,1,15000,30000,11,79927,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Earth Shield on Repeat');

-- Daggerspine Siren
SET @ENTRY := 2371;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4700,11,9532,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Lightning Bolt'),
(@ENTRY,0,1,0,2,0,100,1,0,15,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Flee at 15% HP'),
(@ENTRY,0,2,0,0,0,100,0,5000,10000,15000,20000,11,6728,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Enveloping Winds');

-- Gnarlpine Shaman
SET @ENTRY := 2009;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,100,1,0,15,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Flee at 15% HP'),
(@ENTRY,0,1,0,2,0,100,1,0,15,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text at 15% HP');
-- NPC talk text insert
SET @ENTRY := 2009;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, '%s attempts to run away in fear!',16,0,100,0,0,0, 'combat Flee');

-- Hillsbrad Miner 
SET @ENTRY := 2269;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,1000,180000,180000,11,7164,1,0,0,0,0,1,0,0,0,0,0,0,0,"Hillsbrad Miner - In Combat - Cast 'Defensive Stance'"),
(@ENTRY,0,2,0,2,0,100,1,0,30,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,"Hillsbrad Miner - Between 0-30% Health - Flee For Assist");

-- Master Digger
SET @ENTRY := 1424;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,100,1,0,15,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Flee at 15% HP'),
(@ENTRY,0,1,0,2,0,100,1,0,15,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text at 15% HP'),
(@ENTRY,0,2,0,0,0,100,0,6000,12000,27000,33000,11,80382,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Dirt Toss'),
(@ENTRY,0,3,0,0,0,100,0,4000,7000,18000,27000,11,6016,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Pierce Armor');
-- NPC talk text insert
SET @ENTRY := 1424;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, '%s attempts to run away in fear!',16,0,100,0,0,0, 'combat Flee');

-- Bluegill Oracle SAI
SET @ENTRY := 1029;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,100,1,0,60,0,0,11,6274,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bluegill Oracle - At 60% HP - Cast Healing Ward"),
(@ENTRY,0,1,0,14,0,100,0,0,30,11500,24600,11,11895,1,0,0,0,0,1,0,0,0,0,0,0,0,"Bluegill Oracle - On Friendly Unit At 0 - 30% Health - Cast Healing Wave"),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,"Bluegill Oracle - At 15% HP - Flee For Assist");

-- Kurzen Witch Doctor SAI
SET @ENTRY := 942;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,3000,40000,45000,11,39591,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kurzen Witch Doctor - In Combat - Cast Searing Totem"),
(@ENTRY,0,1,0,0,0,100,0,4000,8000,15000,20000,11,370,0,0,0,0,0,2,0,0,0,0,0,0,0,"Kurzen Witch Doctor - In Combat - Cast Purge"),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,"Kurzen Witch Doctor - At 15% HP - Flee For Assist");

-- Elder Timberling
SET @ENTRY := 2030;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,500,1000,600000,600000,11,324,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Lightning Shield on Spawn'),
(@ENTRY,0,1,0,16,0,100,0,324,1,15000,30000,11,324,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Lightning Shield on Repeat');

-- Blackwind Warp Chaser SAI
SET @ENTRY := 23219;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,25,0,100,1,0,530,0,0,11,32942,2,0,0,0,0,1,0,0,0,0,0,0,0,"Blackwind Warp Chaser - Respawn - Cast Phasing Invisibility"),
(@ENTRY,0,2,0,4,0,100,0,0,0,0,0,28,32942,0,0,0,0,0,1,0,0,0,0,0,0,0,"Blackwind Warp Chaser - Aggro - Remove Phasing Invisibility"),
(@ENTRY,0,3,0,0,0,100,0,3000,6000,4000,7000,11,32739,0,0,0,0,0,5,0,0,0,0,0,0,0,"Blackwind Warp Chaser - Combat - Cast Venomous Bite"),
(@ENTRY,0,4,0,0,0,100,0,12000,15000,20000,40000,11,32920,0,0,0,0,0,2,0,0,0,0,0,0,0,"Blackwind Warp Chaser - Combat - Cast Warp"),
(@ENTRY,0,5,0,4,0,100,0,2000,5000,7000,15000,11,37417,1,0,0,0,0,5,0,0,0,0,0,0,0,"Blackwind Warp Chaser - Aggro - Cast Warp Charge");

-- Chill Nymph SAI
SET @ENTRY := 23678;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,571,495,0,2,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Chill Nymph - Respawn - reset faction"),
(@ENTRY,0,1,0,25,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Chill Nymph - Reset - set phase 1"),
(@ENTRY,0,2,3,2,0,100,1,0,30,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Chill Nymph - On health 30% - Do text emote"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Chill Nymph - On health 30% - set phase 2"),
(@ENTRY,0,4,0,0,0,75,0,2000,3000,2000,2000,11,9739,0,0,0,0,0,2,0,0,0,0,0,0,0,"Chill Nymph - In Combat - Cast Wrath on victim"),
(@ENTRY,0,5,6,8,2,100,0,43340,0,30000,30000,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chill Nymph - On Spell hit 43340 - Face invoker"),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Chill Nymph - On Spell hit 43340 - Load script"),
(@ENTRY,0,8,0,40,0,100,0,1,23678,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Chill Nymph - On reach waypoint 1 - Despawn");

-- Saltspittle Warrior SAI
SET @ENTRY := 3739;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,3000,180000,180000,11,7164,1,0,0,0,0,1,0,0,0,0,0,0,0,"Saltspittle Warrior - In Combat - Cast Defensive Stance"),
(@ENTRY,0,1,0,9,0,100,0,0,5,12300,18600,11,7386,0,0,0,0,0,2,0,0,0,0,0,0,0,"Saltspittle Warrior - At 0 - 5 Range - Cast Sunder Armor"),
(@ENTRY,0,2,0,13,0,100,0,12000,15000,0,0,11,101817,1,0,0,0,0,7,0,0,0,0,0,0,0,"Saltspittle Warrior - On Target Casting - Cast Shield Bash"),
(@ENTRY,0,3,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,"Saltspittle Warrior - At 15% HP - Flee For Assist");

-- Foulweald Totemic
SET @ENTRY := 3750;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,100,1,0,15,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Flee at 15% HP'),
(@ENTRY,0,1,0,2,0,100,1,0,15,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text at 15% HP'),
(@ENTRY,0,2,0,9,0,100,0,0,8,18000,21000,11,6817,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Corrupted Agility on Close'),
(@ENTRY,0,3,0,0,0,100,0,5000,7000,24000,26000,11,39591,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Searing Totem');
-- NPC talk text insert
SET @ENTRY := 3750;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, '%s attempts to run away in fear!',16,0,100,0,0,0, 'combat Flee');

-- Xavian Betrayer
SET @ENTRY := 3754;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,4000,4500,12000,18000,11,77522,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Swoop'),
(@ENTRY,0,1,0,2,0,100,1,0,15,0,0,11,6925,2,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Gift of the Xavian at 15% HP');

-- Hillsbrad Footman SAI
SET @ENTRY := 2268;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,1000,180000,180000,11,7164,1,0,0,0,0,1,0,0,0,0,0,0,0,"Hillsbrad Footman - In Combat - Cast Defensive Stance"),
(@ENTRY,0,1,0,9,0,100,0,0,5,12000,15000,11,101817,0,0,0,0,0,2,0,0,0,0,0,0,0,"Hillsbrad Footman - At 0 - 5 Range - Cast Shield Bash"),
(@ENTRY,0,2,0,2,0,100,1,0,30,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,"Hillsbrad Footman - At 30% HP - Flee For Assist");

-- Mudsnout Shaman
SET @ENTRY := 2373;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4700,11,20805,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Lightning Bolt'),
(@ENTRY,0,1,0,2,0,100,1,0,15,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Flee at 15% HP');

-- Syndicate Wizard
SET @ENTRY := 2319;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4700,11,20815,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Fireball'),
(@ENTRY,0,1,0,2,0,100,1,0,15,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Flee at 15% HP'),
(@ENTRY,0,2,0,0,0,100,0,5000,8000,20000,22000,11,13323,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Polymorph');

-- Burning Blade Acolyte
SET @ENTRY := 3380;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,100,0,0,40,14000,21000,11,689,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Drain Life at 40% HP'),
(@ENTRY,0,1,0,0,0,100,0,3000,4500,34000,38000,11,980,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Bane of Agony'),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Flee at 15% HP'),
(@ENTRY,0,3,0,2,0,100,1,0,15,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text at 15% HP');
-- NPC talk text insert
SET @ENTRY := 3380;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, '%s attempts to run away in fear!',16,0,100,0,0,0, 'combat Flee');

-- Great Father Arctikus
SET @ENTRY := 1260;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,2,0,100,1,0,30,0,0,11,18501,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Enrage at 30% HP'),
(@ENTRY,0,1,0,61,0,100,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text at 30% HP'),
(@ENTRY,0,2,0,4,0,100,1,0,0,0,0,11,77808,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Battle Shout on Aggro');
-- NPC talk text insert
SET @ENTRY := 1260;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, '%s becomes enraged!',16,0,100,0,0,0, 'combat Enrage');

-- Mo'grosh Mystic SAI
SET @ENTRY := 1183;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mo'grosh Mystic - Out Of Combat - Allow Combat Movement"),
(@ENTRY,0,1,0,4,0,15,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mo'grosh Mystic - On Aggro - Say Line 0"),
(@ENTRY,0,2,3,4,0,100,0,0,0,0,0,11,9532,0,0,0,0,0,2,0,0,0,0,0,0,0,"Mo'grosh Mystic - On Aggro - Cast Lightning Bolt"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mo'grosh Mystic - On Aggro - Increment Phase"),
(@ENTRY,0,4,0,9,0,100,0,0,40,3400,5400,11,9532,0,0,0,0,0,2,0,0,0,0,0,0,0,"Mo'grosh Mystic - At 0 - 40 Range - Cast Lightning Bolt"),
(@ENTRY,0,5,6,3,0,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mo'grosh Mystic - At 15% Mana - Allow Combat Movement"),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mo'grosh Mystic - At 15% Mana - Increment Phase"),
(@ENTRY,0,7,0,9,0,100,1,35,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mo'grosh Mystic - At 35 - 80 Range - Allow Combat Movement"),
(@ENTRY,0,8,0,9,0,100,1,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mo'grosh Mystic - At 5 - 15 Range - Allow Combat Movement"),
(@ENTRY,0,9,0,9,0,100,1,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mo'grosh Mystic - At 0 - 5 Range - Allow Combat Movement"),
(@ENTRY,0,10,0,3,0,100,0,30,100,100,100,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,"Mo'grosh Mystic - At 100% Mana - Increment Phase"),
(@ENTRY,0,11,0,14,0,100,1,0,40,0,0,11,11895,0,0,0,0,0,7,0,0,0,0,0,0,0,"Mo'grosh Mystic - On Friendly Unit At 0 - 40% Health - Cast Healing Wave");

-- Rot Hide Mystic SAI
SET @ENTRY := 1773;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,14,0,85,0,0,80,5000,5000,11,11895,0,0,0,0,0,7,0,0,0,0,0,0,0,"Rot Hide Mystic - On Friendly Unit At 0 - 80% Health - Cast Healing Wave"),
(@ENTRY,0,1,0,0,0,40,1,0,0,2500,2500,11,3237,1,0,0,0,0,5,0,0,0,0,0,0,0,"Rot Hide Mystic - In Combat - Cast Curse of Thule");

-- Torn Fin Oracle
SET @ENTRY := 2376;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4700,11,9532,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Lightning Bolt'),
(@ENTRY,0,1,0,2,0,100,1,0,15,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Flee at 15% HP');


-- Boulderfist Shaman
SET @ENTRY := 2570;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,20,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Aggro'),
(@ENTRY,0,1,0,0,0,100,0,0,0,3400,4700,11,9532,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Lightning Bolt'),
(@ENTRY,0,2,0,14,0,100,0,350,40,15000,18000,11,11986,0,0,0,0,0,7,0,0,0,0,0,0,0,'Cast Healing Wave on Friendlies'),
(@ENTRY,0,3,0,2,0,100,0,0,40,22000,25000,11,11986,2,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Healing Wav at 40% HP');
-- NPC talk text insert
SET @ENTRY := 2570;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'I\'ll crush you!',12,0,50,0,0,0, 'on Aggro Text'),
(@ENTRY,0,1, 'Me smash! You die!',12,0,50,0,0,0, 'on Aggro Text'),
(@ENTRY,0,2, 'Raaar!!! Me smash $r!',12,0,50,0,0,0, 'on Aggro Text');

-- Dun Garok Mountaineer SAI
SET @ENTRY := 2344;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,1,0,0,0,0,11,8258,1,0,0,0,0,1,0,0,0,0,0,0,0,"Dun Garok Mountaineer - On Respawn - Cast Devotion Aura"),
(@ENTRY,0,1,0,9,0,100,0,0,5,9000,15000,11,13953,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dun Garok Mountaineer - At 0 - 5 Range - Cast Holy Strike"),
(@ENTRY,0,2,0,2,0,100,1,0,30,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,"Dun Garok Mountaineer - At 30% HP - Flee For Assist");

-- Magosh <Stonesplinter Tribal Shaman>
SET @ENTRY := 1399;
SET @ENTRYTOTEM := 22895;
SET @TOTEMSPELL := 39592;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
UPDATE `creature_template` SET `AIName`='0' WHERE `entry`=@ENTRYTOTEM;
UPDATE `creature_template` SET `spell1`=@TOTEMSPELL WHERE `entry`=@ENTRYTOTEM;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,500,1000,600000,600000,11,79927,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Earth Shield on Spawn'),
(@ENTRY,0,1,0,16,0,100,0,79927,1,15000,30000,11,79927,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Earth Shield on Repeat'),
(@ENTRY,0,2,0,0,0,100,0,10000,12000,38000,42000,11,39591,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Searing Totem'),
(@ENTRY,0,3,0,0,0,100,0,8000,8500,12000,20000,11,13281,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Earth Shock'),
(@ENTRY,0,4,0,0,0,100,0,9000,12000,22000,22000,11,84857,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Stone Splinter');


-- Kubb <Master of Meats and Fishes>
SET @ENTRY := 1425;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,5000,15000,15000,11,81252,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Full of Meat');

-- Naga Explorer SAI
SET @ENTRY := 1907;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,7165,0,0,0,0,0,1,0,0,0,0,0,0,0,"Naga Explorer - On Aggro - Cast Battle Stance"),
(@ENTRY,0,1,0,0,0,100,0,6400,12600,18500,28700,11,13443,0,0,0,0,0,2,0,0,0,0,0,0,0,"Naga Explorer - In Combat - Cast Rend");

-- Defias Inmate SAI
SET @ENTRY := 1708;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,3,1000,1000,0,0,11,7165,0,0,0,0,0,1,0,0,0,0,0,0,0,"Defias Inmate - Out Of Combat - Cast Battle Stance"),
(@ENTRY,0,1,0,0,0,100,2,1900,11800,14200,36200,11,13443,0,0,0,0,0,2,0,0,0,0,0,0,0,"Defias Inmate - In Combat - Cast Rend"),
(@ENTRY,0,2,0,2,0,100,3,0,15,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,"Defias Inmate - At 15% HP - Flee For Assist");

-- Ravenclaw Regent SAI
SET @ENTRY := 2283;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,85,0,3000,3000,9000,12000,11,30898,0,0,0,0,0,5,0,0,0,0,0,0,0,"Ravenclaw Regent - In Combat - Cast Shadow Word: Pain"),
(@ENTRY,0,1,0,0,0,85,0,6000,6000,12000,18000,11,7645,1,0,0,0,0,6,0,0,0,0,0,0,0,"Ravenclaw Regent - In Combat - Cast Dominate Mind"),
(@ENTRY,0,2,0,9,0,100,0,4,30,1,1,79,15,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ravenclaw Regent - At 4 - 30 Range - Set Ranged Movement"),
(@ENTRY,0,3,0,9,0,100,0,0,4,1,1,79,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ravenclaw Regent - At 0 - 4 Range - Set Ranged Movement"),
(@ENTRY,0,4,0,11,0,100,1,0,0,0,0,79,15,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ravenclaw Regent - On Respawn - Set Ranged Movement");

-- Shadowy Assassin SAI
SET @ENTRY := 2434;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,1,0,0,0,0,11,30831,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Stealth on Spawn'),
(@ENTRY,0,1,0,7,0,100,1,0,0,0,0,11,30831,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Stealth on Evade');

-- Ruul Onestone
SET @ENTRY := 2602;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,20,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Aggro'),
(@ENTRY,0,1,0,0,0,100,0,0,0,3400,4700,11,20822,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Frostbolt'),
(@ENTRY,0,2,0,2,0,100,1,0,25,0,0,11,6742,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Bloodlust at 25% HP');
-- NPC talk text insert
SET @ENTRY := 2602;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'I\'ll crush you!',12,0,50,0,0,0, 'on Aggro Text'),
(@ENTRY,0,1, 'Me smash! You die!',12,0,50,0,0,0, 'on Aggro Text'),
(@ENTRY,0,2, 'Raaar!!! Me smash $r!',12,0,50,0,0,0, 'on Aggro Text');

-- Drywhisker Surveyor
SET @ENTRY := 2573;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4700,11,20822,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Frostbolt');

-- Dark Iron Shadowcaster SAI
SET @ENTRY := 2577;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dark Iron Shadowcaster - Out Of Combat - Allow Combat Movement"),
(@ENTRY,0,1,2,4,0,100,0,0,0,0,0,11,20816,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dark Iron Shadowcaster - On Aggro - Cast Shadow Bolt"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dark Iron Shadowcaster - On Aggro - Increment Phase"),
(@ENTRY,0,3,0,9,0,100,0,0,40,3500,8600,11,20816,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dark Iron Shadowcaster - At 0 - 40 Range - Cast Shadow Bolt"),
(@ENTRY,0,4,5,3,0,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dark Iron Shadowcaster - At 15% Mana - Allow Combat Movement"),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dark Iron Shadowcaster - At 15% Mana - Increment Phase"),
(@ENTRY,0,6,0,9,0,100,1,35,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dark Iron Shadowcaster - At 35 - 80 Range - Allow Combat Movement"),
(@ENTRY,0,7,0,9,0,100,1,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dark Iron Shadowcaster - At 0 - 5 Range - Allow Combat Movement"),
(@ENTRY,0,8,0,9,0,100,0,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dark Iron Shadowcaster - At 5 - 15 Range - Allow Combat Movement"),
(@ENTRY,0,9,0,3,0,100,0,30,100,100,100,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,"Dark Iron Shadowcaster - At 100% Mana - Increment Phase"),
(@ENTRY,0,10,0,0,0,100,0,5500,12400,18200,30700,11,17883,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dark Iron Shadowcaster - In Combat - Cast Immolate"),
(@ENTRY,0,11,12,2,0,100,1,0,15,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dark Iron Shadowcaster - At 15% HP - Set Phase 3"),
(@ENTRY,0,12,13,61,0,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dark Iron Shadowcaster - At 15% HP - Allow Combat Movement"),
(@ENTRY,0,13,0,61,0,100,0,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,"Dark Iron Shadowcaster - At 15% HP - Flee For Assist");

-- Dustbelcher Shaman
SET @ENTRY := 2718;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,20,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Aggro'),
(@ENTRY,0,1,0,0,0,100,0,0,0,3400,4700,11,9532,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Lightning Bolt');
-- NPC talk text insert
SET @ENTRY := 2718;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'I\'ll crush you!',12,0,50,0,0,0, 'on Aggro Text'),
(@ENTRY,0,1, 'Me smash! You die!',12,0,50,0,0,0, 'on Aggro Text'),
(@ENTRY,0,2, 'Raaar!!! Me smash $r!',12,0,50,0,0,0, 'on Aggro Text');

-- Kor'gresh Coldrage
SET @ENTRY := 2793;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4700,11,9672,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Frostbolt'),
(@ENTRY,0,1,0,0,0,100,0,8000,8000,25000,26000,11,4320,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Trelane\'s Freezing Touch');

-- Voodoo Troll SAI
SET @ENTRY := 3206;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,3000,3000,40000,40000,11,324,0,0,0,0,0,1,0,0,0,0,0,0,0,"Voodoo Troll - Out Of Combat - Cast Lightning Shield"),
(@ENTRY,0,1,0,2,0,100,0,0,30,27500,27500,11,11986,0,0,0,0,0,1,0,0,0,0,0,0,0,"Voodoo Troll - At 30% HP - Cast Healing Wave");

-- Shadowforge Commander SAI
SET @ENTRY := 2744;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,8258,0,0,0,0,0,1,0,0,0,0,0,0,0,"Shadowforge Commander - On Aggro - Cast Devotion Aura");

-- Zalazane SAI
SET @ENTRY := 3205;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,100,0,0,40,27500,27500,11,11986,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zalazane - At 40% HP - Cast Healing Wave"),
(@ENTRY,0,1,0,0,0,80,1,0,0,4000,4000,11,7289,0,0,0,0,0,2,0,0,0,0,0,0,0,"Zalazane - In Combat - Cast Shrink");

-- Saltspittle Oracle SAI
SET @ENTRY := 3742;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,2400,6200,14500,11,2608,0,0,0,0,0,2,0,0,0,0,0,0,0,"Saltspittle Oracle - In Combat - Cast Shock"),
(@ENTRY,0,1,0,2,0,100,0,0,30,54600,54600,11,11986,1,0,0,0,0,1,0,0,0,0,0,0,0,"Saltspittle Oracle - At 30% HP - Cast Healing Wave"),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,"Saltspittle Oracle - At 15% HP - Flee For Assist");

-- Bael'dun Appraiser SAI
SET @ENTRY := 2990;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,100,0,0,50,12000,12000,11,11986,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bael'dun Appraiser - At 50% HP - Cast Lesser Heal");

-- Shadowforge Tunneler
SET @ENTRY := 2739;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,5000,12000,13000,11,76622,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Sunder Armor');

-- Foulweald Shaman SAI
SET @ENTRY := 3748;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,1,0,0,0,0,11,6823,0,0,0,0,0,1,0,0,0,0,0,0,0,"Foulweald Shaman - On Respawn - Cast Corrupted Intellect Passive"),
(@ENTRY,0,1,0,1,0,100,0,1000,1000,300000,300000,11,33570,0,0,0,0,0,1,0,0,0,0,0,0,0,"Foulweald Shaman - Out Of Combat - Cast Strength of Earth Totem"),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,"Foulweald Shaman - At 15% HP - Flee For Assist");

-- Bristleback Thornweaver
SET @ENTRY := 3261;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4700,11,9739,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast bolt'),
(@ENTRY,0,1,2,2,0,100,1,0,15,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Flee at 15% HP'),
(@ENTRY,0,2,0,61,0,100,1,0,15,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text at 15% HP'),
(@ENTRY,0,3,0,9,0,100,0,0,20,9000,12000,11,12747,1,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Entangling Roots');
-- NPC talk text insert
SET @ENTRY := 3261;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, '%s attempts to run away in fear!',16,0,100,0,0,0, 'combat Flee');

-- Forsaken Seeker SAI
SET @ENTRY := 3732;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,4000,7000,8000,12000,11,9734,0,0,0,0,0,2,0,0,0,0,0,0,0,"Forsaken Seeker - In Combat - Cast Holy Smite"),
(@ENTRY,0,1,0,14,0,100,1,0,40,0,0,11,11986,1,0,0,0,0,7,0,0,0,0,0,0,0,"Forsaken Seeker - On Friendly Unit At 0 - 40% Health - Cast Heal"),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,"Forsaken Seeker - At 15% HP - Flee For Assist");

-- Daggerspine Sorceress
SET @ENTRY := 2596;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4700,11,9532,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Lightning Bolt'),
(@ENTRY,0,1,0,2,0,100,1,0,15,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Flee at 15% HP');

-- Lieutenant Valorcall
SET @ENTRY := 2612;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,8000,12000,15000,11,13953,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Holy Strike');

-- Razormane Mystic
SET @ENTRY := 3271;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4700,11,9613,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast bolt'),
(@ENTRY,0,1,2,2,0,100,1,0,15,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Flee at 15% HP'),
(@ENTRY,0,2,0,61,0,100,1,0,15,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text at 15% HP'),
(@ENTRY,0,3,0,1,0,100,0,500,1000,600000,600000,11,26364,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Lightning Shield on Spawn'),
(@ENTRY,0,4,0,16,0,100,0,26364,1,15000,30000,11,26364,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Lightning Shield on Repeat');
-- NPC talk text insert
SET @ENTRY := 3271;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, '%s attempts to run away in fear!',16,0,100,0,0,0, 'combat Flee');

-- Druid of the Fang
SET @ENTRY := 3840;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,0,0,100,2,0,0,3400,4700,11,20805,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast bolt'),
(@ENTRY,0,2,0,2,0,100,3,0,50,0,0,11,23381,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Healing Touch at 50% HP'),
(@ENTRY,0,3,0,0,0,100,2,10000,10000,13000,20000,11,8040,0,0,0,0,0,5,0,0,0,0,0,0,0,'Cast Druid\'s Slumber'),
(@ENTRY,0,4,0,4,0,100,3,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Aggro'),
(@ENTRY,0,5,0,14,0,100,2,800,40,18000,24000,11,23381,0,0,0,0,0,7,0,0,0,0,0,0,0,'Cast Healing Touch on Friendlies'),
(@ENTRY,0,6,7,2,0,100,3,0,30,0,0,11,7965,1,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Cobrahn Serpent Form at 30% HP'),
(@ENTRY,0,7,0,61,0,100,3,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 at 30% HP'),
(@ENTRY,0,8,0,0,1,100,2,3000,4000,16000,18000,11,744,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Poison'),
(@ENTRY,0,9,0,7,1,100,3,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Reset on Evade'),
(@ENTRY,0,10,0,1,0,100,3,1000,1000,1000,1000,11,39550,2,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Arcane Aura on Spawn');
-- NPC talk text insert
SET @ENTRY := 3840;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, '%s attempts to run away in fear!',16,0,100,0,0,0, 'combat Flee');

-- Akkrilus
SET @ENTRY := 3773;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,9000,21000,28000,11,37628,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Fel Immolate'),
(@ENTRY,0,1,0,0,0,100,0,2000,4000,24000,38000,11,37628,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Fel Fireball');

-- Shadowfang Darksoul SAI
SET @ENTRY := 3855;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,1300,9700,3600,7200,11,30898,0,0,0,0,0,2,0,0,0,0,0,0,0,"Shadowfang Darksoul - In Combat - Cast Shadow Word: Pain"),
(@ENTRY,0,1,0,0,0,100,2,2600,12700,3800,22500,11,8140,32,0,0,0,0,5,0,0,0,0,0,0,0,"Shadowfang Darksoul - In Combat - Cast Befuddlement");

-- Xavian Felsworn
SET @ENTRY := 3755;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4700,11,35913,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast bolt'),
(@ENTRY,0,1,0,2,0,100,1,0,15,0,0,11,6925,1,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Gift of the Xavian at 15% HP');

-- Temple A SAI
SET @ENTRY := 25471;
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;

-- Arctic Grizzly SAI
SET @ENTRY := 26482;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,23,0,100,1,47628,1,1,1,11,47675,0,0,0,0,0,1,0,0,0,0,0,0,0,"Arctic Grizzly - On Aura - Cast Recently Inoculated"),
(@ENTRY,0,2,0,61,0,100,1,0,0,0,0,41,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Arctic Grizzly - Event Linked - Despawn Delay 5 Seconds");

-- Temple B SAI
SET @ENTRY := 25472;
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;

-- Decaying Ghoul SAI
SET @ENTRY := 28565;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,0,1,0,0,29,1,1,28591,0,0,0,19,28591,15,0,0,0,0,0,"Ghoul - on data 1 set - start follow"),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,41,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ghoul - on follow completed - despawn");

-- Snowfall Elk SAI
SET @ENTRY := 26615;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,1,0,5,8000,12000,11,15976,0,0,0,0,0,2,0,0,0,0,0,0,0,"Snowfall Elk - Cast Puncture"),
(@ENTRY,0,1,2,23,0,100,1,47628,1,1,1,11,47675,0,0,0,0,0,1,0,0,0,0,0,0,0,"Snowfall Elk - On Aura - Cast Recently Inoculated"),
(@ENTRY,0,3,0,61,0,100,1,0,0,0,0,41,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Snowfall Elk - Event Linked - Despawn Delay 5 Seconds");

-- Temple C SAI
SET @ENTRY := 25473;
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;

-- Iron Rune-Shaper SAI
SET @ENTRY := 26270;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Iron Rune-Shaper - On Spellhit Throw Boulder - Forced Despawn");

-- Defeated Argent Footman SAI
SET @ENTRY := 28156;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,8,0,100,0,51276,0,0,0,11,59216,0,0,0,0,0,1,0,0,0,0,0,0,0,"Defeated Argent Footman - On Spellhit Incinerate Corpse - Cast Burning Corpse"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Defeated Argent Footman - On Spellhit Incinerate Corpse - Increment Phase"),
(@ENTRY,0,3,0,1,0,100,1,10000,10000,10000,10000,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Defeated Argent Footman - Out Of Combat - Forced Despawn");

-- Kalecgos SAI
SET @ENTRY := 38017;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,38,0,100,0,0,1,0,0,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kalecgos - On Data Set 0 1 - Run Script"),
(@ENTRY,0,1,0,61,0,100,0,0,2,0,0,80,@ENTRY*100+01,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kalecgos - On Data Set 0 1 - Run Script"),
(@ENTRY,0,2,3,40,0,100,0,1,38017,0,0,54,30000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kalecgos - On Waypoint 1 Reached - Pause Waypoint"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,9,27990,0,15,0,0,0,0,"Kalecgos - On Waypoint 1 Reached - Set Orientation Closest Creature 'Krasus'"),
(@ENTRY,0,4,5,40,0,100,0,2,38017,0,0,55,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kalecgos - On Waypoint 2 Reached - Stop Waypoint"),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kalecgos - On Waypoint 2 Reached - Set Orientation Home Position");


-- Redridge Mystic
SET @ENTRY := 430;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4700,11,9532,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Lightning Bolt'),
(@ENTRY,0,1,0,2,0,100,1,0,15,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Flee at 15% HP');

