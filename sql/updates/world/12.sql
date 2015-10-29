-- Murloc Minor Oracle SAI
SET @ENTRY := 456;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,100,1,0,15,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Flee at 15% HP"),
(@ENTRY,0,1,0,2,0,100,1,0,15,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Say Text at 15% HP"),
(@ENTRY,0,1,2,4,0,100,1,0,0,0,0,11,9532,0,0,0,0,0,2,0,0,0,0,0,0,0,"Murloc Minor Oracle - On Aggro - Cast 9532"),
(@ENTRY,0,2,0,0,0,100,0,5500,7500,12500,18500,11,79831,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cast Wave Crash"),
(@ENTRY,0,3,0,1,0,100,0,500,1000,600000,600000,11,79892,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cast Water Shield on Spawn"),
(@ENTRY,0,4,0,16,0,100,0,79892,1,15000,30000,11,79892,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cast Water Shield on Repeat"),
(@ENTRY,0,4,5,3,1,100,1,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Murloc Minor Oracle - Between 0-15% Mana - Allow Combat Movement (Phase 1)"),
(@ENTRY,0,5,0,61,1,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Murloc Minor Oracle - Between 0-15% Mana - Increment Event Phase (Phase 1)"),
(@ENTRY,0,6,0,9,1,100,1,35,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Murloc Minor Oracle - Between 35-80 Range - Allow Combat Movement (Phase 1)"),
(@ENTRY,0,7,0,9,1,100,1,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Murloc Minor Oracle - Between 5-15 Range - Disallow Combat Movement (Phase 1)"),
(@ENTRY,0,8,0,9,1,100,1,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Murloc Minor Oracle - Between 0-5 Range - Allow Combat Movement (Phase 1)"),
(@ENTRY,0,9,0,3,2,100,0,30,100,100,100,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,"Murloc Minor Oracle - Between 30-100% Mana - Decrement Event Phase (Phase 2)"),
(@ENTRY,0,10,11,2,1,100,1,0,15,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Murloc Minor Oracle - Between 0-15% Health - Set Event Phase 3"),
(@ENTRY,0,11,12,61,1,100,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Murloc Minor Oracle - Between 0-15% Health - Allow Combat Movement"),
(@ENTRY,0,12,0,61,1,100,0,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,"Murloc Minor Oracle - Between 0-15% Health - Flee For Assist");

-- Nightbane Shadow Weaver SAI
SET @ENTRY := 533;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,2,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Phase 1 on Aggro"),
(@ENTRY,0,2,0,61,0,100,1,0,0,0,0,11,77721,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cast Shadow Weave on Aggro"),
(@ENTRY,0,3,0,9,1,100,0,0,40,3400,4700,11,77721,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cast Shadow Weave"),
(@ENTRY,0,4,0,9,1,100,0,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving when not in Shadow Weave Range"),
(@ENTRY,0,5,0,9,1,100,0,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Stop Moving at 15 Yards"),
(@ENTRY,0,6,0,9,1,100,0,0,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Stop Moving when in Shadow Weave Range"),
(@ENTRY,0,7,0,3,1,100,0,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Phase 2 at 15% Mana"),
(@ENTRY,0,8,0,3,2,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Start Moving at 15% Mana"),
(@ENTRY,0,9,0,3,2,100,0,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Set Phase 1 When Mana is above 30%"),
(@ENTRY,0,10,0,2,1,100,1,0,45,0,0,11,85072,1,0,0,0,0,1,0,0,0,0,0,0,0,"Cast Woven Shadows at 45% HP");

-- Dustbelcher Shaman SAI
SET @ENTRY := 2718;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dustbelcher Shaman - Out of Combat - Disable Combat Movement"),
(@ENTRY,0,1,0,4,0,10,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dustbelcher Shaman - On Aggro - Say Line 0"),
(@ENTRY,0,2,3,4,0,100,0,0,0,0,0,11,9532,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dustbelcher Shaman - On Aggro - Cast 'Lightning Bolt'"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dustbelcher Shaman - On Aggro - Increment Phase By 0"),
(@ENTRY,0,4,0,9,0,100,0,0,40,3600,5200,11,9532,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dustbelcher Shaman - Within 0-40 Range - Cast 'Lightning Bolt'"),
(@ENTRY,0,5,6,3,0,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dustbelcher Shaman - Between 0-15% Mana - Enable Combat Movement"),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dustbelcher Shaman - Between 0-15% Mana - Increment Phase By 0"),
(@ENTRY,0,7,0,9,0,100,1,35,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dustbelcher Shaman - Within 35-80 Range - Enable Combat Movement"),
(@ENTRY,0,8,0,9,0,100,1,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dustbelcher Shaman - Within 5-15 Range - Disable Combat Movement"),
(@ENTRY,0,9,0,9,0,100,1,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dustbelcher Shaman - Within 0-5 Range - Enable Combat Movement"),
(@ENTRY,0,10,0,3,0,100,0,30,100,100,100,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,"Dustbelcher Shaman - Between 30-100% Mana - Decrement Phase By 1");

-- Galak Windchaser SAI
SET @ENTRY := 4096;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,4000,7000,18000,26000,11,6728,0,0,0,0,0,5,0,0,0,0,0,0,0,"Galak Windchaser - In Combat - Cast 6728"),
(@ENTRY,0,1,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,"Galak Windchaser - Between 0-15% Health - Flee For Assist");

-- Gravelsnout Surveyor SAI
SET @ENTRY := 4116;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2400,3800,11,20806,64,0,0,0,0,2,0,0,0,0,0,0,0,"Gravelsnout Surveyor - In Combat CMC - Cast 'Frostbolt'"),
(@ENTRY,0,1,2,4,0,100,1,0,0,0,0,11,20806,0,0,0,0,0,2,0,0,0,0,0,0,0,"Gravelsnout Surveyor - On Aggro - Cast 20806"),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gravelsnout Surveyor - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,3,0,9,1,100,0,0,40,2400,3800,11,20806,0,0,0,0,0,2,0,0,0,0,0,0,0,"Gravelsnout Surveyor - Between 0-40 Range - Cast 20806 (Phase 1)"),
(@ENTRY,0,4,5,3,1,100,1,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gravelsnout Surveyor - Between 0-15% Mana - Allow Combat Movement (Phase 1)"),
(@ENTRY,0,5,0,61,1,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gravelsnout Surveyor - Between 0-15% Mana - Increment Event Phase (Phase 1)"),
(@ENTRY,0,6,0,9,1,100,0,35,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gravelsnout Surveyor - Between 35-80 Range - Allow Combat Movement (Phase 1)"),
(@ENTRY,0,7,0,9,1,100,0,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gravelsnout Surveyor - Between 5-15 Range - Disallow Combat Movement (Phase 1)"),
(@ENTRY,0,8,0,9,1,100,0,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gravelsnout Surveyor - Between 0-5 Range - Allow Combat Movement (Phase 1)"),
(@ENTRY,0,9,0,3,2,100,0,30,100,100,100,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,"Gravelsnout Surveyor - Between 30-100% Mana - Decrement Event Phase (Phase 2)"),
(@ENTRY,0,10,11,2,1,100,1,0,15,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gravelsnout Surveyor - Between 0-15% Health - Set Event Phase 2"),
(@ENTRY,0,11,12,61,1,100,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gravelsnout Surveyor - Between 0-15% Health - Allow Combat Movement"),
(@ENTRY,0,12,0,61,1,100,0,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,"Gravelsnout Surveyor - Between 0-15% Health - Flee For Assist");

-- Daggerspine Siren SAI
SET @ENTRY := 2371;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daggerspine Siren - Out of Combat - Disable Combat Movement (No Repeat)"),
(@ENTRY,0,1,2,4,0,100,0,0,0,0,0,11,9532,0,0,0,0,0,2,0,0,0,0,0,0,0,"Daggerspine Siren - On Aggro - Cast 'Lightning Bolt'"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daggerspine Siren - On Aggro - Increment Phase By 0"),
(@ENTRY,0,3,0,9,0,100,0,0,40,3400,4800,11,9532,0,0,0,0,0,2,0,0,0,0,0,0,0,"Daggerspine Siren - Within 0-40 Range - Cast 'Lightning Bolt'"),
(@ENTRY,0,4,5,3,0,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daggerspine Siren - Between 0-15% Mana - Enable Combat Movement"),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daggerspine Siren - Between 0-15% Mana - Increment Phase By 0"),
(@ENTRY,0,6,0,9,0,100,1,35,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daggerspine Siren - Within 35-80 Range - Enable Combat Movement"),
(@ENTRY,0,7,0,9,0,100,1,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daggerspine Siren - Within 5-15 Range - Disable Combat Movement"),
(@ENTRY,0,8,0,9,0,100,1,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daggerspine Siren - Within 0-5 Range - Enable Combat Movement"),
(@ENTRY,0,9,0,3,0,100,0,30,100,100,100,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,"Daggerspine Siren - Between 30-100% Mana - Decrement Phase By 1"),
(@ENTRY,0,11,0,0,0,100,0,11000,15000,17000,21000,11,6728,0,0,0,0,0,6,0,0,0,0,0,0,0,"Daggerspine Siren - In Combat - Cast 'Enveloping Winds'"),
(@ENTRY,0,12,0,2,0,100,1,0,15,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daggerspine Siren - Between 0-15% Health - Set Event Phase 3"),
(@ENTRY,0,13,14,2,0,100,1,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daggerspine Siren - Between 0-15% Health - Enable Combat Movement (No Repeat)"),
(@ENTRY,0,14,0,61,0,100,1,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,"Daggerspine Siren - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Scarlet Abbot SAI
SET @ENTRY := 4303;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,14,0,100,2,1200,40,12000,18000,11,8362,0,0,0,0,0,7,0,0,0,0,0,0,0,"Cast Renew on Friendlies"),
(@ENTRY,0,1,1,2,0,100,3,0,30,0,0,11,8269,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scarlet Abbot - Between 0-30% Health - Cast 'Frenzy' (No Repeat) (Normal Dungeon)"),
(@ENTRY,0,2,0,2,0,100,2,0,40,12000,22000,11,12039,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cast Heal at 40% HP"),
(@ENTRY,0,3,0,2,0,100,3,0,20,0,0,11,8362,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scarlet Abbot - Between 0-20% Health - Cast 'Renew' (No Repeat) (Normal Dungeon)");

-- Scarlet Evoker
SET @ENTRY := 4289;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,3400,4700,11,20815,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast bolt'),
(@ENTRY,0,1,2,2,0,100,3,0,15,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Flee at 15% HP'),
(@ENTRY,0,2,0,61,0,100,3,0,15,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text at 15% HP'),
(@ENTRY,0,3,0,0,0,100,2,8000,8000,15000,16000,11,20296,1,0,0,0,0,5,0,0,0,0,0,0,0,'Cast Flamestrike'),
(@ENTRY,0,4,0,9,0,100,2,0,30,30000,35000,11,18968,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Fire Shield on Close');
-- NPC talk text insert
SET @ENTRY := 4289;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, '%s attempts to run away in fear!',16,0,100,0,0,0, 'combat Flee');

-- Razormane Seer SAI
SET @ENTRY := 3458;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,80,0,0,65,7500,7500,11,6274,0,0,0,0,0,1,0,0,0,0,0,0,0,"Razormane Seer - Between 0-65% Health - Cast 'Healing Ward' (No Repeat)");

-- Razormane Stalker SAI
SET @ENTRY := 3457;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,0,0,1000,1000,11,22766,32,0,0,0,0,1,0,0,0,0,0,0,0,"Razormane Stalker - In Combat - Cast Sneak");

-- High Priest Thel'danis SAI
SET @ENTRY := 1854;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,1,1,10000,0,0,0,0,1,0,0,0,0,0,0,0,"High Priest Thel'danis - On Aggro - Say Line 1 (No Repeat)"),
(@ENTRY,0,1,0,2,0,100,0,0,50,15000,15000,11,30155,0,0,0,0,0,1,0,0,0,0,0,0,0,"High Priest Thel'danis - Between 0-50% Health - Cast 'Heal' (No Repeat)"),
(@ENTRY,0,2,0,0,0,100,0,0,0,2500,3000,11,15498,0,0,0,0,0,2,0,0,0,0,0,0,0,"High Priest Thel'danis - In Combat - Cast 'Holy Smite' (No Repeat)");

-- Murloc Minor Tidecaller SAI
SET @ENTRY := 548;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Murloc Minor Tidecaller - Out of Combat - Disable Combat Movement"),
(@ENTRY,0,1,2,4,0,100,0,0,0,0,0,11,9672,0,0,0,0,0,2,0,0,0,0,0,0,0,"Murloc Minor Tidecaller - On Aggro - Cast 'Frostbolt'"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Murloc Minor Tidecaller - On Aggro - Increment Phase By 0"),
(@ENTRY,0,3,0,9,0,100,0,0,40,3500,6400,11,9672,0,0,0,0,0,2,0,0,0,0,0,0,0,"Murloc Minor Tidecaller - Within 0-40 Range - Cast 'Frostbolt'"),
(@ENTRY,0,4,5,3,0,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Murloc Minor Tidecaller - Between 0-15% Mana - Enable Combat Movement"),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Murloc Minor Tidecaller - Between 0-15% Mana - Increment Phase By 0"),
(@ENTRY,0,6,0,9,0,100,1,35,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Murloc Minor Tidecaller - Within 35-80 Range - Enable Combat Movement"),
(@ENTRY,0,7,0,9,0,100,1,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Murloc Minor Tidecaller - Within 5-15 Range - Disable Combat Movement"),
(@ENTRY,0,8,0,9,0,100,1,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Murloc Minor Tidecaller - Within 0-5 Range - Enable Combat Movement"),
(@ENTRY,0,9,0,3,0,100,0,30,100,100,100,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,"Murloc Minor Tidecaller - Between 30-100% Mana - Decrement Phase By 1"),
(@ENTRY,0,10,0,74,0,100,0,0,40,31800,82800,11,12491,0,0,0,0,0,9,0,0,0,0,0,0,0,"Murloc Minor Tidecaller - On Friendly Unit At 0 - 40% Health - Cast Healing Wave"),
(@ENTRY,0,11,0,2,0,100,1,0,15,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Murloc Minor Tidecaller - Between 0-15% Health - Set Event Phase 3"),
(@ENTRY,0,12,13,2,0,100,1,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Murloc Minor Tidecaller - Between 0-15% Health - Enable Combat Movement (No Repeat)"),
(@ENTRY,0,13,0,61,0,100,1,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,"Murloc Minor Tidecaller - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Bloodfeather Matriarch
SET @ENTRY := 2021;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4700,11,9532,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast bolt'),
(@ENTRY,0,1,2,2,0,100,1,0,15,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Flee at 15% HP'),
(@ENTRY,0,2,0,61,0,100,1,0,15,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text at 15% HP'),
(@ENTRY,0,3,0,4,0,100,1,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Aggro');
-- NPC talk text insert
SET @ENTRY := 2021;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, '%s attempts to run away in fear!',16,0,100,0,0,0, 'combat Flee'),
(@ENTRY,1,0, 'You will be easy prey, $c.',12,0,50,0,0,0, 'on Aggro Text'),
(@ENTRY,1,1, 'My talons will shred your puny body, $r.',12,0,50,0,0,0, 'on Aggro Text'),
(@ENTRY,1,2, 'A fine trophy your head will make, $r.',12,0,50,0,0,0, 'on Aggro Text');

-- Greymist Oracle
SET @ENTRY := 2207;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4700,11,9532,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast bolt'),
(@ENTRY,0,1,2,2,0,100,1,0,15,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Flee at 15% HP'),
(@ENTRY,0,2,0,61,0,100,1,0,15,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text at 15% HP');
-- NPC talk text insert
SET @ENTRY := 2207;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, '%s attempts to run away in fear!',16,0,100,0,0,0, 'combat Flee');

-- Blindlight Oracle
SET @ENTRY := 4820;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,3400,4700,11,12167,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast bolt'),
(@ENTRY,0,1,2,2,0,100,3,0,15,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Flee at 15% HP'),
(@ENTRY,0,2,0,61,0,100,3,0,15,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text at 15% HP'),
(@ENTRY,0,3,0,2,0,100,3,0,50,0,0,11,8362,1,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Renew at 50% HP');
-- NPC talk text insert
SET @ENTRY := 4820;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, '%s attempts to run away in fear!',16,0,100,0,0,0, 'combat Flee');

-- Hukku's Imp SAI
SET @ENTRY := 8658;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,180000,180000,11,37283,1,0,0,0,0,1,0,0,0,0,0,0,0,"Hukku's Imp - In Combat - Cast 'Fire Shield'"),
(@ENTRY,0,1,0,0,0,100,2,0,0,3100,4900,11,3110,64,0,0,0,0,2,0,0,0,0,0,0,0,"Hukku's Imp - In Combat CMC - Cast 'Firebolt' (Normal Dungeon)"),
(@ENTRY,0,2,0,4,0,100,2,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hukku's Imp - On Aggro - Increment Event Phase (Normal Dungeon)"),
(@ENTRY,0,3,4,3,1,100,3,0,7,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hukku's Imp - Between 0-7% Mana - Allow Combat Movement (Normal Dungeon) (Phase 1)"),
(@ENTRY,0,4,0,61,1,100,2,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hukku's Imp - Between 0-7% Mana - Increment Event Phase (Normal Dungeon) (Phase 1)"),
(@ENTRY,0,5,0,9,1,100,3,25,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hukku's Imp - Between 25-80 Range - Allow Combat Movement (Normal Dungeon) (Phase 1)"),
(@ENTRY,0,6,0,9,1,100,3,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hukku's Imp - Between 5-15 Range - Disallow Combat Movement (Normal Dungeon) (Phase 1)"),
(@ENTRY,0,7,0,9,1,100,3,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hukku's Imp - Between 0-5 Range - Allow Combat Movement (Normal Dungeon) (Phase 1)"),
(@ENTRY,0,8,0,3,0,100,2,15,100,100,100,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,"Hukku's Imp - Between 15-100% Mana - Decrement Event Phase (Normal Dungeon)");

-- Dragonmaw Shadowwarder SAI
SET @ENTRY := 1038;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3500,6400,11,20807,64,0,0,0,0,2,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - In Combat CMC - Cast 'Shadow Bolt'"),
(@ENTRY,0,1,0,4,0,100,1,0,0,0,0,11,20807,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - On Aggro - Cast 20807"),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,3,0,9,0,100,0,0,40,3500,6400,11,20807,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - Between 0-40 Range - Cast 20807 (Phase 1)"),
(@ENTRY,0,4,5,3,1,100,1,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - Between 0-15% Mana - Allow Combat Movement (Phase 1)"),
(@ENTRY,0,5,0,61,1,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - Between 0-15% Mana - Increment Event Phase (Phase 1)"),
(@ENTRY,0,6,0,9,1,100,0,35,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - Between 35-80 Range - Allow Combat Movement (Phase 1)"),
(@ENTRY,0,7,0,9,1,100,0,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - Between 5-15 Range - Disallow Combat Movement (Phase 1)"),
(@ENTRY,0,8,0,9,1,100,0,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - Between 0-5 Range - Allow Combat Movement (Phase 1)"),
(@ENTRY,0,9,0,0,0,100,0,2200,6200,20200,31000,11,6223,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - In Combat - Cast 6223"),
(@ENTRY,0,10,0,3,2,100,0,30,100,100,100,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - Between 30-100% Mana - Decrement Event Phase (Phase 2)"),
(@ENTRY,0,11,12,2,1,100,1,0,15,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - Between 0-15% Health - Set Event Phase 3"),
(@ENTRY,0,12,13,61,1,100,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - Between 0-15% Health - Allow Combat Movement"),
(@ENTRY,0,13,0,61,1,100,0,0,0,0,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Dragonmaw Shadowwarder - Between 0-15% Health - Flee For Assist");

-- Boahn <Druid of the Fang>
SET @ENTRY := 3672;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,3400,4700,11,9532,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast bolt'),
(@ENTRY,0,1,2,2,0,100,3,0,15,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Flee at 15% HP'),
(@ENTRY,0,2,0,61,0,100,3,0,15,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text at 15% HP'),
(@ENTRY,0,3,0,2,0,100,3,0,30,0,0,11,23381,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Healing Touch at 30% HP');
-- NPC talk text insert
SET @ENTRY := 3672;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, '%s attempts to run away in fear!',16,0,100,0,0,0, 'combat Flee');

-- Nak SAI
SET @ENTRY := 3434;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nak - Out Of Combat - Disallow Combat Movement"),
(@ENTRY,0,1,2,4,0,100,1,0,0,0,0,11,9532,0,0,0,0,0,2,0,0,0,0,0,0,0,"Nak - On Aggro - Cast 9532"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nak - On Aggro - Increment Event Phase"),
(@ENTRY,0,3,0,9,1,100,0,0,40,2400,3800,11,9532,0,0,0,0,0,2,0,0,0,0,0,0,0,"Nak - Between 0-40 Range - Cast 9532 (Phase 1)"),
(@ENTRY,0,4,5,3,1,100,1,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nak - Between 0-15% Mana - Allow Combat Movement (Phase 1)"),
(@ENTRY,0,5,0,61,1,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nak - Between 0-15% Mana - Increment Event Phase (Phase 1)"),
(@ENTRY,0,6,0,9,1,100,0,35,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nak - Between 35-80 Range - Allow Combat Movement (Phase 1)"),
(@ENTRY,0,7,0,9,1,100,0,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nak - Between 5-15 Range - Disallow Combat Movement (Phase 1)"),
(@ENTRY,0,8,0,9,1,100,0,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nak - Between 0-5 Range - Allow Combat Movement (Phase 1)"),
(@ENTRY,0,9,0,3,0,100,0,30,100,100,100,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,"Nak - Between 30-100% Mana - Decrement Event Phase"),
(@ENTRY,0,10,0,2,0,100,0,0,100,17500,22500,11,8004,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nak - Between 0-100% Health - Cast 8004");

-- Drywhisker Surveyor SAI
SET @ENTRY := 2573;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,1000,1000,1800000,1800000,11,12544,0,0,0,0,0,1,0,0,0,0,0,0,0,"Drywhisker Surveyor - Out of Combat - Cast 'Frost Armor'"),
(@ENTRY,0,1,0,0,0,100,0,0,0,3500,6400,11,20822,64,0,0,0,0,2,0,0,0,0,0,0,0,"Drywhisker Surveyor - In Combat CMC - Cast 'Frostbolt'"),
(@ENTRY,0,2,3,4,0,100,0,0,0,0,0,11,20822,0,0,0,0,0,2,0,0,0,0,0,0,0,"Drywhisker Surveyor - On Aggro - Cast Frostbolt"),
(@ENTRY,0,3,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Drywhisker Surveyor - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,4,0,9,0,100,0,0,40,3500,6400,11,20822,0,0,0,0,0,2,0,0,0,0,0,0,0,"Drywhisker Surveyor - At 0 - 40 Range - Cast Frostbolt"),
(@ENTRY,0,5,6,3,0,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Drywhisker Surveyor - At 15% Mana - Allow Combat Movement"),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Drywhisker Surveyor - At 15% Mana - Increment Phase"),
(@ENTRY,0,7,0,9,0,100,1,35,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Drywhisker Surveyor - At 35 - 80 Range - Allow Combat Movement"),
(@ENTRY,0,8,0,9,0,100,1,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Drywhisker Surveyor - At 0 - 5 Range - Allow Combat Movement"),
(@ENTRY,0,9,0,9,0,100,0,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Drywhisker Surveyor - At 5 - 15 Range - Allow Combat Movement"),
(@ENTRY,0,10,0,3,0,100,0,30,100,100,100,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,"Drywhisker Surveyor - At 100% Mana - Increment Phase"),
(@ENTRY,0,12,13,2,0,100,1,0,15,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Drywhisker Surveyor - At 15% HP - Set Phase 3"),
(@ENTRY,0,13,14,61,0,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Drywhisker Surveyor - At 15% HP - Allow Combat Movement"),
(@ENTRY,0,14,0,61,0,100,0,0,0,0,0,25,1,0,0,0,0,0,7,0,0,0,0,0,0,0,"Drywhisker Surveyor - At 15% HP - Flee For Assist");

-- Chieftain Nek'rosh SAI
SET @ENTRY := 2091;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,25,1,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chieftain Nek'rosh - On Aggro - Say Line 0"),
(@ENTRY,0,1,0,0,0,100,0,3800,9400,6400,9400,11,13730,0,0,0,0,0,1,0,0,0,0,0,0,0,"Chieftain Nek'rosh - In Combat - Cast 13730"),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,"Chieftain Nek'rosh - Between 0-15% Health - Flee For Assist");


-- Syndicate Wizard SAI
SET @ENTRY := 2319;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,1000,1000,1800000,1800000,11,12544,1,0,0,0,0,1,0,0,0,0,0,0,0,"Syndicate Wizard - Out of Combat - Cast 'Frost Armor'"),
(@ENTRY,0,1,0,0,0,100,0,0,0,3500,5400,11,20815,64,0,0,0,0,2,0,0,0,0,0,0,0,"Syndicate Wizard - In Combat CMC - Cast 'Fireball'"),
(@ENTRY,0,2,3,4,0,100,0,0,0,0,0,11,20815,0,0,0,0,0,2,0,0,0,0,0,0,0,"Syndicate Wizard - On Aggro - Cast Fireball"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Syndicate Wizard - On Aggro - Increment Phase"),
(@ENTRY,0,4,0,9,0,100,0,0,40,3500,5400,11,20815,0,0,0,0,0,2,0,0,0,0,0,0,0,"Syndicate Wizard - At 0 - 40 Range - Cast Fireball"),
(@ENTRY,0,5,6,3,0,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Syndicate Wizard - At 15% Mana - Allow Combat Movement"),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Syndicate Wizard - At 15% Mana - Increment Phase"),
(@ENTRY,0,7,0,9,0,100,1,35,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Syndicate Wizard - At 35 - 80 Range - Allow Combat Movement"),
(@ENTRY,0,8,0,9,0,100,1,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Syndicate Wizard - At 5 - 15 Range - Allow Combat Movement"),
(@ENTRY,0,9,0,9,0,100,1,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Syndicate Wizard - At 0 - 5 Range - Allow Combat Movement"),
(@ENTRY,0,10,0,3,0,100,0,30,100,100,100,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,"Syndicate Wizard - At 100% Mana - Increment Phase"),
(@ENTRY,0,11,12,9,0,100,0,0,5,0,0,79,10,150,0,0,0,0,1,0,0,0,0,0,0,0,"Syndicate Wizard - At 0 - 5 Range - Set Ranged Movement");


-- Boulderfist Shaman SAI
SET @ENTRY := 2570;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,15,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Boulderfist Shaman - On Aggro - Say Line 0"),
(@ENTRY,0,1,0,0,0,100,0,0,0,3500,6400,11,9532,64,0,0,0,0,2,0,0,0,0,0,0,0,"Boulderfist Shaman - In Combat CMC - Cast 'Lightning Bolt'"),
(@ENTRY,0,1,2,4,0,15,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Boulderfist Shaman - On Aggro - Say Line 0"),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,11,9532,0,0,0,0,0,2,0,0,0,0,0,0,0,"Boulderfist Shaman - On Aggro - Cast Lightning Bolt"),
(@ENTRY,0,3,0,2,0,100,1,0,40,0,0,11,11986,1,0,0,0,0,1,0,0,0,0,0,0,0,"Boulderfist Shaman - Between 0-45% Health - Cast 'Healing Wave' (No Repeat)"),
(@ENTRY,0,4,0,9,0,100,0,0,40,3500,6400,11,9532,0,0,0,0,0,2,0,0,0,0,0,0,0,"Boulderfist Shaman - At 0 - 40 Range - Cast Lightning Bolt"),
(@ENTRY,0,5,6,3,0,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Boulderfist Shaman - At 15% Mana - Allow Combat Movement"),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Boulderfist Shaman - At 15% Mana - Increment Phase"),
(@ENTRY,0,7,0,9,0,100,1,35,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Boulderfist Shaman - At 35 - 80 Range - Allow Combat Movement"),
(@ENTRY,0,8,0,9,0,100,1,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Boulderfist Shaman - At 0 - 5 Range - Allow Combat Movement"),
(@ENTRY,0,9,0,9,0,100,0,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Boulderfist Shaman - At 5 - 15 Range - Allow Combat Movement"),
(@ENTRY,0,10,0,3,0,100,0,30,100,100,100,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,"Boulderfist Shaman - At 100% Mana - Increment Phase"),
(@ENTRY,0,12,0,61,0,100,1,0,40,0,0,11,11986,1,0,0,0,0,1,0,0,0,0,0,0,0,"Boulderfist Shaman - At 40% HP - Cast Healing Wave");

-- Daggerspine Sorceress SAI
SET @ENTRY := 2596;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daggerspine Sorceress - Out of Combat - Disable Combat Movement"),
(@ENTRY,0,1,2,4,0,100,0,0,0,0,0,11,20824,0,0,0,0,0,2,0,0,0,0,0,0,0,"Daggerspine Sorceress - On Aggro - Cast 'Lightning Bolt'"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daggerspine Sorceress - On Aggro - Increment Phase By 0"),
(@ENTRY,0,3,0,9,0,100,0,0,40,3400,4700,11,20824,0,0,0,0,0,2,0,0,0,0,0,0,0,"Daggerspine Sorceress - Within 0-40 Range - Cast 'Lightning Bolt'"),
(@ENTRY,0,4,5,3,0,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daggerspine Sorceress - Between 0-15% Mana - Enable Combat Movement"),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daggerspine Sorceress - Between 0-15% Mana - Increment Phase By 0"),
(@ENTRY,0,6,0,9,0,100,1,35,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daggerspine Sorceress - Within 35-80 Range - Enable Combat Movement"),
(@ENTRY,0,7,0,9,0,100,1,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daggerspine Sorceress - Within 0-5 Range - Enable Combat Movement"),
(@ENTRY,0,8,0,9,0,100,0,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daggerspine Sorceress - Within 5-15 Range - Disable Combat Movement"),
(@ENTRY,0,9,0,3,0,100,0,30,100,100,100,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,"Daggerspine Sorceress - Between 30-100% Mana - Decrement Phase By 1"),
(@ENTRY,0,11,0,2,0,100,1,0,15,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daggerspine Sorceress - Between 0-15% Health - Set Event Phase 3"),
(@ENTRY,0,12,13,2,0,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daggerspine Sorceress - Between 0-15% Health - Enable Combat Movement"),
(@ENTRY,0,13,0,61,0,100,0,0,0,0,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Daggerspine Sorceress - Between 0-15% Health - Flee For Assist");

-- Cresting Exile SAI
SET @ENTRY := 2761;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,1000,1000,1800000,1800000,11,12544,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cresting Exile - Out Of Combat - Cast Frost Armor"),
(@ENTRY,0,1,0,8,0,100,0,4131,0,0,0,41,500,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cresting Exile - on spellhit - Despawn");

-- Severed Druid
SET @ENTRY := 3799;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4700,11,9739,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast bolt'),
(@ENTRY,0,1,0,2,0,100,0,0,55,20000,34000,11,12160,2,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Rejuvenation at 55% HP');

-- Dark Strand Cultist SAI
SET @ENTRY := 3725;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dark Strand Cultist - Out Of Combat - Disallow Combat Movement"),
(@ENTRY,0,1,0,1,0,100,1,1000,1000,0,0,11,11939,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dark Strand Cultist - Out Of Combat - Cast 11939"),
(@ENTRY,0,2,3,4,0,100,1,0,0,0,0,11,20791,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dark Strand Cultist - On Aggro - Cast 20791"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dark Strand Cultist - On Aggro - Increment Event Phase"),
(@ENTRY,0,4,0,9,1,100,0,0,40,3900,5900,11,20791,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dark Strand Cultist - Between 0-40 Range - Cast 20791 (Phase 1)"),
(@ENTRY,0,5,6,3,1,100,1,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dark Strand Cultist - Between 0-15% Mana - Allow Combat Movement (Phase 1)"),
(@ENTRY,0,6,0,61,1,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dark Strand Cultist - Between 0-15% Mana - Increment Event Phase (Phase 1)"),
(@ENTRY,0,7,0,9,1,100,1,35,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dark Strand Cultist - Between 35-80 Range - Allow Combat Movement (Phase 1)"),
(@ENTRY,0,8,0,9,1,100,1,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dark Strand Cultist - Between 5-15 Range - Disallow Combat Movement (Phase 1)"),
(@ENTRY,0,9,0,9,1,100,1,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dark Strand Cultist - Between 0-5 Range - Allow Combat Movement (Phase 1)"),
(@ENTRY,0,10,0,3,0,100,0,30,100,100,100,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,"Dark Strand Cultist - Between 30-100% Mana - Decrement Event Phase");

-- Dark Strand Assassin SAI
SET @ENTRY := 3879;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,5000,11000,18000,11,3405,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dark Strand Assassin - IC - Cast Soul Rend"),
(@ENTRY,0,1,0,54,0,100,0,0,0,0,0,18,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dark Strand Assassin - On Just Summoned - Set Unit Flags - Immune to NPC/NPC"),
(@ENTRY,0,2,0,38,0,100,0,1,1,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dark Strand Assassin - On Data Set - Remove Unit Flags - Immune to NPC/NPC");

-- Thunderhawk Hatchling SAI
SET @ENTRY := 3247;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,1,0,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Thunderhawk Hatchling - Out Of Combat - Disallow Combat Movement"),
(@ENTRY,0,2,3,4,0,100,1,0,0,0,0,11,9532,0,0,0,0,0,2,0,0,0,0,0,0,0,"Thunderhawk Hatchling - On Aggro - Cast 9532"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Thunderhawk Hatchling - On Aggro - Increment Event Phase"),
(@ENTRY,0,4,0,9,1,100,0,0,40,2400,3800,11,9532,0,0,0,0,0,2,0,0,0,0,0,0,0,"Thunderhawk Hatchling - Between 0-40 Range - Cast 9532 (Phase 1)"),
(@ENTRY,0,5,6,3,1,100,1,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Thunderhawk Hatchling - Between 0-15% Mana - Allow Combat Movement (Phase 1)"),
(@ENTRY,0,6,0,61,1,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Thunderhawk Hatchling - Between 0-15% Mana - Increment Event Phase (Phase 1)"),
(@ENTRY,0,7,0,9,1,100,0,35,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Thunderhawk Hatchling - Between 35-80 Range - Allow Combat Movement (Phase 1)"),
(@ENTRY,0,8,0,9,1,100,0,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Thunderhawk Hatchling - Between 5-15 Range - Disallow Combat Movement (Phase 1)"),
(@ENTRY,0,9,0,9,1,100,0,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Thunderhawk Hatchling - Between 0-5 Range - Allow Combat Movement (Phase 1)"),
(@ENTRY,0,10,0,3,0,100,0,30,100,100,100,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,"Thunderhawk Hatchling - Between 30-100% Mana - Decrement Event Phase");

-- Fallenroot Shadowstalker SAI
SET @ENTRY := 4798;
UPDATE `creature_template` SET `AIName`="0" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;

-- Hatefury Hellcaller SAI
SET @ENTRY := 4675;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,4500,21000,25000,11,77425,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cast Immolate"),
(@ENTRY,0,1,0,1,0,100,1,3000,5000,0,0,11,77426,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cast Summon Burning Minion on Spawn"),
(@ENTRY,0,2,3,0,1,100,0,2000,2000,20000,20000,11,5740,0,0,0,0,0,2,0,0,0,0,0,0,0,"Hatefury Hellcaller - In Combat - Cast 5740 (Phase 1)"),
(@ENTRY,0,3,0,61,1,100,0,0,0,0,0,20,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hatefury Hellcaller - In Combat - Stop Auto Attack (Phase 1)"),
(@ENTRY,0,4,5,3,1,100,1,0,5,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hatefury Hellcaller - Between 0-5% Mana - Increment Event Phase (Phase 1)"),
(@ENTRY,0,5,0,61,1,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hatefury Hellcaller - Between 0-5% Mana - Start Auto Attack (Phase 1)"),
(@ENTRY,0,6,7,2,1,100,1,0,30,0,0,11,8599,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hatefury Hellcaller - Between 0-30% Health - Cast 8599 (Phase 1)"),
(@ENTRY,0,7,0,61,1,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hatefury Hellcaller - Between 0-30% Health - Say Line 0 (Phase 1)");

-- Death's Head Priest SAI
SET @ENTRY := 4517;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,3400,4700,11,20825,64,0,0,0,0,2,0,0,0,0,0,0,0,"Cast bolt"),
(@ENTRY,0,1,0,0,0,100,2,0,0,2400,3800,11,9613,64,0,0,0,0,2,0,0,0,0,0,0,0,"Death's Head Priest - In Combat CMC - Cast 'Shadow Bolt' (No Repeat) (Normal Dungeon)"),
(@ENTRY,0,2,3,4,0,100,3,0,0,0,0,11,9613,0,0,0,0,0,2,0,0,0,0,0,0,0,"Death's Head Priest - On Aggro - Cast 9613 (Normal Dungeon)"),
(@ENTRY,0,3,0,1,0,100,2,500,1000,600000,600000,11,13864,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cast Power Word: Fortitude on Spawn"),
(@ENTRY,0,4,0,14,0,100,2,2000,40,17000,19000,11,12039,0,0,0,0,0,7,0,0,0,0,0,0,0,"Cast Heal on Friendlies"),
(@ENTRY,0,5,6,3,1,100,3,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Death's Head Priest - Between 0-15% Mana - Allow Combat Movement (Normal Dungeon) (Phase 1)"),
(@ENTRY,0,6,0,61,1,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Death's Head Priest - Between 0-15% Mana - Increment Event Phase (Normal Dungeon) (Phase 1)"),
(@ENTRY,0,7,0,9,1,100,3,35,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Death's Head Priest - Between 35-80 Range - Allow Combat Movement (Normal Dungeon) (Phase 1)"),
(@ENTRY,0,8,0,9,1,100,3,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Death's Head Priest - Between 5-15 Range - Disallow Combat Movement (Normal Dungeon) (Phase 1)"),
(@ENTRY,0,9,0,9,1,100,3,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Death's Head Priest - Between 0-5 Range - Allow Combat Movement (Normal Dungeon) (Phase 1)"),
(@ENTRY,0,10,0,3,2,100,2,30,100,100,100,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,"Death's Head Priest - Between 30-100% Mana - Decrement Event Phase (Normal Dungeon) (Phase 2)"),
(@ENTRY,0,11,12,2,1,100,3,0,15,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Death's Head Priest - Between 0-15% Health - Set Event Phase 3 (Normal Dungeon)"),
(@ENTRY,0,12,13,61,1,100,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Death's Head Priest - Between 0-15% Health - Allow Combat Movement (Normal Dungeon)"),
(@ENTRY,0,13,0,61,0,100,0,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,"Death's Head Priest - Between 0-15% Health - Flee For Assist (Normal Dungeon)"),
(@ENTRY,0,14,15,2,0,100,3,0,15,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Flee at 15% HP"),
(@ENTRY,0,15,0,61,0,100,3,0,15,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Say Text at 15% HP");

-- Blindlight Murloc
SET @ENTRY := 4818;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,4000,5000,14000,16000,11,11971,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Sunder Armor');

-- Lady Sarevess
SET @ENTRY := 4831;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,2300,3900,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot'),
(@ENTRY,0,1,0,0,0,100,2,9000,12000,12000,15000,11,8435,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Forked Lightning'),
(@ENTRY,0,2,0,6,0,100,3,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Death'),
(@ENTRY,0,3,0,4,0,100,3,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Say on Aggro'),
(@ENTRY,0,4,0,0,0,100,2,7000,9000,9000,13000,11,246,0,0,0,0,0,5,0,0,0,0,0,0,0,'Cast Slow');
-- NPC talk text insert
SET @ENTRY := 4831;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'Hearty Kill!',1,0,100,0,0,5801, 'combat Say'),
(@ENTRY,1,0, 'You should not be here! Slay them!',14,0,100,0,0,5799, 'combat Say');

-- Aqua Guardian SAI
SET @ENTRY := 6047;
UPDATE `creature_template` SET `AIName`="0" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;

-- Alexandra Blazen SAI
SET @ENTRY := 8378;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,1,1,0,0,2,250,0,0,0,0,0,1,0,0,0,0,0,0,0,"Alexandra Blazen - On Data Set 1 1 - Set Faction 250"),
(@ENTRY,0,1,0,38,0,100,0,2,2,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,"Alexandra Blazen - On Data Set 2 2 - Set Faction 35"),
(@ENTRY,0,2,0,2,0,100,0,0,0,20000,20000,11,11640,0,0,0,0,0,1,0,0,0,0,0,0,0,"Alexandra Blazen - Between 0-0% Health - Cast 'Renew'");

-- Patrick Mills SAI
SET @ENTRY := 8382;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,1,1,0,0,2,250,0,0,0,0,0,1,0,0,0,0,0,0,0,"Patrick Mills - On Data Set 1 1 - Set Faction 250"),
(@ENTRY,0,1,0,38,0,100,0,2,2,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,"Patrick Mills - On Data Set 2 2 - Set Faction 35"),
(@ENTRY,0,2,0,0,0,100,0,2000,2000,4000,4000,11,17143,0,0,0,0,0,2,0,0,0,0,0,0,0,"Patrick Mills - In Combat - Cast 'Holy Strike'");

-- Coast Crawl Deepseer
SET @ENTRY := 5328;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4700,11,9672,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast bolt'),
(@ENTRY,0,1,2,2,0,100,1,0,15,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Flee at 15% HP'),
(@ENTRY,0,2,0,61,0,100,1,0,15,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text at 15% HP'),
(@ENTRY,0,3,0,1,0,100,0,500,1000,1800000,1800000,11,12544,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Frost Armor on Spawn');
-- NPC talk text insert
SET @ENTRY := 5328;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, '%s attempts to run away in fear!',16,0,100,0,0,0, 'combat Flee');

-- Slim's Friend SAI
SET @ENTRY := 4971;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3700,6500,16000,22800,11,744,32,0,0,0,0,2,0,0,0,0,0,0,0,"Slim's Friend - In Combat - Cast 'Poison'"),
(@ENTRY,0,1,0,0,0,100,0,5000,8900,8400,15300,11,7992,32,0,0,0,0,2,0,0,0,0,0,0,0,"Slim's Friend - In Combat - Cast 'Slowing Poison'");

-- Dunemaul Warlock
SET @ENTRY := 5475;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4700,11,9613,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast bolt'),
(@ENTRY,0,1,0,4,0,25,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Aggro'),
(@ENTRY,0,2,0,0,0,100,0,5000,9000,15000,17800,11,6909,1,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Curse of Thorns');
-- NPC talk text insert
SET @ENTRY := 5475;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'I\'ll crush you!',12,0,50,0,0,0, 'on Aggro Text'),
(@ENTRY,0,1, 'Me smash! You die!',12,0,50,0,0,0, 'on Aggro Text'),
(@ENTRY,0,2, 'Raaar!!! Me smash $r!',12,0,50,0,0,0, 'on Aggro Text');

-- Burning Blade Toxicologist SAI
SET @ENTRY := 12319;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,0,0,85,0,5000,5000,25000,25000,11,11962,0,0,0,0,0,2,0,0,0,0,0,0,0,"Burning Blade Toxicologist - In Combat - Cast 11962"),
(@ENTRY,0,2,0,0,0,85,0,9000,9000,32000,32000,11,980,0,0,0,0,0,5,0,0,0,0,0,0,0,"Burning Blade Toxicologist - In Combat - Cast 980"),
(@ENTRY,0,3,0,2,0,100,0,0,50,15000,15000,11,689,0,0,0,0,0,2,0,0,0,0,0,0,0,"Burning Blade Toxicologist - Between 0-50% Health - Cast 689");

-- Druid of the Talon
SET @ENTRY := 40969;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4700,11,9739,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast bolt'),
(@ENTRY,0,1,0,9,0,100,0,0,30,9000,11000,11,33844,1,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Entangling Roots'),
(@ENTRY,0,2,0,2,0,100,0,0,40,14000,21000,11,12160,1,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Rejuvenation at 40% HP'),
(@ENTRY,0,3,0,1,0,100,0,500,1000,6000000,6000000,11,79833,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Mark of the Wild on Spawn');

-- Anubisath Defender SAI
SET @ENTRY := 15277;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,5000,5000,10000,10000,11,14297,0,0,0,0,0,2,0,0,0,0,0,0,0,"Anubisath Defender - In Combat - Cast 'Shadow Storm' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,2,5000,5000,10000,10000,11,23931,0,0,0,0,0,2,0,0,0,0,0,0,0,"Anubisath Defender - In Combat - Cast 'Thunderclap' (Normal Dungeon)"),
(@ENTRY,0,2,0,0,0,100,2,10000,10000,10000,10000,11,24340,0,0,0,0,0,6,0,0,0,0,0,0,0,"Anubisath Defender - In Combat - Cast 'Meteor' (Normal Dungeon)"),
(@ENTRY,0,3,0,0,0,100,2,10000,10000,20000,20000,11,22997,0,0,0,0,0,6,0,0,0,0,0,0,0,"Anubisath Defender - In Combat - Cast 'Plague' (Normal Dungeon)"),
(@ENTRY,0,4,0,0,0,100,3,0,0,500,500,11,19595,0,0,0,0,0,1,0,0,0,0,0,0,0,"Anubisath Defender - In Combat - Cast 'Shadow and Frost Reflect' (Normal Dungeon)"),
(@ENTRY,0,5,0,0,0,100,3,0,0,500,500,11,13022,0,0,0,0,0,1,0,0,0,0,0,0,0,"Anubisath Defender - In Combat - Cast 'Fire and Arcane Reflect' (Normal Dungeon)"),
(@ENTRY,0,7,8,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Anubisath Defender - Between 0-10% Health - Say Line 0 (No Repeat) (Normal Dungeon)"),
(@ENTRY,0,8,0,61,0,100,0,0,0,0,0,11,25699,0,0,0,0,0,1,0,0,0,0,0,0,0,"Anubisath Defender - Between 0-10% Health - Cast 'Explode' (No Repeat) (Normal Dungeon)"),
(@ENTRY,0,9,0,0,0,34,2,1000,1000,12000,12000,12,15343,1,60000,0,0,0,6,0,0,0,0,0,0,0,"Anubisath Defender - In Combat - Summon Creature 'Qiraji Swarmguard' (No Repeat) (Normal Dungeon)"),
(@ENTRY,0,10,0,0,0,34,2,1000,1000,12000,12000,12,15317,1,60000,0,0,0,6,0,0,0,0,0,0,0,"Anubisath Defender - In Combat - Summon Creature 'Qiraji Scorpion' (No Repeat) (Normal Dungeon)"),
(@ENTRY,0,11,0,0,0,34,2,1000,1000,12000,12000,12,15387,1,60000,0,0,0,6,0,0,0,0,0,0,0,"Anubisath Defender - In Combat - Summon Creature 'Qiraji Warrior' (No Repeat) (Normal Dungeon)");

-- Crazed Colossus SAI
SET @ENTRY := 19823;
UPDATE `creature_template` SET `AIName`="0" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;

