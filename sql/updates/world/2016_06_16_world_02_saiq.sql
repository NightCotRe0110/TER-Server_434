SET @CGUID :=    29979;

DELETE FROM `creature_text` WHERE `entry` IN(26097,25380,25602,25834,25849,25983,25380,25401);
DELETE FROM `creature_text` WHERE `entry` =23837 AND `groupid`=1;

INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(26097, 0, 0, 'Thank you for saving us. We accidentally uncovered the pieces of Gearmaster Mechazod and reassembled him.', 12, 0, 100, 0, 0, 0, 'Fizzcrank Gnome Ghost'),
(26097, 1, 0, 'In return, he ''de-cursed'' us, saying that we were being ''fixed'' by returning us to the state of being mechanical constructs.', 12, 0, 100, 0, 0, 0, 'Fizzcrank Gnome Ghost'),
(26097, 2, 0, 'He claims that all creations of the Titans fall prey to what he calls, ''The Curse of Flesh''. He says that the original gnomes were once mechagnomes.', 12, 0, 100, 0, 0, 0, 'Fizzcrank Gnome Ghost'),
(26097, 3, 0, 'He''s quite insane! Someone must put a stop to his madness before it''s too late for everyone!', 12, 0, 100, 0, 0, 0, 'Fizzcrank Gnome Ghost'),
(25602, 0, 0, 'Now, $n, let us release their souls and hear what they have to say.', 12, 0, 100, 1, 0, 0, 'Greatmother Taiga'),
(25602, 1, 0, 'This is dire news indeed!', 12, 0, 100, 1, 0, 0, 'Greatmother Taiga'),
(25380, 0, 0, 'And remember, $n, the bloodspore powder can be used to weaken all magnataur in Gammoth.', 15, 0, 100, 0, 0, 0, 'Primal Mighthorn'),
(25834, 0, 0, 'You were looking for me, child? Why do you come to kill me, $n? I only wish to help.', 12, 0, 100, 6, 0, 0, 'Gearmaster Mechazod'),
(25834, 1, 0, 'Now that I have been reassembled, we can return to a time of perfection... the time of the Titans!', 12, 0, 100, 1, 0, 0, 'Gearmaster Mechazod'),
(25834, 2, 0, 'But, I can see it in your eyes, hear it in your pulse rate. You would destroy me despite my offer of immortality!', 12, 0, 100, 25, 0, 0, 'Gearmaster Mechazod'),
(25834, 3, 0, 'Very well. It saddens me that it has come to this. I look upon all of you as if you were my children. I will slay you if I must!', 12, 0, 100, 25, 0, 0, 'Gearmaster Mechazod'),
(23837, 1, 0, 'There is a noise from behind you!', 41, 0, 100, 0, 0, 0, 'ELM General Purpose Bunny'),
(25849, 0, 0, 'It''s really going to work this time... right?', 12, 0, 100, 6, 0, 0, 'Fezzix Geartwist'),
(25849, 1, 0, 'It works, Dorain! Look! It actually works...', 12, 0, 100, 4, 0, 0, 'Fezzix Geartwist'),
(25849, 2, 0, 'Here I goooooooooo!', 12, 0, 100, 0, 0, 0, 'Fezzix Geartwist'),
(25849, 3, 0, 'OUCH!', 12, 0, 100, 0, 0, 0, 'Fezzix Geartwist'),
(25849, 4, 0, 'I give up! So much for goblin ingenuity!', 12, 0, 100, 5, 0, 0, 'Fezzix Geartwist'),
(25983, 0, 0, 'Fezzix, I think we''ve solved your little engine problem.', 12, 0, 100, 1, 0, 0, 'Dorain Frosthoof'),
(25401, 0, 0, '%s armed.', 16, 0, 100, 0, 0, 0, 'Seaforium Depth Charge'),
(25401, 1, 0, 'Detonation in 5...', 16, 0, 100, 0, 0, 0, 'Seaforium Depth Charge'),
(25401, 2, 0, '4...', 16, 0, 100, 0, 0, 0, 'Seaforium Depth Charge'),
(25401, 3, 0, '3...', 16, 0, 100, 0, 0, 0, 'Seaforium Depth Charge'),
(25401, 4, 0, '2...', 16, 0, 100, 0, 0, 0, 'Seaforium Depth Charge'),
(25401, 5, 0, '1...', 16, 0, 100, 0, 0, 0, 'Seaforium Depth Charge');

UPDATE `creature_template` SET `unit_flags`=33024 WHERE  `entry`=25834;
UPDATE `creature_template` SET `ainame`='SmartAI', `scriptname`='' WHERE `entry` IN(26097,35426,25602,25983,25849,25834,25380,25401);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN(26097,35426,25602,25983,25849,25834,25380,25401) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN(2560200,2598300,2584900,2584901,2583400,2540100) AND `source_type`=9;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(25401, 0, 0, 1, 11, 0, 100, 0, 0, 0, 0, 0, 64, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Seaforium Depth Charge - On Just Summoned - Store Targetlist'),
(25401, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 80, 2540100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Seaforium Depth Charge - On Just Summoned - Run Script'),
(25401, 0, 2, 0, 1, 2, 100, 1, 100, 100, 0, 0, 11, 45506, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Seaforium Depth Charge - OOC (Phase 2/No repeat) - Cast Nerub ar Sinkhole Credit (SW) '),
(25401, 0, 3, 0, 1, 2, 100, 1, 100, 100, 0, 0, 11, 45508, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Seaforium Depth Charge - OOC (Phase 2/No repeat) - Cast Nerub ar Sinkhole Credit (SE)'),
(25401, 0, 4, 0, 1, 2, 100, 1, 100, 100, 0, 0, 11, 45510, 2, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Seaforium Depth Charge - OOC (Phase 2/No repeat) - Cast Nerub ar Sinkhole Credit (NW)'),
(25401, 0, 5, 0, 1, 2, 100, 1, 100, 100, 0, 0, 11, 45512, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Seaforium Depth Charge - OOC (Phase 2/No repeat) - Cast Nerub ar Sinkhole Credit (NE)'),
(25834, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 64, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Gearmaster Mechazod - On Just Summoned - Store Targetlist'),
(25834, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 80, 2583400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Gearmaster Mechazod - On Just Summoned - Run Script'),
(25834, 0, 2, 0, 7, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Gearmaster Mechazod - On Evade Despawn'),
(25380, 0, 0, 0, 19, 0, 100, 0, 11721, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Primal Mighthorn - On Quest Accept (Gammothra the Tormentor) - Say Line 1'),
(26097, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 11, 35426, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fizzcrank Gnome Ghost - OOC (No Repeat) - Cast Arcane Explosion Visual'),
(26097, 0, 1, 0, 54, 0, 100, 0, 0, 0, 0, 0, 11, 32423, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fizzcrank Gnome Ghost - On Just Summoned - Cast Blue Radiation'),
(25602, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Greatmother Taiga - On Reset Set Phase 1'),
(25602, 0, 1, 2, 20, 1, 100, 0, 11899, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Greatmother Taiga - On Quest Reward (Souls of the Decursed) - Say Line 1 (Phase 1)'),
(25602, 0, 2, 0, 61, 1, 100, 0, 0, 0, 0, 0, 80, 2560200, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Greatmother Taiga - On Quest Reward (Souls of the Decursed) - Run Script (Phase 1)'),
(25983, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Dorain Frosthoof - On Reset Set Phase 1'),
(25983, 0, 1, 2, 20, 1, 100, 0, 11893, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Dorain Frosthoof -  - On Quest Reward (The Power of the Elements) - Say Line 1'),
(25983, 0, 2, 0, 61, 1, 100, 0, 0, 0, 0, 0, 80, 2598300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Dorain Frosthoof -  - On Quest Reward (The Power of the Elements) - Run Script'),
(25849, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fezzix Geartwist - On Reset Set Phase 1'),
(25849, 0, 1, 2, 20, 1, 100, 0, 11894, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Fezzix Geartwist -  - On Quest Reward (Patching Up) - Say Line 1'),
(25849, 0, 2, 0, 61, 1, 100, 0, 0, 0, 0, 0, 80, 2584900, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fezzix Geartwist -  - On Quest Reward (Patching Up) - Run Script'),
(25849, 0, 3, 0, 40, 2, 100, 0, 11, 25849, 0, 0, 80, 2584901, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fezzix Geartwist -  - On Reached WP11 - Run Script (Phase 2)'),
(25849, 0, 4, 5, 40, 2, 100, 0, 12, 25849, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fezzix Geartwist -  - On Reached WP12 - Set Phase 1'),
(25849, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 4.06662, 'Fezzix Geartwist -  - On Reached WP12 - Set Orientation'),
(2540100, 9, 0, 0, 0, 0, 100, 0, 0, 2000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Seaforium Depth Charge - Script - Say Line 0'),
(2540100, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Seaforium Depth Charge - Script - Say Line 1'),
(2540100, 9, 2, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Seaforium Depth Charge - Script - Say Line 2'),
(2540100, 9, 3, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Seaforium Depth Charge - Script - Say Line 2'),
(2540100, 9, 4, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Seaforium Depth Charge - Script - Say Line 2'),
(2540100, 9, 5, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Seaforium Depth Charge - Script - Say Line 2'),
(2540100, 9, 6, 0, 0, 0, 100, 0, 900, 900, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Seaforium Depth Charge - Script - Set Phase 2'),
(2540100, 9, 7, 0, 0, 0, 100, 0, 100, 100, 0, 0, 11, 45502, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Seaforium Depth Charge - Script - Cast Seaforium Depth Charge Explosion'),
(2540100, 9, 8, 0, 0, 0, 100, 0, 500, 500, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Seaforium Depth Charge - Script - Cast Seaforium Depth Charge Explosion'),
(2584900, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fezzix Geartwist - Script - Set Phase 2'),
(2584900, 9, 1, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 12, 26040, 1, 13000, 0, 0, 0, 8, 0, 0, 0, 3481.329, 4099.854, 17.83902, 3.351032, 'Fezzix Geartwist - Script - Spawn Fezzixs Flying Machine'),
(2584900, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 70, 60, 0, 0, 0, 0, 0, 14, 60069, 188087, 0, 0, 0, 0, 0, 'Fezzix Geartwist - Script - Despawn Wreckage A'),
(2584900, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 70, 60, 0, 0, 0, 0, 0, 14, 60080, 188088, 0, 0, 0, 0, 0, 'Fezzix Geartwist - Script - Despawn Wreckage B'),
(2584900, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 70, 60, 0, 0, 0, 0, 0, 14, 60095, 188089, 0, 0, 0, 0, 0, 'Fezzix Geartwist - Script - Despawn Wreckage C'),
(2584900, 9, 5, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Fezzix Geartwist - Script - Say Line 2'),
(2584900, 9, 6, 0, 0, 0, 100, 0, 9000, 9000, 0, 0, 43, 0, 22719, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fezzix Geartwist - Script - Mount Display ID 22719'),
(2584900, 9, 7, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Fezzix Geartwist - Script - Say Line 3'),
(2584900, 9, 8, 0, 0, 0, 100, 0, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fezzix Geartwist - Script - Set Fly On'),
(2584900, 9, 9, 0, 0, 0, 100, 0, 0, 0, 0, 0, 53, 0, 25849, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fezzix Geartwist - Script - Start WP'),
(2583400, 9, 0, 0, 0, 0, 100, 0, 500, 500, 0, 0, 11, 34427, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Gearmaster Mechazod - Script - Cast Ethereal Teleport'),
(2583400, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 10, @CGUID+0, 23837, 0, 0, 0, 0, 0, 'Gearmaster Mechazod - Script - Say Line on Bunny'),
(2583400, 9, 2, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 'Gearmaster Mechazod - Script - Say Line 1'),
(2583400, 9, 3, 0, 0, 0, 100, 0, 9000, 9000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 'Gearmaster Mechazod - Script - Set Orientation'),
(2583400, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 'Gearmaster Mechazod - Script - Say Line 2'),
(2583400, 9, 5, 0, 0, 0, 100, 0, 7000, 7000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 'Gearmaster Mechazod - Script - Say Line 3'),
(2583400, 9, 6, 0, 0, 0, 100, 0, 7000, 7000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 'Gearmaster Mechazod - Script - Say Line 4'),
(2583400, 9, 7, 0, 0, 0, 100, 0, 0, 0, 0, 0, 19, 256, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Gearmaster Mechazod - Script - Remove Unit Flag (Immune to PC)'),
(2583400, 9, 8, 0, 0, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Gearmaster Mechazod - Script - Start Attack'),
(2584901, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 46419, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fezzix Geartwist - Script 2 - Cast Cosmetic - Explosion'),
(2584901, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 43, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fezzix Geartwist - Script 2 - Dismount'),
(2584901, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 60, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fezzix Geartwist - Script 2 - Turn Fly Off'),
(2584901, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 42963, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fezzix Geartwist - Script 2 - Cast Cosmetic - Combat Knockdown Self'),
(2584901, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fezzix Geartwist - Script 2 - Say Line 4'),
(2584901, 9, 5, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fezzix Geartwist - Script 2 - Say Line 5'),
(2598300, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Dorain Frosthoof - Script - Set Phase 2'),
(2598300, 9, 1, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 11, 46399, 0, 0, 0, 0, 0, 14, 113431, 26041, 0, 0, 0, 0, 0, 'Dorain Frosthoof - Script - Cast Energy Transfer'),
(2598300, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Dorain Frosthoof - Script - Set Phase 1'),
(2560200, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Greatmother Taiga - Script - Set Phase 2'),
(2560200, 9, 1, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 11, 28892, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Greatmother Taiga - Script - Cast Nature Channeling'),
(2560200, 9, 2, 0, 0, 0, 100, 0, 7000, 7000, 0, 0, 28, 28892, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Greatmother Taiga - Script - Remove Aura Nature Channeling'),
(2560200, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 107, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Greatmother Taiga - Script - Summon Group 0'),
(2560200, 9, 4, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 19, 26097, 0, 0, 0, 0, 0, 0, 'Greatmother Taiga - Script - Say Line 1 on Closest Fizzcrank Gnome Ghost'),
(2560200, 9, 5, 0, 0, 0, 100, 0, 9000, 9000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 19, 26097, 0, 0, 0, 0, 0, 0, 'Greatmother Taiga - Script - Say Line 2 on Closest Fizzcrank Gnome Ghost'),
(2560200, 9, 6, 0, 0, 0, 100, 0, 9000, 9000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 19, 26097, 0, 0, 0, 0, 0, 0, 'Greatmother Taiga - Script - Say Line 3 on Closest Fizzcrank Gnome Ghost'),
(2560200, 9, 7, 0, 0, 0, 100, 0, 9000, 9000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 19, 26097, 0, 0, 0, 0, 0, 0, 'Greatmother Taiga - Script - Say Line 4 on Closest Fizzcrank Gnome Ghost'),
(2560200, 9, 8, 0, 0, 0, 100, 0, 9000, 9000, 0, 0, 5, 3, 0, 0, 0, 0, 0, 9, 26097, 0, 200, 0, 0, 0, 0, 'Greatmother Taiga - Script - Play emote OneShotWave on all Fizzcrank Gnome Ghost'),
(2560200, 9, 9, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Greatmother Taiga - Script - Say Line 2'),
(2560200, 9, 10, 0, 0, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Greatmother Taiga - Script - Set Phase 1');


DELETE FROM `creature_summon_groups` WHERE `summonerId`=25602;
INSERT INTO `creature_summon_groups` (`summonerId`, `summonerType`, `groupId`, `entry`, `position_x`, `position_y`, `position_z`, `orientation`, `summonType`, `summonTime`) VALUES 
(25602, 0, 0, 26097, 3483.047, 4114.145, 18.48475, 3.193953, 1, 40000),
(25602, 0, 0, 26097, 3486.638, 4116.401, 18.48475, 3.403392, 1, 40000),
(25602, 0, 0, 26097, 3483.65, 4112.257, 18.48475, 2.9147, 1, 40000),
(25602, 0, 0, 26097, 3481.733, 4118.205, 18.48475, 3.926991, 1, 40000),
(25602, 0, 0, 26097, 3485.337, 4117.493, 18.48475, 3.543018, 1, 40000),
(25602, 0, 0, 26097, 3482.166, 4116.395, 18.48475, 3.612832, 1, 40000),
(25602, 0, 0, 26097, 3485.657, 4113.342, 18.48475, 3.124139, 1, 40000),
(25602, 0, 0, 26097, 3483.949, 4118.282, 18.48475, 3.682645, 1, 40000),
(25602, 0, 0, 26097, 3484.028, 4115.051, 18.48475, 3.316126, 1, 40000),
(25602, 0, 0, 26097, 3484.057, 4116.235, 18.48474, 3.560472, 1, 40000);


DELETE FROM `waypoints` WHERE `entry` =25849;

INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(25849, 1,3476.835, 4099.595, 20.46597, 'Fezzix Geartwist'),
(25849, 2,3469.259, 4098.425, 23.37573, 'Fezzix Geartwist'),
(25849, 3,3464.057, 4092.921, 28.09206, 'Fezzix Geartwist'),
(25849, 4,3468.28, 4083.907, 34.53652, 'Fezzix Geartwist'),
(25849, 5,3471.045, 4079.119, 38.06437, 'Fezzix Geartwist'),
(25849, 6,3476.159, 4076.131, 41.48104, 'Fezzix Geartwist'),
(25849, 7,3483.686, 4077.679, 42.78663, 'Fezzix Geartwist'),
(25849, 8,3487.812, 4082.535, 42.78663, 'Fezzix Geartwist'),
(25849, 9,3488.05, 4090.021, 42.78663, 'Fezzix Geartwist'),
(25849, 10,3486.571, 4098.099, 42.78663, 'Fezzix Geartwist'),
(25849, 11,3479.899, 4100.219, 42.78663, 'Fezzix Geartwist'),
(25849, 12,3477.16, 4103.97, 17.9091, 'Fezzix Geartwist');

DELETE FROM `creature` WHERE `guid`=@CGUID+0;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`,  `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID+0, 23837, 571, 1, 1, 4000.194, 4853.576, 26.05447, 5.585053, 120, 0, 0); -- 23837 (Area: 3537)

DELETE FROM `event_scripts` WHERE `id`=17209;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(17209, 3, 10, 25834, 3000000, 0, 4004.175, 4850.362, 26.05081,2.391101);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=45502;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(13, 2, 45502, 0, 0, 31, 0, 3, 25402, 0, 1, 0, 0, '', 'Seaforium Depth Charge Explosion does not knock back Nerub ar Sinkhole (South)'),
(13, 2, 45502, 0, 0, 31, 0, 3, 25403, 0, 1, 0, 0, '', 'Seaforium Depth Charge Explosion does not knock back Nerub ar Sinkhole (East)'),
(13, 2, 45502, 0, 0, 31, 0, 3, 25404, 0, 1, 0, 0, '', 'Seaforium Depth Charge Explosion does not knock back Nerub ar Sinkhole (West)'),
(13, 2, 45502, 0, 0, 31, 0, 3, 25405, 0, 1, 0, 0, '', 'Seaforium Depth Charge Explosion does not knock back Nerub ar Sinkhole (North)');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry`=25401;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 3, 25401, 0, 0, 29, 1, 25402, 20, 0, 0, 0, 0, '', 'Seaforium Depth Charge - Only run SAI if Nerub ar Sinkhole (South) within 20 yards'),
(22, 4, 25401, 0, 0, 29, 1, 25403, 20, 0, 0, 0, 0, '', 'Seaforium Depth Charge - Only run SAI if Nerub ar Sinkhole (East) within 20 yards'),
(22, 5, 25401, 0, 0, 29, 1, 25404, 20, 0, 0, 0, 0, '', 'Seaforium Depth Charge - Only run SAI if Nerub ar Sinkhole (West) within 20 yards'),
(22, 6, 25401, 0, 0, 29, 1, 25405, 20, 0, 0, 0, 0, '', 'Seaforium Depth Charge - Only run SAI if Nerub ar Sinkhole (North) within 20 yards');


SET @ENTRY := 25040; -- Greater Water Elemental
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @ENTRY AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 1, 0, 0, 0, 100, 0, 3000, 3000, 5000, 5000, 11, 46983, 64, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Greater Water Elemental - In Combat CMC - Cast Waterbolt');



DELETE FROM `smart_scripts` WHERE `entryorguid` IN(19546,19579,19545,19580,19543,19544,-70107,-70108,-70109,-70110,-70111) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN(1954600,1954500,1954400,1954300) AND `source_type`=9;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(19546, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 64, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Abjurist Belmara - On Just Summoned - Store Targetlist'),
(19546, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 2, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Abjurist Belmara - On Just Summoned - Set Faction 7'),
(19546, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 18, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Abjurist Belmara - On Just Summoned - Set Flags Immune to NPC/PC'),
(19546, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 53, 0, 19546, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Abjurist Belmara - On Just Summoned - Start WP'),
(19546, 0, 4, 0, 40, 0, 100, 0, 5, 19546, 0, 0, 80, 1954600, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Abjurist Belmara - On Reached WP5 - Run Script'),
(19546, 0, 5, 0, 4, 0, 100, 0, 0, 0, 0, 0, 11, 12544, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Abjurist Belmara - On Aggro - Cast \'Frost Armor\''),
(19546, 0, 6, 0, 0, 0, 100, 0, 2000, 5000, 12000, 22000, 11, 17740, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Abjurist Belmara - In Combat - Cast \'Mana Shield\''),
(19546, 0, 7, 0, 0, 0, 100, 0, 0, 6000, 2500, 8000, 11, 34447, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Abjurist Belmara - In Combat - Cast \'Arcane Missiles\''),
(19546, 0, 8, 0, 25, 0, 100, 0, 0, 0, 0, 0, 28, 12544, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Abjurist Belmara - On Reset - Remove Aura \'Frost Armor\''),
(19545, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 64, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Cohlien Frostweaver - On Just Summoned - Store Targetlist'),
(19545, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 2, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cohlien Frostweaver - On Just Summoned - Set Faction 7'),
(19545, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 18, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cohlien Frostweaver - On Just Summoned - Set Flags Immune to NPC/PC'),
(19545, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 53, 0, 19545, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cohlien Frostweaver - On Just Summoned - Start WP'),
(19545, 0, 4, 0, 40, 0, 100, 0, 6, 19545, 0, 0, 80, 1954500, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cohlien Frostweaver - On Reached WP6 - Run Script'),
(19545, 0, 5, 0, 0, 0, 100, 0, 0, 1000, 25000, 30000, 11, 33245, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cohlien Frostweaver - In Combat - Cast \'Ice Barrier\''),
(19545, 0, 6, 0, 0, 0, 100, 0, 0, 10000, 2500, 9500, 11, 11831, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cohlien Frostweaver - In Combat - Cast \'Frost Nova\''),
(19545, 0, 7, 0, 0, 0, 100, 0, 0, 2500, 2500, 11000, 11, 9672, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cohlien Frostweaver - In Combat - Cast \'Frostbolt\''),
(19544, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 64, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Conjurer Luminrath - On Just Summoned - Store Targetlist'),
(19544, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 2, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Conjurer Luminrath - On Just Summoned - Set Faction 7'),
(19544, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 18, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Conjurer Luminrath - On Just Summoned - Set Flags Immune to NPC/PC'),
(19544, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 53, 0, 19544, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Conjurer Luminrath - On Just Summoned - Start WP'),
(19544, 0, 4, 0, 40, 0, 100, 0, 3, 19544, 0, 0, 80, 1954400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Conjurer Luminrath - On Reached WP3 - Run Script'),
(19544, 0, 5, 0, 0, 0, 100, 0, 0, 2500, 1000, 7500, 11, 9532, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Conjurer Luminrath - In Combat - Cast \'Lightning Bolt\''),
(19544, 0, 6, 0, 0, 0, 100, 0, 0, 5000, 15000, 30000, 11, 36110, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Conjurer Luminrath - In Combat - Cast \'Summon Dancing Sword\''),
(19544, 0, 7, 0, 0, 0, 100, 0, 0, 10000, 5000, 15000, 11, 36109, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Conjurer Luminrath - In Combat - Cast \'Blink\''),
(19543, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 64, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Battle-Mage Dathric - On Just Summoned - Store Targetlist'),
(19543, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 71, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Battle-Mage Dathric - On Just Summoned - Remove Weapon'),
(19543, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 2, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Battle-Mage Dathric - On Just Summoned - Set Faction 7'),
(19543, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 18, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Battle-Mage Dathric - On Just Summoned - Set Flags Immune to NPC/PC'),
(19543, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 53, 0, 19543, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Battle-Mage Dathric - On Just Summoned - Start WP'),
(19543, 0, 5, 0, 40, 0, 100, 0, 5, 19543, 0, 0, 80, 1954300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Battle-Mage Dathric - On Reached WP5 - Run Script'),
(19543, 0, 6, 0, 0, 0, 100, 0, 0, 3000, 3000, 8000, 11, 36104, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Battle-Mage Dathric - In Combat - Cast \'Torrent of Flames\''),
(19543, 0, 7, 0, 0, 0, 100, 0, 0, 2500, 8500, 12000, 11, 17273, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Battle-Mage Dathric - In Combat - Cast \'Pyroblast\''),
(-70109, 0, 0, 0, 1, 0, 100, 0, 0, 0, 5000, 5000, 11, 34212, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Invisible Location Trigger - OOC - Cast Blue beam'),
(-70107, 0, 0, 0, 1, 0, 100, 0, 0, 0, 5000, 5000, 11, 34211, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Invisible Location Trigger - OOC - Cast Blue beam'),
(-70110, 0, 0, 0, 1, 0, 100, 0, 0, 0, 5000, 5000, 11, 34209, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Invisible Location Trigger - OOC - Cast Blue beam'),
(-70108, 0, 0, 0, 1, 0, 100, 0, 0, 0, 5000, 5000, 11, 34212, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Invisible Location Trigger - OOC - Cast Blue beam'),
(-70111, 0, 0, 0, 1, 0, 100, 0, 0, 0, 5000, 5000, 11, 34211, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Invisible Location Trigger - OOC - Cast Blue beam'),
(1954600, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 4.014257, 'Abjurist Belmara - Script - Set Orientation'),
(1954600, 9, 1, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 5, 69, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Abjurist Belmara - Script - Play Emote Use_standing'),
(1954600, 9, 2, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Abjurist Belmara - Script - Play Emote none'),
(1954600, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 71, 0, 0, 12742, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Abjurist Belmara - Script - Equip Item'),
(1954600, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Abjurist Belmara - Script - Say Line'),
(1954600, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 33, 19547, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 'Abjurist Belmara - Script - Give Kill Credit'),
(1954500, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1.902409, 'Cohlien Frostweaver - Script - Set Orientation'),
(1954500, 9, 1, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 5, 69, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cohlien Frostweaver - Script - Play Emote Use_standing'),
(1954500, 9, 2, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cohlien Frostweaver - Script - Say Line'),
(1954500, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cohlien Frostweaver - Script - Play Emote none'),
(1954500, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 36, 19579, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cohlien Frostweaver - Script - Change Entry to Cohlien Frostweaver with Hat'),
(1954500, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 2, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cohlien Frostweaver - Script - Set Faction'),
(1954500, 9, 6, 0, 0, 0, 100, 0, 0, 0, 0, 0, 33, 19550, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 'Cohlien Frostweaver - Script - Give Kill Credit'),
(1954400, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 3.961897, 'Conjurer Luminrath - Script - Set Orientation'),
(1954400, 9, 1, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Conjurer Luminrath - Script - Say Line'),
(1954400, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5, 69, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Conjurer Luminrath - Script - Play Emote Use_standing'),
(1954400, 9, 3, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Conjurer Luminrath - Script - Play Emote none'),
(1954400, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Conjurer Luminrath - Script - Say Line 2'),
(1954400, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 36, 19580, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Conjurer Luminrath - Script - Change Entry to Luminrath with Cape'),
(1954400, 9, 6, 0, 0, 0, 100, 0, 0, 0, 0, 0, 2, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Conjurer Luminrath - Script - Set Faction'),
(1954400, 9, 7, 0, 0, 0, 100, 0, 0, 0, 0, 0, 33, 19548, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 'Conjurer Luminrath - Script - Give Kill Credit'),
(1954300, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 4.537856, 'Battle-Mage Dathric - Script - Set Orientation'),
(1954300, 9, 1, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 5, 69, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Battle-Mage Dathric - Script - Play Emote Use_standing'),
(1954300, 9, 2, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Battle-Mage Dathric - Script - Play Emote none'),
(1954300, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 71, 0, 0, 18983, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Battle-Mage Dathric - Script - Equip Item'),
(1954300, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Battle-Mage Dathric - Script - Say Line'),
(1954300, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 33, 19549, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 'Battle-Mage Dathric - Script - Give Kill Credit');

DELETE FROM `creature_text` WHERE `entry` IN(19545,19544,19543,19546);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(19545, 0, 0, 'Phew! There''s my lucky hat. I''ve been looking for it everywhere.', 12, 0, 100, 0, 0, 0, 'Cohlien Frostweaver'),
(19544, 0, 0, 'I can''t possibly go out without my cloak. I hope it''s in here...', 12, 0, 100, 0, 0, 0, 'Conjurer Luminrath'),
(19544, 1, 0, 'There it is! I could''ve sworn it wasn''t here last time I checked...', 12, 0, 100, 0, 0, 0, 'Conjurer Luminrath'),
(19543, 0, 0, 'I don''t know what I was thinking, going out without my sword. I would''ve put it on if I''d seen it here...', 12, 0, 100, 0, 0, 0, 'Battle-Mage Dathric'),
(19546, 0, 0, 'I can''t sleep without a good bedtime story. Now I''m certain to rest well.', 12, 0, 100, 0, 0, 0, 'Abjurist Belmara');

DELETE FROM `waypoints` WHERE `entry` IN(19546,19545,19544,19543);

INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(19546, 1,2237.667, 2393.5, 112.7383, 'Abjurist Belmara'),
(19546, 2,2238.667, 2393.75, 112.9883, 'Abjurist Belmara'),
(19546, 3,2239.417, 2393.25, 112.9883, 'Abjurist Belmara'),
(19546, 4,2239.917, 2392.5, 112.9883, 'Abjurist Belmara'),
(19546, 5,2240.365, 2390.882, 112.6025, 'Abjurist Belmara'),
(19545, 1,2214.206, 2400.794, 108.8995, 'Cohlien Frostweaver'),
(19545, 2,2213.218, 2400.951, 108.8995, 'Cohlien Frostweaver'),
(19545, 3,2204.71, 2408.806, 108.6094, 'Cohlien Frostweaver'),
(19545, 4,2204.71, 2408.806, 108.6094, 'Cohlien Frostweaver'),
(19545, 5,2204.652, 2408.992, 108.6537, 'Cohlien Frostweaver'),
(19545, 6,2202.912, 2411.269, 108.6577, 'Cohlien Frostweaver'),
(19544, 1,2198.386, 2334.958, 89.4724, 'Conjurer Luminrath'),
(19544, 2,2197.577, 2334.37, 89.4724, 'Conjurer Luminrath'),
(19544, 3,2193.663, 2339.085, 90.02818, 'Conjurer Luminrath'),
(19543, 1,2235.705, 2320.857, 92.30136, 'Battle-Mage Dathric'),
(19543, 2,2235.67, 2319.858, 92.30136, 'Battle-Mage Dathric'),
(19543, 3,2233.228, 2317.592, 91.34792, 'Battle-Mage Dathric'),
(19543, 4,2230.454, 2316.294, 90.59956, 'Battle-Mage Dathric'),
(19543, 5,2228.403, 2313.777, 89.63835, 'Battle-Mage Dathric');

DELETE FROM `event_scripts` WHERE `id` IN(12607,12610,12609,12608);
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(12607, 0, 10, 19546, 25000, 0, 2236.969, 2393.117, 112.374, 5.811946),
(12610, 0, 10, 19545, 25000, 0, 2212.535, 2401.582, 108.8762, 2.396056),
(12609, 0, 10, 19544, 25000, 0, 2197.269, 2334.741, 89.5162, 2.263612),
(12608, 0, 10, 19543, 25000, 0, 2235.094, 2319.323, 92.07642, 3.889618);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN(34209,34211,34212);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(13, 1, 34209, 0, 0, 31, 0, 3, 19656, 0, 0, 0, 0, '', 'Blue Beam Targets Invisible Location trigger'),
(13, 1, 34211, 0, 0, 31, 0, 3, 19656, 0, 0, 0, 0, '', 'Blue Beam Targets Invisible Location trigger'),
(13, 1, 34212, 0, 0, 31, 0, 3, 19656, 0, 0, 0, 0, '', 'Blue Beam Targets Invisible Location trigger');

UPDATE `smart_scripts` SET `link`=0 WHERE  `entryorguid`=28503 AND `source_type`=0 AND `id`=7 AND `link`=8;
UPDATE `smart_scripts` SET `event_flags`=0 WHERE  `entryorguid`=9098 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `smart_scripts` SET `event_flags`=0 WHERE  `entryorguid`=14389 AND `source_type`=0 AND `id`=0 AND `link`=0;

DELETE FROM `spell_area` WHERE `spell`=34102;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES 
(34102, 3733, 0, 0, 0, 0, 2, 1, 64, 11); -- Curse of the Violet Tower

DELETE FROM `disables` WHERE `sourceType`=0 AND `entry` IN(34209,34211,34212);
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES 
(0, 34209, 64, '', '', 'Ignore LOS on Blue Beam'),
(0, 34211, 64, '', '', 'Ignore LOS on Blue Beam'),
(0, 34212, 64, '', '', 'Ignore LOS on Blue Beam');


SET @ENTRY := 11136; -- Freed Soul
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @ENTRY AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 11, 0, 100, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Freed Soul - On Respawn - Say Line 0');

UPDATE `gameobject_template` SET `flags`=0 WHERE  `entry`=184383;
DELETE FROM `creature` WHERE  `guid`=72505;

DELETE FROM `gossip_menu` WHERE `entry`=8062;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(8062, 9958); -- 184073

DELETE FROM `gossip_menu_option` WHERE `menu_id`=8062;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES 
(8062, 0, 0, 'Attempt to contact Wind Trader Marid.', 1, 1, 0, 0, 0, 0, ''); -- 184073

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=8062;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 8062, 0, 0, 0,28, 0, 10270, 0, 0, 0, 0, 0, '', 'Ethereal Teleport Pad - Show Gossip option only if player has A Not-So-Modest Proposal complete in quest log'),
(15, 8062, 0, 0, 0,9, 0, 10271, 0, 0, 1, 0, 0, '', 'Ethereal Teleport Pad - Show Gossip option only if player does not have Getting Down to Business taken'),
(15, 8062, 0, 0, 0,8, 0, 10271, 0, 0, 1, 0, 0, '', 'Ethereal Teleport Pad - Show Gossip option only if player does not have Getting Down to Business rewarded'),
(15, 8062, 0, 0, 0,28, 0, 10271, 0, 0, 1, 0, 0, '', 'Ethereal Teleport Pad - Show Gossip option only if player does not have Getting Down to Business complete'),
(15, 8062, 0, 0, 0,29, 1, 20518, 200, 0, 1, 0, 0, '', 'Ethereal Teleport Pad - Show Gossip option only if Image of Wind Trader Marid is not already spawned');

UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI',`ScriptName`='' WHERE  `entry`IN(184073,184383);
DELETE FROM `smart_scripts` WHERE `entryorguid`IN(184073,184383) AND `source_type`=1;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(184073, 1, 0, 1, 62, 0, 100, 0, 8062, 0, 0, 0, 12, 20518, 1, 60000, 0, 0, 0, 8, 0, 0, 0, 4006.99, 1516.938, -114.63, 2.303835, 'Ethereal Teleport Pad - On Gossip Option 0 Selected - Summon Image of Wind Trader Marid'),
(184073, 1, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Ethereal Teleport Pad - On Gossip Option 0 Selected - Close Gossip'),
(184383, 1, 0, 0, 70, 0, 100, 0, 2, 0, 0, 0, 12, 20482, 1, 180000, 0, 0, 0, 8, 0, 0, 0, 4017.968, 2315.796, 114.9459, 0.4363323, 'Ethereum Transponder Zeta - On State Changed - Summon Image of Commander Ameer <The Protectorate>');

UPDATE `creature_template` SET `ainame`='SmartAI', `scriptname`='' WHERE `entry` IN(20518,20482);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN(20518,20482) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(20518, 0, 0, 0, 1, 0, 100, 1, 50, 50, 0, 0, 11, 12980, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Image of Wind Trader Marid - On Just Summoned - Cast Simple Teleport'),
(20482, 0, 0, 1, 4, 0, 100, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Image of Commander Ameer - On Agro - Say Line'),
(20482, 0, 1, 2,61, 0, 100, 1, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 14, 25179, 184383, 0, 0, 0, 0, 0, 'Image of Commander Ameer - On Agro - Set Data 1 1 to Ethereum Transponder Zeta'),
(20482, 0, 2, 0,61, 0, 100, 1, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Image of Commander Ameer - On Agro - Despawn'),
(20482, 0, 3, 4,11, 0, 100, 1, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Image of Commander Ameer - On Spawn - Disable Auto Attack'),
(20482, 0, 4, 0,61, 0, 100, 1, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Image of Commander Ameer - On Spawn - Disable combat movement');

DELETE FROM `creature_text` WHERE `entry`=20482;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(20482, 0, 0, 'Hostiles detected. Ending transmission.', 12, 0, 100, 15, 0, 0, 'Image of Commander Ameer');


SET @OGUID :=    4167332;
SET @CGUID :=    15486585;

UPDATE `creature_template` SET `InhabitType`=4 WHERE  `entry`=21210;
UPDATE `creature_template_addon` SET `auras`='' WHERE  `entry`=21210;


UPDATE `creature_template` SET `ainame`='SmartAI', `scriptname`='' WHERE `entry` IN(21210,21207,21735);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN(21210,-84857,-84854,-84855,-84856,-84858,21207,21735) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(-84857, 0, 0, 0, 1, 0, 100, 0, 0, 0, 5000, 5000, 11, 36393, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Invis Deathforge Caster (Guid 84857) - On Spawn - Cast Deathforge Summon Visual'),
(-84857, 0, 1, 0, 38, 0, 100, 0, 1, 1, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Invis Deathforge Caster  - On Data Set 1 1 - Despawn'),
(-84854, 0, 0, 0, 1, 0, 100, 0, 0, 0, 5000, 5000, 11, 36384, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Invis Deathforge Caster (Guid 84854) - On Spawn - Cast Skartax Purple Beam'),
(-84854, 0, 1, 0, 38, 0, 100, 0, 1, 1, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Invis Deathforge Caster  - On Data Set 1 1 - Despawn'),
(-84855, 0, 0, 0, 1, 0, 100, 0, 0, 0, 5000, 5000, 11, 36384, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Invis Deathforge Caster (Guid 84854) - On Spawn - Cast Skartax Purple Beam'),
(-84855, 0, 1, 0, 38, 0, 100, 0, 1, 1, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Invis Deathforge Caster  - On Data Set 1 1 - Despawn'),
(-84856, 0, 0, 0, 1, 0, 100, 0, 0, 0, 5000, 5000, 11, 36384, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Invis Deathforge Caster (Guid 84854) - On Spawn - Cast Skartax Purple Beam'),
(-84856, 0, 1, 0, 38, 0, 100, 0, 1, 1, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Invis Deathforge Caster  - On Data Set 1 1 - Despawn'),
(-84858, 0, 0, 0, 1, 0, 100, 0, 0, 0, 5000, 5000, 11, 36384, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Invis Deathforge Caster (Guid 84854) - On Spawn - Cast Skartax Purple Beam'),
(-84858, 0, 1, 0, 38, 0, 100, 0, 1, 1, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Invis Deathforge Caster  - On Data Set 1 1 - Despawn'),
(21207, 0, 0, 1, 1, 0, 100, 0, 0, 0, 5000, 5000, 11, 36382, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Summoner Skartax - On Spawn - Cast Skartax Self Aura I'),
(21207, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 36431, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Summoner Skartax - On Spawn - Cast Test Channel'),
(21207, 0, 2, 0, 0, 0, 100, 0, 0, 0, 3000, 5000, 11, 12471, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Summoner Skartax - IC - Cast Shadowbolt'),
(21207, 0, 3, 0, 0, 0, 100, 0, 0, 0, 2500, 4500, 11, 38401, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Summoner Skartax - IC - Cast Incinerate'),
(21735, 0, 0, 1, 11, 0, 100, 0, 0, 0, 0, 0, 11, 37281, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Infernal Oversoul - On Spawn - Cast Infernal Oversouls Wrath'),
(21735, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 9, 21210, 0, 200, 0, 0, 0, 0, 'Infernal Oversoul - On Spawn - Set Data on Invis Deathforge Caster'),
(21735, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 100, 0, 0, 0, 0, 0, 0, 'Infernal Oversoul - On Spawn - Start Attack');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`IN(36384,36431,37281);

INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(13, 1, 36384, 0, 0, 31, 0, 3, 21210, 0, 0, 0, 0, '', 'Skartax Purple Beam targets Invis Deathforge Caster'),
(13, 1, 36384, 0, 0, 1, 0, 36393, 0, 0, 1, 0, 0, '', 'Skartax Purple Beam targets Invis Deathforge Caster only if does not have aura Deathforge Summon Visual'),
(13, 1, 36384, 0, 1, 31, 0, 3, 21211, 0, 0, 0, 0, '', 'Skartax Purple Beam targets Invis Deathforge Target'),
(13, 1, 36431, 0, 0, 31, 0, 3, 21210, 0, 0, 0, 0, '', 'Test Channel targets Invis Deathforge Caster'),
(13, 1, 36431, 0, 0, 1, 0, 36393, 0, 0, 0, 0, 0, '', 'Test Channel targets Invis Deathforge Caster only if has aura Deathforge Summon Visual'),
(13, 1, 37281, 0, 0, 31, 0, 3, 21207, 0, 0, 0, 0, '', 'Infernal Oversouls Wrath targets Summoner Skartax'),
(13, 1, 37281, 0, 1, 31, 0, 3, 20872, 0, 0, 0, 0, '', 'Infernal Oversouls Wrath targets Deathforge Summoner');

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID AND @CGUID+2 AND `id`=20872;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`,  `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID+0, 20872, 530, 1, 1,  -3335.892, 2133.704, -2.183001, 2.513274, 120, 0, 0), -- 20872 (Area: 3520)
(@CGUID+1, 20872, 530, 1, 1,  -3335.601, 2151.807, -1.211325, 3.001966, 120, 0, 0), -- 20872 (Area: 3520)
(@CGUID+2, 20872, 530, 1, 1,  -3341.744, 2168.385, 2.227986, 3.996804, 120, 0, 0); -- 20872 (Area: 3520)

DELETE FROM `gameobject` WHERE `id`=184820;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@OGUID+0, 184820, 530, 1, 1, 1506.37, 6367.81, 0.62336, 4.5204, 0, 0, 0, 1, 120, 255, 1), 
(@OGUID+1, 184820, 530, 1, 1, 1544.21, 6321.05, 2.36069, 0.593412, 0, 0, 0, 1, 120, 255, 1), 
(@OGUID+2, 184820, 530, 1, 1, 1589.61, 6294.26, 2.97764, 1.27409, 0, 0, 0, 1, 120, 255, 1), 
(@OGUID+3, 184820, 530, 1, 1, 1718.04, 6303.09, -0.245553, 4.24115, 0, 0, 0, 1, 120, 255, 1), 
(@OGUID+4, 184820, 530, 1, 1, 2165.13, 6485.68, 6.32237, 1.39626, 0, 0, 0, 1, 120, 255, 1), 
(@OGUID+5, 184820, 530, 1, 1, 2318.35, 6650.72, 16.8051, 5.74213, 0, 0, 0, 1, 120, 255, 1), 
(@OGUID+6, 184820, 530, 1, 1, 2330.77, 6719.11, 16.5635, 5.63741, 0, 0, 0, 1, 120, 255, 1), 
(@OGUID+7, 184820, 530, 1, 1, 2381.57, 6742.27, 16.7087, 4.90438, 0, 0, 0, 1, 120, 255, 1), 
(@OGUID+8, 184820, 530, 1, 1, 2494.49, 6713.98, 4.47157, 4.29351, 0, 0, 0, 1, 120, 255, 1), 
(@OGUID+9, 184820, 530, 1, 1, 2700.36, 6601.66, 22.8472, 3.40339, 0, 0, 0, 1, 120, 255, 1), 
(@OGUID+10, 184820, 530, 1, 1, 2706.19, 6673.73, 21.6303, 2.47837, 0, 0, 0, 1, 120, 255, 1), 
(@OGUID+11, 184820, 530, 1, 1, 2700.19, 6514.47, 2.13838, 2.11185, 0, 0, 0, 1, 120, 255, 1), 
(@OGUID+12, 184820, 530, 1, 1, 2597.69, 6505.88, 1.66538, 1.09956, 0, 0, 0, 1, 120, 255, 1), 
(@OGUID+13, 184820, 530, 1, 1, 2635.83, 6463.89, 1.86259, 1.85005, 0, 0, 0, 1, 120, 255, 1), 
(@OGUID+14, 184820, 530, 1, 1, 2462.47, 6544.21, 1.93072, 0.541052, 0, 0, 0, 1, 120, 255, 1), 
(@OGUID+15, 184820, 530, 1, 1, 2382.94, 6498.44, 3.00535, 1.98968, 0, 0, 0, 1, 120, 255, 1), 
(@OGUID+16, 184820, 530, 1, 1, 2332.92, 6567.22, 3.77855, 0.453786, 0, 0, 0, 1, 120, 255, 1);

UPDATE `creature_template` SET `ainame`='SmartAI', `scriptname`='' WHERE `entry` IN(21352,21498,21456,21351);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN(21352,21498,21456,21351) AND `source_type`=0;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(21352, 0, 0, 1,38, 0, 100, 0, 1, 1, 180000, 180000, 12, 21456, 2, 300000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Ogre Building Bunny Summoner - On Data Set 1 1 - Summon Ogre Building Bunny Small'),
(21352, 0, 1, 2,61, 0, 100, 0, 0, 0, 0, 0, 11, 32582, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Summon Ogre Building Bunny Small - On Just Summoned - Cast Ogre Building Bunny Curse Visual'),
(21352, 0, 2, 0,61, 0, 100, 0, 0, 0, 0, 0, 12, 21498, 2, 300000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Ogre Building Cursed Spirit Bunny - On Just Summoned - Summon Bladespire Evil Spirit'),
(21498, 0, 0, 0,54, 0, 100, 0, 0, 0, 0, 0, 12, 21446, 2, 300000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Ogre Building Cursed Spirit Bunny - On Just Summoned - Summon Bladespire Evil Spirit'),
(21498, 0, 1, 0,54, 0, 100, 0, 0, 0, 0, 0, 12, 21452, 2, 300000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Ogre Building Cursed Spirit Bunny - On Just Summoned - Summon Bloodmaul Evil Spirit'),
(21351, 0, 0, 0,54, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 19, 21352, 0, 0, 0, 0, 0, 0, 'Ogre Building Bunny Large - On Just Summoned - Set Data 1 1 Ogre Building Bunny Summoner');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry`=21498;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, 21498, 0, 0, 23, 1, 3773, 0, 0, 0, 0, 0, '', 'Only Run AI in Bladespire Hold'),
(22, 2, 21498, 0, 0, 23, 1, 3776, 0, 0, 0, 0, 0, '', 'Only Run AI in  Bloodmaul Outpost');

DELETE FROM `spell_scripts` WHERE `id`=32580;
INSERT INTO `spell_scripts` (`id`, `effIndex`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(32580, 0, 0, 10, 21351, 30000, 0, 0, 0, 0, 0);


SET @OGUID :=    15485348;

-- respawn  Fel Crystal Prism (Currently only 1 is spawned)

DELETE FROM `gameobject` WHERE `id`=185927;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@OGUID+0, 185927, 530, 1, 1, 2909.894, 6797.157, 365.7202, 2.391098, 0, 0, 0, 1, 120, 255, 1), 
(@OGUID+1, 185927, 530, 1, 1, 2988.61, 7129.965, 368.9746, 1.029743, 0, 0, 0, 1, 120, 255, 1), 
(@OGUID+2, 185927, 530, 1, 1, 3080.931, 6914.941, 369.3258, 4.32842, 0, 0, 0, 1, 120, 255, 1), 
(@OGUID+3, 185927, 530, 1, 1, 2810.343, 7006.054, 376.0882, 1.151916, 0, 0, 0, 1, 120, 255, 1), 
(@OGUID+4, 185927, 530, 1, 1, 1385.925, 7392.285, 371.1215, 0.5585039, 0, 0, 0, 1, 120, 255, 1), 
(@OGUID+5, 185927, 530, 1, 1, 1280.611, 7164.499, 377.1786, 5.585054, 0, 0, 0, 1, 120, 255, 1), 
(@OGUID+6, 185927, 530, 1, 1, 1616.641, 7207.047, 375.4805, 5.131269, 0, 0, 0, 1, 120, 255, 1), 
(@OGUID+9, 185927, 530, 1, 1, 1673.486, 7377.358, 375.558, 1.308995, 0, 0, 0, 1, 120, 255, 1);

-- SAI for Fel Crystal Prism
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE  `entry`=185927;
DELETE FROM `smart_scripts` WHERE `entryorguid`=185927 AND `source_type`=1;
DELETE FROM `smart_scripts` WHERE `entryorguid` BETWEEN 18592700 AND 18592703 AND `source_type`=9;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(185927, 1, 0, 1, 62, 0, 100, 0, 8671, 0, 0, 0, 64, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Fel Crystal Prism - On Gossip Option 0 Selected - Store Targetlist'),
(185927, 1, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 85, 40958, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Fel Crystal Prism - On Gossip Option 0 Selected - Invoker Cast Blades Edge Terrace Demon Boss Summon Trigger'),
(185927, 1, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 85, 40962, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Fel Crystal Prism - On Gossip Option 0 Selected - Invoker Cast Blades Edge Terrace Demon Boss Summon Branch'),
(185927, 1, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 87, 18592700, 18592701, 18592702, 18592703, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fel Crystal Prism - On Gossip Option 0 Selected - Run Random Timed Action list'),
(18592700, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 85, 40957, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 'Fel Crystal Prism - Script 1 - Invoker Cast Blades Edge Terrace Demon Boss Summon 1'),
(18592700, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 70, 300, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fel Crystal Prism - Script 1 - Despawn GO'),
(18592700, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 'Fel Crystal Prism - Script 1 - Close Gossip'),
(18592701, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 85, 40959, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 'Fel Crystal Prism - Script 2 - Invoker Cast Blades Edge Terrace Demon Boss Summon 2'),
(18592701, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 70, 300, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fel Crystal Prism - Script 2 - Despawn GO'),
(18592701, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 'Fel Crystal Prism - Script 2 - Close Gossip'),
(18592702, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 85, 40960, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 'Fel Crystal Prism - Script 3 - Invoker Cast Blades Edge Terrace Demon Boss Summon 3'),
(18592702, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 70, 300, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fel Crystal Prism - Script 3 - Despawn GO'),
(18592702, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 'Fel Crystal Prism - Script 3 - Close Gossip'),
(18592703, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 85, 40961, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 'Fel Crystal Prism - Script 4 - Invoker Cast Blades Edge Terrace Demon Boss Summon 4'),
(18592703, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 70, 300, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fel Crystal Prism - Script 4 - Despawn GO'),
(18592703, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 'Fel Crystal Prism - Script 4 - Close Gossip');

-- SAI for Demons
DELETE FROM `smart_scripts` WHERE `entryorguid` IN(22281,23353,23354,23355) AND `source_type`=0;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN(22281,23353,23354,23355);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(22281,0,0,0,11,0,100,0,0,0,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,'Galvanoth - On Spawn - Set Faction'),
(22281,0,1,0,9,0,100,0,0,30,8000,11000,11,39139,0,0,0,0,0,7,0,0,0,0,0,0,0,'Galvanoth - On Range - Cast Fel Flamestike'),
(22281,0,2,0,9,0,100,0,0,10,13000,23000,11,38750,0,0,0,0,0,1,0,0,0,0,0,0,0,'Galvanoth - On Range - Cast War Stomp'),
(22281,0,3,0,9,0,100,0,0,5,11000,18000,11,15708,0,0,0,0,0,7,0,0,0,0,0,0,0,'Galvanoth - On Range - Cast Mortal Strike'),
(23353,0,0,0,11,0,100,0,0,0,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,'Braxxus - On Spawn - Set Faction'),
(23353,0,1,0,9,0,100,0,0,5,4000,8000,11,41437,0,0,0,0,0,7,0,0,0,0,0,0,0,'Braxxus - On Range - Cast Double Breath'),
(23353,0,2,0,9,0,100,0,0,10,15000,25000,11,41439,2,0,0,0,0,7,0,0,0,0,0,0,0,'Braxxus - On Range - Cast Mangle'),
(23353,0,3,0,0,0,100,0,5000,8000,7000,11000,11,41436,0,0,0,0,0,1,0,0,0,0,0,0,0,'Braxxus - IC - Cast Panic'),
(23354,0,0,0,11,0,100,0,0,0,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,'Mo arg Incinerator - On Spawn - Set Faction'),
(23354,0,1,0,9,0,100,0,0,40,5000,8000,11,44431,0,0,0,0,0,7,0,0,0,0,0,0,0,'Mo arg Incinerator - On Range - Cast Acid Geyser'),
(23354,0,2,0,9,0,100,0,10,60,10000,15000,11,36606,0,0,0,0,0,7,0,0,0,0,0,0,0,'Mo arg Incinerator - On Range - Cast Mighty Charge'),
(23354,0,3,0,9,0,100,0,0,5,15000,25000,11,25174,2,0,0,0,0,7,0,0,0,0,0,0,0,'Mo arg Incinerator - On Range - Cast Sundering Cleave'),
(23355,0,0,0,11,0,100,0,0,0,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,'Zarcsin - On Spawn - Set Faction'),
(23355,0,1,0,9,0,100,0,0,5,5000,8000,11,41444,0,0,0,0,0,7,0,0,0,0,0,0,0,'Zarcsin - On Range - Cast Fel Flames'),
(23355,0,2,0,2,0,100,1,0,50,5000,8000,11,41447,0,0,0,0,0,1,0,0,0,0,0,0,0,'Zarcsin - 50% HP - Cast Enrage');

DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid` IN (185937,185938,185936,185932);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(185937, 1, 0, 1, 62, 0, 100, 0, 8690, 0, 0, 0, 85, 41050, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Furywing\'s Egg - On Gossip Option 0 Selected - Invoker cast Four Dragons: Force Cast - Furywing'),
(185938, 1, 0, 1, 62, 0, 100, 0, 8691, 0, 0, 0, 85, 41052, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Insidion\'s Egg - On Gossip Option 0 Selected - Invoker cast Four Dragons: Force Cast - Insidion'),
(185936, 1, 0, 1, 62, 0, 100, 0, 8689, 0, 0, 0, 85, 41044, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Rivendark\'s Egg - On Gossip Option 0 Selected - Invoker cast Four Dragons: Force Cast - Rivendark'),
(185937, 1, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 85, 41049, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Furywing\'s Egg - On Gossip Option 0 Selected - Invoker Cast Four Dragons: Reagents - Furywing'),
(185938, 1, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 85, 41051, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Insidion\'s Egg - On Gossip Option 0 Selected - Invoker Cast Four Dragons: Reagents - Insidion'),
(185936, 1, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 85, 41045, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Rivendark\'s Egg - On Gossip Option 0 Selected - Invoker Cast Four Dragons: Reagents - Rivendark'),
(185937, 1, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Furywing\'s Egg - On Gossip Option 0 Selected - Close Gossip'),
(185938, 1, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Insidion\'s Egg - On Gossip Option 0 Selected - Close Gossip'),
(185936, 1, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Rivendark\'s Egg - On Gossip Option 0 Selected - Close Gossip'),
(185937, 1, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 70, 300, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Furywing\'s Egg - On Gossip Option 0 Selected - Despawn GO'),
(185938, 1, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 70, 300, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Insidion\'s Egg - On Gossip Option 0 Selected - Despawn GO'),
(185936, 1, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 70, 300, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rivendark\'s Egg - On Gossip Option 0 Selected - Despawn GO'),
(185932, 1, 0, 1, 62, 0, 100, 0, 8685, 0, 0, 0, 85, 41035, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Obsidia\'s Egg - On Gossip Option 0 Selected - Invoker Cast 41035 Four Dragons: Force Cast - Obsidia'),
(185932, 1, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 85, 41036, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Obsidia\'s Egg - On Gossip Option 0 Selected - Invoker Cast Four Dragons: Reagents - Obsidia'),
(185932, 1, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Obsidia\'s Egg - On Gossip Option 0 Selected - Close Gossip');

DELETE FROM `event_scripts` WHERE `id` IN(15004,15002);
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(15004, 0, 10, 23061, 300000, 0, 2060.6, 7418.53, 391.098, 0),
(15002, 0, 10, 23281, 300000, 0, 4176.5, 5452.21, 291.923, 0),
(15003, 0, 10, 23261, 300000, 0, 3845.31, 5220.04, 295.412, 0);

UPDATE `creature_template` SET `InhabitType`=4 WHERE  `entry`=23282;

UPDATE `creature_template` SET `ainame`='SmartAI', `scriptname`='' WHERE `entry` =23364;
DELETE FROM `smart_scripts` WHERE `entryorguid` =23364 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` =23282 AND `source_type`=0 AND `id`>4;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(23364, 0, 0, 1, 11, 0, 100, 0, 0, 0, 0, 0, 11, 15750, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Black Dragon Whelpling - On Spawn - Cast Rookery Whelp Spawn-in Spell'),
(23364, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Black Dragon Whelpling - On Spawn - Say'),
(23364, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 18, 33536, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Black Dragon Whelpling - On Spawn - Set Unit Flags'),
(23364, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 70, 300, 0, 0, 0, 0, 0, 14, 27915, 185932, 0, 0, 0, 0, 0, 'Black Dragon Whelpling - On Spawn - Despawn Obsidia\'s Egg'),
(23364, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 53, 0, 23364, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Black Dragon Whelpling - On Spawn - Start WP'),
(23364, 0, 5, 6, 40, 0, 100, 0, 2, 23364, 0, 0, 45, 1, 1, 0, 0, 0, 0, 19, 23282, 0, 0, 0, 0, 0, 0, 'Black Dragon Whelpling - On Reached WP2 - Set Data on Obsidia'),
(23364, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Black Dragon Whelpling - Reached WP2 - Despawn'),
(23282, 0, 5, 0, 11, 0, 100, 0, 0, 0, 0, 0, 18, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Obsidia - On Spawn - Set Unit Flags'),
(23282, 0, 6, 7, 38, 0, 100, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Obsidia - On Data Set - Say'),
(23282, 0, 7, 0, 61, 0, 100, 0, 0, 0, 0, 0, 53, 1, 23282, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Obsidia - On Data Set - Start WP'),
(23282, 0, 8, 9, 40, 0, 100, 0, 1, 23282, 0, 0, 94, 280, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Obsidia - On Reached WP1 - Set Dynamic Flags'),
(23282, 0, 9, 10, 61, 0, 100, 0, 0, 0, 0, 0, 19, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Obsidia - On Reached WP1 - Set Unit Flags'),
(23282, 0, 10, 11, 61, 0, 100, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Obsidia - On Reached WP1 - Set Home Position'),
(23282, 0, 11, 0, 61, 0, 100, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Obsidia - On Reached WP1 - Set Aggresive');

DELETE FROM `creature_text` WHERE `entry` IN(23364,23282);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(23364, 0, 0, 'The %s screams out for its mother.', 16, 0, 100, 0, 0, 431, 'Black Dragon Whelpling'),
(23282, 0, 0, 'I believe that I shall feast upon both $r and ogre flesh tonight.', 14, 0, 100, 0, 0, 7274, 'Obsidia');


DELETE FROM `waypoints` WHERE `entry` IN(23364,23282);

INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(23364, 1,2425.253, 6994.862, 368.0848, 'Black Dragon Whelpling'),
(23364, 2,2424.881, 6998.754, 367.8495, 'Black Dragon Whelpling'),
(23282, 1,2428.085, 6980.77, 369.7684, 'Obsidia');

DELETE FROM `event_scripts` WHERE `id` IN(15004,15002,15003,15005);
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(15004, 0, 10, 23061, 300000, 0, 2060.6, 7418.53, 391.098, 0),
(15002, 0, 10, 23281, 300000, 0, 4176.5, 5452.21, 291.923, 0),
(15003, 0, 10, 23261, 300000, 0, 3845.31, 5220.04, 295.412, 0),
(15005, 1, 10, 23364, 100000, 0, 2426.954, 7001.479, 367.3824, 0),
(15005, 0, 10, 23282, 300000, 0, 2424.975, 6933.425, 409.5501, 1.43117);


DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid` IN (185937,185938,185936);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(185937, 1, 0, 1, 62, 0, 100, 0, 8690, 0, 0, 0, 85, 41050, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Furywing\'s Egg - On Gossip Option 0 Selected - Invoker cast Four Dragons: Force Cast - Furywing'),
(185938, 1, 0, 1, 62, 0, 100, 0, 8691, 0, 0, 0, 85, 41052, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Insidion\'s Egg - On Gossip Option 0 Selected - Invoker cast Four Dragons: Force Cast - Insidion'),
(185936, 1, 0, 1, 62, 0, 100, 0, 8689, 0, 0, 0, 85, 41044, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Rivendark\'s Egg - On Gossip Option 0 Selected - Invoker cast Four Dragons: Force Cast - Rivendark'),
(185937, 1, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Furywing\'s Egg - On Gossip Option 0 Selected - Close Gossip'),
(185938, 1, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Insidion\'s Egg - On Gossip Option 0 Selected - Close Gossip'),
(185936, 1, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Rivendark\'s Egg - On Gossip Option 0 Selected - Close Gossip'),
(185937, 1, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 70, 300, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Furywing\'s Egg - On Gossip Option 0 Selected - Despawn GO'),
(185938, 1, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 70, 300, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Insidion\'s Egg - On Gossip Option 0 Selected - Despawn GO'),
(185936, 1, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 70, 300, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rivendark\'s Egg - On Gossip Option 0 Selected - Despawn GO');

DELETE FROM `event_scripts` WHERE `id` IN(15004,15002);
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(15004, 0, 10, 23061, 300000, 0, 2060.6, 7418.53, 391.098, 0),
(15002, 0, 10, 23281, 300000, 0, 4176.5, 5452.21, 291.923, 0),
(15003, 0, 10, 23261, 300000, 0, 3845.31, 5220.04, 295.412, 0);

UPDATE `creature_template` SET `InhabitType`=4 WHERE  `entry`=23282;


DELETE FROM `smart_scripts` WHERE `entryorguid`=185932 AND `source_type`=1;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(185932, 1, 0, 1, 62, 0, 100, 0, 8685, 0, 0, 0, 85, 41035, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Obsidia\'s Egg - On Gossip Option 0 Selected - Invoker Cast 41035 Four Dragons: Force Cast - Obsidia'),
(185932, 1, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Obsidia\'s Egg - On Gossip Option 0 Selected - Close Gossip');

DELETE FROM `event_scripts` WHERE `id`=15005;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(15005, 1, 10, 23364, 100000, 0, 2426.954, 7001.479, 367.3824, 0),
(15005, 0, 10, 23282, 300000, 0, 2424.975, 6933.425, 409.5501, 1.43117);


UPDATE `creature_template` SET `ainame`='SmartAI', `scriptname`='' WHERE `entry` =23364;
DELETE FROM `smart_scripts` WHERE `entryorguid` =23364 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` =23282 AND `source_type`=0 AND `id`>4;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(23364, 0, 0, 1, 11, 0, 100, 0, 0, 0, 0, 0, 11, 15750, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Black Dragon Whelpling - On Spawn - Cast Rookery Whelp Spawn-in Spell'),
(23364, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Black Dragon Whelpling - On Spawn - Say'),
(23364, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 18, 33536, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Black Dragon Whelpling - On Spawn - Set Unit Flags'),
(23364, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 70, 300, 0, 0, 0, 0, 0, 14, 27915, 185932, 0, 0, 0, 0, 0, 'Black Dragon Whelpling - On Spawn - Despawn Obsidia\'s Egg'),
(23364, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 53, 0, 23364, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Black Dragon Whelpling - On Spawn - Start WP'),
(23364, 0, 5, 6, 40, 0, 100, 0, 2, 23364, 0, 0, 45, 1, 1, 0, 0, 0, 0, 19, 23282, 0, 0, 0, 0, 0, 0, 'Black Dragon Whelpling - On Reached WP2 - Set Data on Obsidia'),
(23364, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Black Dragon Whelpling - Reached WP2 - Despawn'),
(23282, 0, 5, 0, 11, 0, 100, 0, 0, 0, 0, 0, 18, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Obsidia - On Spawn - Set Unit Flags'),
(23282, 0, 6, 7, 38, 0, 100, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Obsidia - On Data Set - Say'),
(23282, 0, 7, 0, 61, 0, 100, 0, 0, 0, 0, 0, 53, 1, 23282, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Obsidia - On Data Set - Start WP'),
(23282, 0, 8, 9, 40, 0, 100, 0, 1, 23282, 0, 0, 94, 280, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Obsidia - On Reached WP1 - Set Dynamic Flags'),
(23282, 0, 9, 10, 61, 0, 100, 0, 0, 0, 0, 0, 19, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Obsidia - On Reached WP1 - Set Unit Flags'),
(23282, 0, 10, 11, 61, 0, 100, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Obsidia - On Reached WP1 - Set Home Position'),
(23282, 0, 11, 0, 61, 0, 100, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Obsidia - On Reached WP1 - Set Aggresive');

DELETE FROM `creature_text` WHERE `entry` IN(23364,23282);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(23364, 0, 0, 'The %s screams out for its mother.', 16, 0, 100, 0, 0, 431, 'Black Dragon Whelpling'),
(23282, 0, 0, 'I believe that I shall feast upon both $r and ogre flesh tonight.', 14, 0, 100, 0, 0, 7274, 'Obsidia');


DELETE FROM `waypoints` WHERE `entry` IN(23364,23282);

INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(23364, 1,2425.253, 6994.862, 368.0848, 'Black Dragon Whelpling'),
(23364, 2,2424.881, 6998.754, 367.8495, 'Black Dragon Whelpling'),
(23282, 1,2428.085, 6980.77, 369.7684, 'Obsidia');

-- Crazed Soldier SAI
SET @ENTRY := 46989;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,500,1000,21500,29500,11,81219,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crazed Soldier - In Combat - Cast 'Battle Shout'"),
(@ENTRY,0,1,0,0,0,100,0,3000,4000,10000,12000,11,79881,0,0,0,0,0,2,0,0,0,0,0,0,0,"Crazed Soldier - In Combat - Cast 'Slam'"),
(@ENTRY,0,2,0,0,0,100,0,10500,11000,18500,23500,11,11977,0,0,0,0,0,2,0,0,0,0,0,0,0,"Crazed Soldier - In Combat - Cast 'Rend'");

-- Splinter Fist Warrior SAI
SET @ENTRY := 212;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,20,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Splinter Fist Warrior - On Aggro - Say Line 0"),
(@ENTRY,0,1,0,0,0,100,0,8000,8000,30000,30000,11,78828,0,0,0,0,0,1,0,0,0,0,0,0,0,"Splinter Fist Warrior - In Combat - Cast 'Bladestorm'"),
(@ENTRY,0,2,3,0,0,100,0,14000,14000,30000,30000,11,35856,0,0,0,0,0,1,0,0,0,0,0,0,0,"Splinter Fist Warrior - In Combat - Cast 'Stun'"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,1,1,0,0,0,0,0,2,0,0,0,0,0,0,0,"Splinter Fist Warrior - In Combat - Say 1");
DELETE FROM `creature_text` WHERE `entry`=212 AND `groupid`=1;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(212, 1, 0, 'Me not feel so good.', 12, 0, 100, 0, 0, 0, 'Splinter Fist Warrior');

--
UPDATE `quest_template` SET `SpecialFlags`= 8 WHERE `id` IN (28905,28906,28907,28908,29185,29183);

UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1740 WHERE `Id`=193; -- Panther Mastery
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1320 WHERE `Id`=196; -- Raptor Mastery
UPDATE `quest_template` SET `RequiredNpcOrGoCount1`=12 WHERE `Id`=199; -- A Dark Threat Looms
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=330 WHERE `Id`=264; -- Until Death Do Us Part
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3750 WHERE `Id`=351; -- Find OOX-17/TN!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=660 WHERE `Id`=353; -- Stormpike's Delivery
UPDATE `quest_template` SET `NextQuestIdChain`=836 WHERE `Id`=485; -- Find OOX-09/HL!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3900 WHERE `Id`=543; -- The Perenolde Tiara
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=648; -- Rescue OOX-17/TN!
UPDATE `quest_template` SET `RequiredItemCount1`=1 WHERE `Id`=726; -- Passing Word of a Threat
UPDATE `quest_template` SET `NextQuestIdChain`=751 WHERE `Id`=749; -- The Ravaged Caravan
UPDATE `quest_template` SET `NextQuestIdChain`=3721 WHERE `Id`=836; -- Rescue OOX-09/HL!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=780 WHERE `Id`=867; -- Harpy Raiders
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720 WHERE `Id`=877; -- The Stagnant Oasis
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=600 WHERE `Id`=880; -- Altered Beings
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=270 WHERE `Id`=927; -- The Moss-twined Heart
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=935; -- Crown of the Earth
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=941; -- Planting the Heart
UPDATE `quest_template` SET `RequiredItemCount1`=1 WHERE `Id`=991; -- Raene's Cleansing
UPDATE `quest_template` SET `RequiredItemCount1`=1, `RequiredItemCount2`=1 WHERE `Id`=994; -- Escape Through Force
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1020 WHERE `Id`=1028; -- Raene's Cleansing
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2100 WHERE `Id`=1204; -- Mudrock Soup and Bugs
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2760 WHERE `Id`=1205; -- Deadmire
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720 WHERE `Id`=1453; -- Reclaimers' Business in Desolace
UPDATE `quest_template` SET `NextQuestIdChain`=1455, `RewardMoneyMaxLevel`=1500 WHERE `Id`=1454; -- The Karnitol Shipwreck
UPDATE `quest_template` SET `NextQuestIdChain`=1456 WHERE `Id`=1455; -- The Karnitol Shipwreck
UPDATE `quest_template` SET `RequiredNpcOrGoCount1`=1 WHERE `Id`=1503; -- Forged Steel
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=1578; -- Supplying the Front
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=840 WHERE `Id`=1582; -- Moonglow Vest
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720 WHERE `Id`=1618; -- Gearing Redridge
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=330 WHERE `Id`=1918; -- The Befouled Element
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=150 WHERE `Id`=2039; -- Find Bingles
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1980 WHERE `Id`=2278; -- The Platinum Discs
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1980 WHERE `Id`=2280; -- The Platinum Discs
UPDATE `quest_template` SET `RequiredSourceItemCount1`=1 WHERE `Id`=2459; -- Ferocitas the Dream Eater
UPDATE `quest_template` SET `RequiredNpcOrGoCount1`=1 WHERE `Id`=2561; -- Druid of the Claw
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1620 WHERE `Id`=2751; -- Barbaric Battlements
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2100 WHERE `Id`=2754; -- Horns of Frenzy
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1860 WHERE `Id`=2947; -- Return of the Ring
UPDATE `quest_template` SET `RequiredNpcOrGoCount2`=1 WHERE `Id`=3520; -- Screecher Spirits
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=124050 WHERE `Id`=3639; -- Show Your Work
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=41350 WHERE `Id`=5502; -- A Warden of the Horde
UPDATE `quest_template` SET `RewardOrRequiredMoney`=175 WHERE `Id`=5892; -- Irondeep Supplies
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000 WHERE `Id`=5893; -- Coldtooth Supplies
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4950 WHERE `Id`=6032; -- Sacred Cloth
UPDATE `quest_template` SET `NextQuestIdChain`=6362 WHERE `Id`=6361; -- A Bundle of Hides
UPDATE `quest_template` SET `NextQuestIdChain`=6363 WHERE `Id`=6362; -- Ride to Thunder Bluff
UPDATE `quest_template` SET `NextQuestIdChain`=6364 WHERE `Id`=6363; -- Tal the Wind Rider Master
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3300 WHERE `Id`=6607; -- Nat Pagle, Angler Extreme
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=840 WHERE `Id`=6608; -- You Too Good.
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3300 WHERE `Id`=6610; -- Clamlette Surprise
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=840 WHERE `Id`=6611; -- To Gadgetzan You Go!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=840 WHERE `Id`=6623; -- Horde Trauma
UPDATE `quest_template` SET `RequiredNpcOrGoCount1`=1 WHERE `Id`=6821; -- Eye of the Emberseer
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=41350 WHERE `Id`=6962; -- Treats for Great-father Winter
UPDATE `quest_template` SET `RewardOrRequiredMoney`=350 WHERE `Id`=6982; -- Coldtooth Supplies
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700 WHERE `Id`=6983; -- You're a Mean One...
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000 WHERE `Id`=6985; -- Irondeep Supplies
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=41350 WHERE `Id`=7025; -- Treats for Greatfather Winter
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=16550 WHERE `Id`=7061; -- The Feast of Winter Veil
UPDATE `quest_template` SET `RewardOrRequiredMoney`=33000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=7081; -- Alterac Valley Graveyards
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=7082; -- The Graveyards of Alterac
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=7101; -- Towers and Bunkers
UPDATE `quest_template` SET `RewardOrRequiredMoney`=33000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=7102; -- Towers and Bunkers
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=16550 WHERE `Id`=7121; -- The Quartermaster
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=7122; -- Capture a Mine
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=16550 WHERE `Id`=7123; -- Speak with our Quartermaster
UPDATE `quest_template` SET `RewardOrRequiredMoney`=188000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=7124; -- Capture a Mine
UPDATE `quest_template` SET `RewardOrRequiredMoney`=99000, `RewardMoneyMaxLevel`=248050 WHERE `Id`=7141; -- The Battle of Alterac
UPDATE `quest_template` SET `RewardOrRequiredMoney`=282000, `RewardMoneyMaxLevel`=248050 WHERE `Id`=7142; -- The Battle for Alterac
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=7161; -- Proving Grounds
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=7162; -- Proving Grounds
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=7223; -- Armor Scraps
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=7224; -- Enemy Booty
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=8700 WHERE `Id`=7761; -- Blackhand's Command
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=8700 WHERE `Id`=7781; -- The Lord of Blackrock
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=8700 WHERE `Id`=7783; -- The Lord of Blackrock
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=8700 WHERE `Id`=7786; -- Thunderaan the Windseeker
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=8700 WHERE `Id`=7787; -- Rise, Thunderfury!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=7848; -- Attunement to the Core
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=16550 WHERE `Id`=7905; -- The Darkmoon Faire
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=16550 WHERE `Id`=7926; -- The Darkmoon Faire
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4950 WHERE `Id`=8120; -- The Battle for Arathi Basin!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=8700 WHERE `Id`=8121; -- Take Four Bases
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=8700 WHERE `Id`=8122; -- Take Five Bases
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=8150; -- Honoring a Hero
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3300 WHERE `Id`=8166; -- The Battle for Arathi Basin!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1980 WHERE `Id`=8167; -- The Battle for Arathi Basin!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1200 WHERE `Id`=8168; -- The Battle for Arathi Basin!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=188000 WHERE `Id`=8193; -- Master Angler
UPDATE `quest_template` SET `RequiredItemCount2`=1 WHERE `Id`=8232; -- The Green Drake
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100 WHERE `Id`=8278; -- Noggle's Last Hope
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100 WHERE `Id`=8281; -- Stepping Up Security
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6300 WHERE `Id`=8283; -- Wanted - Deathclasp, Terror of the Sands
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100 WHERE `Id`=8284; -- The Twilight Mystery
UPDATE `quest_template` SET `NextQuestIdChain`=0 WHERE `Id`=8286; -- What Tomorrow Brings
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6300 WHERE `Id`=8306; -- Into The Maw of Madness
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=16550 WHERE `Id`=8311; -- Hallow's End Treats for Jesper!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=16550 WHERE `Id`=8312; -- Hallow's End Treats for Spoops!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2520 WHERE `Id`=8317; -- Kitchen Assistance
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100 WHERE `Id`=8318; -- Secret Communication
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100 WHERE `Id`=8320; -- Twilight Geolords
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6300 WHERE `Id`=8321; -- Vyral the Vile
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100 WHERE `Id`=8323; -- True Believers
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=8367; -- For Great Honor
UPDATE `quest_template` SET `RequiredNpcOrGoCount2`=1 WHERE `Id`=8501; -- Target: Hive'Ashi Stingers
UPDATE `quest_template` SET `NextQuestIdChain`=0 WHERE `Id`=8519; -- A Pawn on the Eternal Board
UPDATE `quest_template` SET `RequiredNpcOrGoCount1`=1 WHERE `Id`=8534; -- Hive'Zora Scout Report
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=8557; -- Drape of Unyielding Strength
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=8558; -- Sickle of Unyielding Strength
UPDATE `quest_template` SET `NextQuestIdChain`=0 WHERE `Id`=8575; -- Azuregos's Magical Ledger
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=8689; -- Shroud of Infinite Wisdom
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=8690; -- Cloak of the Gathering Storm
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=8691; -- Drape of Vaulted Secrets
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=8692; -- Cloak of Unending Life
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=8693; -- Cloak of Veiled Shadows
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=8694; -- Shroud of Unspoken Names
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=8695; -- Cape of Eternal Justice
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=8696; -- Cloak of the Unseen Path
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=8697; -- Ring of Infinite Wisdom
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=8698; -- Ring of the Gathering Storm
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=8699; -- Band of Vaulted Secrets
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=8700; -- Band of Unending Life
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=8701; -- Band of Veiled Shadows
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=8702; -- Ring of Unspoken Names
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=8703; -- Ring of Eternal Justice
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=8704; -- Signet of the Unseen Path
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=8705; -- Gavel of Infinite Wisdom
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=8706; -- Hammer of the Gathering Storm
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=8707; -- Blade of Vaulted Secrets
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=8708; -- Mace of Unending Life
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=8709; -- Dagger of Veiled Shadows
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=8710; -- Kris of Unspoken Names
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=8711; -- Blade of Eternal Justice
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=8712; -- Scythe of the Unseen Path
UPDATE `quest_template` SET `NextQuestIdChain`=0 WHERE `Id`=8735; -- The Nightmare's Corruption
UPDATE `quest_template` SET `RequiredNpcOrGoCount1`=1 WHERE `Id`=8738; -- Hive'Regal Scout Report
UPDATE `quest_template` SET `RequiredNpcOrGoCount1`=1 WHERE `Id`=8739; -- Hive'Ashi Scout Report
UPDATE `quest_template` SET `RequiredNpcOrGoCount2`=1 WHERE `Id`=8774; -- Target: Hive'Regal Ambushers
UPDATE `quest_template` SET `RequiredNpcOrGoCount2`=1 WHERE `Id`=8775; -- Target: Hive'Regal Spitfires
UPDATE `quest_template` SET `RequiredNpcOrGoCount2`=1 WHERE `Id`=8776; -- Target: Hive'Regal Slavemakers
UPDATE `quest_template` SET `RequiredNpcOrGoCount2`=1 WHERE `Id`=8777; -- Target: Hive'Regal Burrowers
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=8700 WHERE `Id`=8791; -- The Fall of Ossirian
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=8700 WHERE `Id`=8801; -- C'Thun's Legacy
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=8700 WHERE `Id`=8802; -- The Savior of Kalimdor
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=8868; -- Elune's Blessing
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=16550 WHERE `Id`=8883; -- Valadar Starsong
UPDATE `quest_template` SET `RequiredNpcOrGoCount1`=1 WHERE `Id`=9035; -- Roadside Ambush
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1200 WHERE `Id`=9170; -- Dar'Khan's Lieutenants
UPDATE `quest_template` SET `RewardOrRequiredMoney`=71000, `RewardMoneyMaxLevel`=124050 WHERE `Id`=9330; -- Stealing Stormwind's Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=71000, `RewardMoneyMaxLevel`=124050 WHERE `Id`=9331; -- Stealing Ironforge's Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=71000, `RewardMoneyMaxLevel`=124050 WHERE `Id`=9332; -- Stealing Darnassus's Flame
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=124050 WHERE `Id`=9339; -- A Thief's Reward
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5850 WHERE `Id`=9345; -- Preparing the Salve
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5850 WHERE `Id`=9349; -- Ravager Egg Roundup
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5850 WHERE `Id`=9351; -- Voidwalkers Gone Wild
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5850 WHERE `Id`=9355; -- A Job for an Intelligent Man
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11700 WHERE `Id`=9356; -- Smooth as Butter
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=9360; -- Amani Invasion
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11700 WHERE `Id`=9361; -- Helboar, the Other White Meat
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=124050 WHERE `Id`=9365; -- A Thief's Reward
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6300 WHERE `Id`=9372; -- Demonic Contamination
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6300 WHERE `Id`=9376; -- A Pilgrim's Plight
UPDATE `quest_template` SET `RequiredNpcOrGoCount1`=1 WHERE `Id`=9379; -- Fortifying the Felhunter
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6300 WHERE `Id`=9383; -- An Ambitious Plan
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6300 WHERE `Id`=9385; -- Rampaging Ravagers
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1560 WHERE `Id`=9390; -- In Search of Sedai
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6000 WHERE `Id`=9397; -- Birds of a Feather
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6000 WHERE `Id`=9398; -- Deadly Predators
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6300 WHERE `Id`=9399; -- Cruel Taskmasters
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6000 WHERE `Id`=9410; -- A Spirit Guide
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6300 WHERE `Id`=9417; -- The Arakkoa Threat
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100 WHERE `Id`=9419; -- Scouring the Desert
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1560 WHERE `Id`=9423; -- Return to Obadei
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6300 WHERE `Id`=9424; -- Makuru's Vengeance
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6000 WHERE `Id`=9426; -- The Pools of Aggonar
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6000 WHERE `Id`=9427; -- Cleansing the Waters
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6300 WHERE `Id`=9442; -- A Debilitating Sickness
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7800 WHERE `Id`=9466; -- Wanted: Blacktalon the Savage
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=9472; -- Arelion's Mistress
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7800 WHERE `Id`=9490; -- The Rock Flayer Matriarch
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=660 WHERE `Id`=9543; -- Atonement
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=780 WHERE `Id`=9548; -- Pilfered Equipment
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=780 WHERE `Id`=9549; -- Artifacts of the Blacksilt
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720 WHERE `Id`=9550; -- A Map to Where?
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720 WHERE `Id`=9557; -- Deciphering the Book
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=600 WHERE `Id`=9558; -- The Longbeards
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6000 WHERE `Id`=9563; -- Gaining Mirren's Trust
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=9564; -- Gurf's Dignity
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=600 WHERE `Id`=9567; -- Know Thine Enemy
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=840 WHERE `Id`=9569; -- Containing the Threat
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720 WHERE `Id`=9570; -- The Kurken is Lurkin'
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=9573; -- Chieftain Oomooroo
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=600 WHERE `Id`=9574; -- Victims of Corruption
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=9576; -- Cruelfin's Necklace
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=840 WHERE `Id`=9578; -- Searching for Galaen
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=840 WHERE `Id`=9579; -- Galaen's Fate
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720 WHERE `Id`=9580; -- The Bear Necessities
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=9581; -- Learning from the Crystals
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=600 WHERE `Id`=9584; -- The Second Sample
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=840 WHERE `Id`=9585; -- The Final Sample
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=600 WHERE `Id`=9594; -- Signs of the Legion
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=600 WHERE `Id`=9620; -- The Missing Survey Team
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=390 WHERE `Id`=9622; -- Warn Your People
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=60 WHERE `Id`=9623; -- Coming of Age
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=9624; -- A Favorite Treat
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=120 WHERE `Id`=9625; -- Elekks Are Serious Business
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=600 WHERE `Id`=9628; -- Salvaging the Data
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=9629; -- Catch and Release
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3750 WHERE `Id`=9631; -- A Colleague's Aid
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=480 WHERE `Id`=9632; -- Newfound Allies
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=9634; -- Alien Predators
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=9637; -- Kalynna's Request
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=9640; -- The Shade of Aran
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=660 WHERE `Id`=9641; -- Irradiated Crystal Shards
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=660 WHERE `Id`=9643; -- Constrictor Vines
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=9644; -- Nightbane
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=9645; -- The Master's Terrace
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=780 WHERE `Id`=9646; -- WANTED: Deathclaw
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720 WHERE `Id`=9647; -- Culling the Flutterers
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=600 WHERE `Id`=9648; -- Mac'Aree Mushroom Menagerie
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=840 WHERE `Id`=9649; -- Ysera's Tears
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=9663; -- The Kessel Run
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=9666; -- Declaration of Power
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720 WHERE `Id`=9667; -- Saving Princess Stillpine
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=60 WHERE `Id`=9668; -- Report to Exarch Admetius
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=900 WHERE `Id`=9669; -- The Missing Expedition
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=210 WHERE `Id`=9672; -- The Bloodcurse Legacy
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=840 WHERE `Id`=9674; -- The Bloodcursed Naga
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=840 WHERE `Id`=9682; -- The Hopeless Ones...
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=900 WHERE `Id`=9683; -- Ending the Bloodcurse
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=840 WHERE `Id`=9687; -- Restoring Sanctity
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=900 WHERE `Id`=9688; -- Into the Dream
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1020 WHERE `Id`=9689; -- Razormaw
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=60 WHERE `Id`=9693; -- What Argus Means to Me
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=660 WHERE `Id`=9694; -- Blood Watch
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=60 WHERE `Id`=9696; -- Translations...
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720 WHERE `Id`=9698; -- Audience with the Prophet
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=180 WHERE `Id`=9699; -- Truth or Fiction
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720 WHERE `Id`=9700; -- I Shoot Magic Into the Darkness
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=9702; -- A Question of Gluttony
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=780 WHERE `Id`=9703; -- The Cryo-Core
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=600 WHERE `Id`=9706; -- Galaen's Journal - The Fate of Vindicator Saruan
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=840 WHERE `Id`=9711; -- Matis the Cruel
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=8100 WHERE `Id`=9720; -- Balance Must Be Preserved
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=8100 WHERE `Id`=9728; -- A Warm Welcome
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=37500 WHERE `Id`=9731; -- Drain Schematics
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6300 WHERE `Id`=9732; -- Return to the Marsh
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=840 WHERE `Id`=9740; -- The Sun Gate
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=600 WHERE `Id`=9741; -- Critters of the Void
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=840 WHERE `Id`=9746; -- Limits of Physical Exhaustion
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=840 WHERE `Id`=9748; -- Don't Drink the Water
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=90 WHERE `Id`=9753; -- What We Know...
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720 WHERE `Id`=9756; -- What We Don't Know...
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1440 WHERE `Id`=9759; -- Ending Their World
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=240 WHERE `Id`=9760; -- Vindicator's Rest
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1200 WHERE `Id`=9761; -- Clearing the Way
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15300 WHERE `Id`=9763; -- The Warlord's Hideout
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6000 WHERE `Id`=9771; -- Searching for Scout Jyoba
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720 WHERE `Id`=9779; -- Intercepting the Message
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6000 WHERE `Id`=9788; -- A Damp, Dark Place
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1560 WHERE `Id`=9796; -- News from Zangarmarsh
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1620 WHERE `Id`=9797; -- Reinforcements for Garadar
UPDATE `quest_template` SET `RequiredSourceItemCount2`=1 WHERE `Id`=9798; -- Blood Elf Plans
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6300 WHERE `Id`=9802; -- Plants of Zangarmarsh
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=9803; -- Messenger to the Feralfen
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6900 WHERE `Id`=9810; -- The Spirit Polluted
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=9824; -- Arcane Disturbances
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=9825; -- Restless Activity
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3750 WHERE `Id`=9826; -- Contact from Dalaran
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15300 WHERE `Id`=9831; -- Entry Into Karazhan
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15300 WHERE `Id`=9832; -- The Second and Third Fragments
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=9840; -- Assessing the Situation
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=9843; -- Keanna's Log
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=9844; -- A Demonic Presence
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=10500 WHERE `Id`=9849; -- Shattering the Veil
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6900 WHERE `Id`=9850; -- Clefthoof Mastery
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=8700 WHERE `Id`=9851; -- Clefthoof Mastery
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=10800 WHERE `Id`=9852; -- The Ultimate Bloodsport
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=10500 WHERE `Id`=9853; -- Gurok the Usurper
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6900 WHERE `Id`=9855; -- Windroc Mastery
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6900 WHERE `Id`=9858; -- Talbuk Mastery
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6900 WHERE `Id`=9862; -- Murkblood Corrupters
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=9889; -- Don't Kill the Fat One
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6900 WHERE `Id`=9900; -- Gava'xi
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=9903; -- The Biggest of Them All
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=9904; -- Pursuing Terrorclaw
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=9906; -- Message in a Battle
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=600 WHERE `Id`=9912; -- The Cenarion Expedition
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6900 WHERE `Id`=9914; -- A Head Full of Ivory
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6900 WHERE `Id`=9925; -- Matters of Security
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6900 WHERE `Id`=9931; -- Returning the Favor
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6900 WHERE `Id`=9932; -- Body of Evidence
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=10500 WHERE `Id`=9937; -- Wanted: Durn the Hungerer
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1560 WHERE `Id`=9957; -- What's Wrong at Cenarion Thicket?
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=10500 WHERE `Id`=9962; -- The Ring of Blood: Brokentoe
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=10500 WHERE `Id`=9967; -- The Ring of Blood: The Blue Brothers
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=10500 WHERE `Id`=9970; -- The Ring of Blood: Rokdar the Sundered Lord
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=10500 WHERE `Id`=9972; -- The Ring of Blood: Skra'gath
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=10500 WHERE `Id`=9973; -- The Ring of Blood: The Warmaul Champion
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=10800 WHERE `Id`=9977; -- The Ring of Blood: The Final Challenge
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6300 WHERE `Id`=9978; -- By Any Means Necessary
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7200 WHERE `Id`=9999; -- Buying Time
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7200 WHERE `Id`=10004; -- Patience and Understanding
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=8100 WHERE `Id`=10022; -- The Elusive Ironjaw
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=10024; -- Voren'thal's Visions
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=10030; -- Recover the Bones
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=10031; -- Helping the Lost Find Their Way
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=8400 WHERE `Id`=10035; -- Torgos!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=8400 WHERE `Id`=10036; -- Torgos!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=10037; -- Rather Be Fishin'
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=10041; -- Who Are They?
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5850 WHERE `Id`=10047; -- The Path of Glory
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5850 WHERE `Id`=10050; -- Unyielding Souls
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5850 WHERE `Id`=10055; -- Waste Not, Want Not
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5850 WHERE `Id`=10057; -- Looking to the Leadership
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5850 WHERE `Id`=10058; -- An Old Gift
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=180 WHERE `Id`=10063; -- Explorers' League, Is That Something for Gnomes?
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=90 WHERE `Id`=10064; -- Talk to the Hand
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=780 WHERE `Id`=10065; -- Cutting a Path
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1020 WHERE `Id`=10066; -- Oh, the Tangled Webs They Weave
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=900 WHERE `Id`=10067; -- Fouled Water Spirits
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6900 WHERE `Id`=10074; -- Oshu'gun Crystal Powder
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6900 WHERE `Id`=10076; -- Oshu'gun Crystal Powder
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5850 WHERE `Id`=10078; -- Laying Waste to the Unwanted
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5850 WHERE `Id`=10079; -- When This Mine's a-Rockin'
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5850 WHERE `Id`=10087; -- Burn It Up... For the Horde!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1560 WHERE `Id`=10093; -- The Temple of Telhamat
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6000 WHERE `Id`=10096; -- Saving the Sporeloks
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5850 WHERE `Id`=10099; -- The Mastermind
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1560 WHERE `Id`=10105; -- News for Rakoria
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4350 WHERE `Id`=10106; -- Hellfire Fortifications
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100 WHERE `Id`=10107; -- Diplomatic Measures
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100 WHERE `Id`=10108; -- Diplomatic Measures
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4350 WHERE `Id`=10110; -- Hellfire Fortifications
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=10118; -- Message to the Daggerfen
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1440 WHERE `Id`=10119; -- Through the Dark Portal
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7800 WHERE `Id`=10132; -- Colossal Menace
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3150 WHERE `Id`=10134; -- Crimson Crystal Clue
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9300 WHERE `Id`=10136; -- Cruel's Intentions
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1440 WHERE `Id`=10140; -- Journey to Honor Hold
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=570 WHERE `Id`=10141; -- The Legion Reborn
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5850 WHERE `Id`=10142; -- The Path of Anguish
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=570 WHERE `Id`=10143; -- Expedition Point
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=24000 WHERE `Id`=10144; -- Disrupt Their Reinforcements
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=10146; -- Mission: The Murketh and Shaadraz Gateways
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6300 WHERE `Id`=10159; -- Keep Thornfang Hill Clear!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1440 WHERE `Id`=10160; -- Know your Enemy
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5850 WHERE `Id`=10161; -- In Case of Emergency...
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6000 WHERE `Id`=10163; -- Mission: The Abyssal Shelf
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7200 WHERE `Id`=10176; -- Ar'kelos the Guardian
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1860 WHERE `Id`=10180; -- Can't Stay Away
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=10188; -- The Sigil of Krasus
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720 WHERE `Id`=10200; -- Return to Thalodien
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4950 WHERE `Id`=10201; -- And Now, the Moment of Truth
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3300 WHERE `Id`=10211; -- City of Light
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1740 WHERE `Id`=10228; -- Ezekiel
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6900 WHERE `Id`=10231; -- What Book? I Don't See Any Book.
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=10234; -- One Demon's Trash...
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1440 WHERE `Id`=10242; -- Spinebreaker Post
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=10248; -- You, Robot
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=10500 WHERE `Id`=10253; -- Levixus the Soul Caller
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=570 WHERE `Id`=10254; -- Force Commander Danath
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15300 WHERE `Id`=10257; -- Capturing the Keystone
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=10267; -- Rightful Repossession
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720 WHERE `Id`=10277; -- The Caverns of Time
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=660 WHERE `Id`=10279; -- To The Master's Lair
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720 WHERE `Id`=10282; -- Old Hillsbrad
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1440 WHERE `Id`=10288; -- Arrival in Outland
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2940 WHERE `Id`=10291; -- Report to Nazgrel
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=780 WHERE `Id`=10296; -- The Black Morass
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15300 WHERE `Id`=10297; -- The Opening of the Dark Portal
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7200 WHERE `Id`=10299; -- Shutting Down Manaforge B'naar
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9600 WHERE `Id`=10310; -- Sabotage the Warp-Gate!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=10323; -- Shutting Down Manaforge Ara
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=10338; -- Shutting Down Manaforge Duro
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=570 WHERE `Id`=10340; -- Shatter Point
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=570 WHERE `Id`=10344; -- Wing Commander Gryphongar
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=660 WHERE `Id`=10349; -- The Earthbinder
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6000 WHERE `Id`=10367; -- A Traitor Among Us
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6000 WHERE `Id`=10368; -- The Dreghood Elders
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=10369; -- Arzeth's Demise
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=570 WHERE `Id`=10382; -- Go to the Front
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5850 WHERE `Id`=10389; -- The Agony and the Darkness
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5850 WHERE `Id`=10394; -- Disruption - Forge Camp: Mageddon
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2940 WHERE `Id`=10395; -- The Dark Missive
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11700 WHERE `Id`=10396; -- Enemy of my Enemy...
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5850 WHERE `Id`=10397; -- Invasion Point: Annihilator
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5850 WHERE `Id`=10399; -- The Heart of Darkness
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9300 WHERE `Id`=10400; -- Overlord
UPDATE `quest_template` SET `RequiredNpcOrGoCount1`=1 WHERE `Id`=10406; -- Delivering the Message
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=10409; -- Deathblow to the Legion
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9600 WHERE `Id`=10416; -- Synthesis of Power
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=570 WHERE `Id`=10443; -- Helping the Cenarion Post
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=10445; -- The Vials of Eternity
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=660 WHERE `Id`=10448; -- Report to Stonebreaker Camp
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9600 WHERE `Id`=10465; -- Restorer's Vow
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9600 WHERE `Id`=10466; -- Champion's Vow
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9600 WHERE `Id`=10467; -- Defender's Vow
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9600 WHERE `Id`=10468; -- Sage's Oath
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9600 WHERE `Id`=10470; -- Champion's Oath
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9600 WHERE `Id`=10472; -- Sage's Covenant
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6900 WHERE `Id`=10479; -- Proving Your Strength
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5400 WHERE `Id`=10482; -- Fel Orc Scavengers
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1380 WHERE `Id`=10483; -- Ill Omens
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5400 WHERE `Id`=10484; -- Cursed Talismans
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=10485; -- Warlord of the Bleeding Hollow
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6900 WHERE `Id`=10504; -- The Bladespire Ogres
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=10507; -- Turning Point
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=10514; -- I Was A Lot Of Things...
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=10515; -- A Lesson Learned
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=780 WHERE `Id`=10519; -- The Cipher of Damnation - Truth and History
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100 WHERE `Id`=10525; -- Vision Guide
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=10538; -- Boiling Blood
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=10547; -- Of Thistleheads and Eggs...
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6900 WHERE `Id`=10555; -- Malaise
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=10562; -- Besieged!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=10578; -- The Cipher of Damnation - Borak's Charge
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6900 WHERE `Id`=10584; -- Picking Up Some Power Converters
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=10600; -- Minions of the Shadow Council
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6900 WHERE `Id`=10608; -- Crystal Clear
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6900 WHERE `Id`=10609; -- What Came First, the Drake or the Egg?
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=10624; -- A Haunted History
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=10625; -- Spectrecles
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1920 WHERE `Id`=10628; -- Akama
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=10634; -- Divination: Gorefiend's Armor
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=10636; -- Divination: Gorefiend's Truncheon
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=10651; -- Varedis Must Be Stopped
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5550 WHERE `Id`=10664; -- Additional Materials
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6900 WHERE `Id`=10671; -- More than a Pound of Flesh
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=10685; -- The Ashtongue Corruptors
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3750 WHERE `Id`=10686; -- The Warden's Cage
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15300 WHERE `Id`=10704; -- How to Break Into the Arcatraz
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15300 WHERE `Id`=10705; -- Seer Udalo
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3300 WHERE `Id`=10710; -- Test Flight: The Singing Ridge
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9600 WHERE `Id`=10725; -- Eminence Among the Violet Eye
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9600 WHERE `Id`=10726; -- Eminence Among the Violet Eye
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9600 WHERE `Id`=10733; -- Down the Violet Path
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9600 WHERE `Id`=10735; -- Down the Violet Path
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9600 WHERE `Id`=10738; -- Distinguished Service
UPDATE `quest_template` SET `RequiredItemCount1`=1 WHERE `Id`=10752; -- Onward to Ashenvale
UPDATE `quest_template` SET `RequiredItemCount1`=1 WHERE `Id`=10753; -- Culling the Wild
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9600 WHERE `Id`=10765; -- When Worlds Collide...
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=10769; -- Dissension Amongst the Ranks...
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=10772; -- The Path of Conquest
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=10781; -- Battle of the Crimson Watch
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=660 WHERE `Id`=10791; -- Welcoming the Wolf Spirit
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6900 WHERE `Id`=10795; -- A Date with Dorgok
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6900 WHERE `Id`=10796; -- Crush the Bloodmaul Camp!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=10804; -- Kindness
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7200 WHERE `Id`=10819; -- Felsworn Gas Mask
UPDATE `quest_template` SET `RequiredItemCount1`=1 WHERE `Id`=10820; -- Deceive thy Enemy
UPDATE `quest_template` SET `RequiredItemCount1`=1 WHERE `Id`=10821; -- You're Fired!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=10836; -- Infiltrating Dragonmaw Fortress
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=10837; -- To Netherwing Ledge!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7200 WHERE `Id`=10838; -- The Demoniac Scryer
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6000 WHERE `Id`=10847; -- The Eyes of Skettis
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=10854; -- The Force of Neltharaku
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=10866; -- Zuluhed the Whacked
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=10874; -- Veil Shalas: Signal Fires
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=10884; -- Trial of the Naaru: Mercy
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=10885; -- Trial of the Naaru: Strength
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=10886; -- Trial of the Naaru: Tenacity
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7200 WHERE `Id`=10895; -- Zeth'Gor Must Burn!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2940 WHERE `Id`=10903; -- Return to Honor Hold
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5850 WHERE `Id`=10909; -- Fel Spirits
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2940 WHERE `Id`=10916; -- Digging for Prayer Beads
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=10917; -- The Outcast's Plight
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=10923; -- Evil Draws Near
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=10927; -- Killing the Crawlers
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=8400 WHERE `Id`=10930; -- The Big Bone Worm
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7200 WHERE `Id`=10935; -- The Exorcism of Colonel Jules
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1140 WHERE `Id`=10936; -- Trollbane is Looking for You
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=10937; -- Drill the Drillmaster
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9600 WHERE `Id`=10944; -- The Secret Compromised
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=10945; -- Hch'uu and the Mushroom People
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=10947; -- An Artifact From the Past
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=10949; -- Entry Into the Black Temple
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=10951; -- A Trip to the Dark Portal
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=10953; -- Visit the Throne of the Elements
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=10957; -- Redemption of the Ashtongue
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9600 WHERE `Id`=10958; -- Seek Out the Ashtongue
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=10959; -- The Fall of the Betrayer
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=10963; -- Time to Visit the Caverns
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=10967; -- Back to the Orphanage
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=10976; -- The Mark of the Nexus-King
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1920 WHERE `Id`=10983; -- Mog'dorg the Wizened
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=11002; -- The Fall of Magtheridon
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=11003; -- The Fall of Magtheridon
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11004; -- World of Shadows
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11005; -- Secrets of the Talonpriests
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11008; -- Fires Over Skettis
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11015; -- Netherwing Crystals
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11016; -- Nethermine Flayer Hide
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11017; -- Netherdust Pollen
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11018; -- Nethercite Ore
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11020; -- A Slow Death
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11023; -- Bomb Them Again!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3750 WHERE `Id`=11024; -- An Ally in Lower City
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3750 WHERE `Id`=11028; -- Countdown to Doom
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11035; -- The Not-So-Friendly Skies...
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720 WHERE `Id`=11037; -- A Strange Vision
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720 WHERE `Id`=11042; -- A Mystifying Vision
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720 WHERE `Id`=11043; -- Building a Better Gryphon
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720 WHERE `Id`=11044; -- Visions of Destruction
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720 WHERE `Id`=11045; -- Zorus the Judicator
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11051; -- Banish More Demons
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11055; -- The Booterang: A Cure For The Common Worthless Peon
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3750 WHERE `Id`=11056; -- Hazzik's Bargain
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11061; -- A Father's Duty
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11064; -- Dragonmaw Race: The Ballad of Oldie McOld
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11066; -- Wrangle More Aether Rays!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11067; -- Dragonmaw Race: Trope the Filth-Belcher
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9600 WHERE `Id`=11068; -- Dragonmaw Race: Corlok the Vet
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9600 WHERE `Id`=11076; -- Picking Up The Pieces...
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11077; -- Dragons are the Least of Our Problems
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=11080; -- The Relic's Emanation
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=11085; -- Escape from Skettis
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11086; -- Disrupting the Twilight Portal
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11089; -- The Soul Cannon of Reth'hedron
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11093; -- Hungry Nether Rays
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11094; -- Kill Them All!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9600 WHERE `Id`=11097; -- The Deadliest Trap Ever Laid
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9600 WHERE `Id`=11101; -- The Deadliest Trap Ever Laid
UPDATE `quest_template` SET `RewardOrRequiredMoney`=9400, `RewardMoneyMaxLevel`=16550 WHERE `Id`=11120; -- Pink Elekks On Parade
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11131; -- Stop the Fires!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9600 WHERE `Id`=11165; -- A Troll Among Trolls
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6000 WHERE `Id`=11168; -- Spiking the Mix
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=206700 WHERE `Id`=11196; -- TEMP X
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=210 WHERE `Id`=11212; -- Tabetha's Farm
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11219; -- Stop the Fires!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9000 WHERE `Id`=11221; -- Reports from the Field
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3000 WHERE `Id`=11229; -- The Windrunner Fleet
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11230; -- Ambushed!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11232; -- Guide Our Sights
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15000 WHERE `Id`=11233; -- Landing the Killing Blow
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6000 WHERE `Id`=11234; -- Report to Anselm
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11244; -- Rescuing the Rescuers
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9000 WHERE `Id`=11253; -- Sniff Out the Enemy
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6000 WHERE `Id`=11254; -- The Dragonskin Map
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11257; -- Gruesome, But Necessary
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11258; -- Burn Skorn, Burn!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11259; -- Towers of Certain Doom
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15300 WHERE `Id`=11261; -- The Conqueror of Skorn!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=24000 WHERE `Id`=11262; -- Ingvar Must Die!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11263; -- Dealing With Gjalerbron
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15300 WHERE `Id`=11264; -- Necro Overlord Mezhen
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15300 WHERE `Id`=11267; -- The Frost Wyrm and its Master
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11268; -- The Walking Dead
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=18000 WHERE `Id`=11272; -- A Score to Settle
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11280; -- Draconis Gastritis
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11281; -- Mimicking Nature's Call
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11282; -- A Lesson in Fear
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11286; -- The Artifacts of Steel Gate
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11290; -- Dragonflayer Battle Plans
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1920 WHERE `Id`=11291; -- To Westguard Keep!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11298; -- What's in That Brew?
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11300; -- Stunning Defeat at the Ring
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15000 WHERE `Id`=11303; -- The Ambush
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1200 WHERE `Id`=11304; -- New Agamand
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11305; -- A Tailor-Made Formula
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9000 WHERE `Id`=11306; -- Apply Heat and Stir
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11307; -- Field Test
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3000 WHERE `Id`=11308; -- Time for Cleanup
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11309; -- Parts for the Job
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15000 WHERE `Id`=11310; -- Warning: Some Assembly Required
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1200 WHERE `Id`=11312; -- The Frozen Glade
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11313; -- Spirits of the Ice
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11317; -- The Cleansing
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11323; -- In Worg's Clothing
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15000 WHERE `Id`=11324; -- Alpha Worg
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15000 WHERE `Id`=11332; -- Mission: Plague This!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000, `RewardMoneyMaxLevel`=248050, `RewardArenaPoints`=25 WHERE `Id`=11335; -- Call to Arms: Arathi Basin
UPDATE `quest_template` SET `RewardOrRequiredMoney`=82000, `RewardMoneyMaxLevel`=248050 WHERE `Id`=11336; -- Call to Arms: Alterac Valley
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=248050, `RewardArenaPoints`=25 WHERE `Id`=11339; -- Call to Arms: Arathi Basin
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=248050, `RewardArenaPoints`=25 WHERE `Id`=11340; -- Call to Arms: Alterac Valley
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=248050, `RewardArenaPoints`=25 WHERE `Id`=11341; -- Call to Arms: Eye of the Storm
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=248050, `RewardArenaPoints`=25 WHERE `Id`=11342; -- Call to Arms: Warsong Gulch
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11344; -- Anguish of Nifflevar
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11351; -- Mastering the Runes
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11352; -- The Rune of Command
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=11354; -- Wanted: Nazan's Riding Crop
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=16550 WHERE `Id`=11356; -- Costumed Orphan Matron
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=11362; -- Wanted: Keli'dan's Feathered Stave
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=11363; -- Wanted: Bladefist's Seal
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11364; -- Wanted: Shattered Hand Centurions
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=11366; -- The Lodestone
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15300 WHERE `Id`=11367; -- Demolishing Megalith
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=11368; -- Wanted: The Heart of Quagmirran
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=11369; -- Wanted: A Black Stalker Egg
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=11370; -- Wanted: The Warlord's Treatise
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11371; -- Wanted: Coilfang Myrmidons
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=11372; -- Wanted: The Headfeathers of Ikiss
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=11373; -- Wanted: Shaffar's Wondrous Pendant
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=11374; -- Wanted: The Exarch's Soul Gem
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=11375; -- Wanted: Murmur's Whisper
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11376; -- Wanted: Malicious Instructors
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11377; -- Revenge is Tasty
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=11378; -- Wanted: The Epoch Hunter's Head
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11379; -- Super Hot Stew
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11380; -- Manalicious
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11381; -- Soup for the Soul
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=11382; -- Wanted: Aeonus's Hourglass
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11383; -- Wanted: Rift Lords
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=11384; -- Wanted: A Warp Splinter Clipping
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11385; -- Wanted: Sunseeker Channelers
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=11386; -- Wanted: Pathaleon's Projector
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11387; -- Wanted: Tempest-Forge Destroyers
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=11388; -- Wanted: The Scroll of Skyriss
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11389; -- Wanted: Arcatraz Sentinels
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11390; -- I've Got a Flying Machine!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15000 WHERE `Id`=11399; -- Bring Down Those Shields
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11408; -- Bark for T'chali's Voodoo Brewery!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11409; -- Now This is Ram Racing... Almost.
UPDATE `quest_template` SET `RewardOrRequiredMoney`=350 WHERE `Id`=11412; -- There and Back Again
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11415; -- Brother Betrayers
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11417; -- Eyes of the Eagle
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11426; -- Locating the Mechanism
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1200 WHERE `Id`=11427; -- Meet Lieutenant Icehammer...
UPDATE `quest_template` SET `RewardOrRequiredMoney`=9400, `RewardMoneyMaxLevel`=16550 WHERE `Id`=11441; -- Brewfest!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=9400, `RewardMoneyMaxLevel`=16550 WHERE `Id`=11446; -- Brewfest!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1200 WHERE `Id`=11448; -- The Explorers' League Outpost
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3750 WHERE `Id`=11451; -- Alicia's Poem
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11455; -- The Fragrance of Money
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11456; -- Feeding the Survivors
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11458; -- Avenge Iskaal
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6000 WHERE `Id`=11459; -- Zeh'gehn Sez
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9000 WHERE `Id`=11466; -- Jack Likes His Drink
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15000 WHERE `Id`=11467; -- Dead Man's Debt
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15000 WHERE `Id`=11471; -- The Jig is Up
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000 WHERE `Id`=11472; -- The Way to His Heart...
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3000 WHERE `Id`=11473; -- A Traitor Among Us
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3000 WHERE `Id`=11476; -- A Carver and a Croaker
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3000 WHERE `Id`=11480; -- Meet Number Two
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=780 WHERE `Id`=11482; -- Duty Calls
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1200 WHERE `Id`=11489; -- Iron Rune Constructs and You: Collecting Data
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11490; -- The Scryer's Scryer
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=11499; -- Wanted: The Signet Ring of Prince Kael'thas
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11500; -- Wanted: Sisters of Torment
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11502; -- In Defense of Halaa
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11503; -- Enemies, Old and New
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11504; -- The Dead Rise!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11505; -- Spirits of Auchindoun
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11506; -- Spirits of Auchindoun
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6000 WHERE `Id`=11507; -- Elder Atuik and Kamagua
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1200 WHERE `Id`=11508; -- Grezzix Spindlesnap
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3000 WHERE `Id`=11509; -- Street "Cred"
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11510; -- "Scoodles"
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=11514; -- Maintaining the Sunwell Portal
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11515; -- Blood for Blood
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=11516; -- Blast the Gateway
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9600 WHERE `Id`=11521; -- Rediscovering Your Roots
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=11523; -- Arm the Wards!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=11525; -- Further Conversions
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=11526; -- The Missing Magistrix
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9000 WHERE `Id`=11527; -- Mutiny on the Mercy
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9000 WHERE `Id`=11529; -- Sorlof's Booty
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11530; -- The Shield of the Aesirites
UPDATE `quest_template` SET `RequiredNpcOrGoCount1`=1 WHERE `Id`=11532; -- Distraction at the Dead Scar
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=11533; -- The Air Strikes Must Continue
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11536; -- Don't Stop Now....
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=11537; -- The Battle Must Go On
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11540; -- Crush the Dawnblade
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11541; -- Disrupt the Greengill Coast
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11543; -- Keeping the Enemy at Bay
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9600 WHERE `Id`=11544; -- Ata'mal Armaments
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11546; -- Open for Business
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11547; -- Know Your Ley Lines
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1200 WHERE `Id`=11562; -- I'm Being Blackmailed By My Cleaner
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11563; -- Grmmurggll Mrllggrl Glrggl!!!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15300 WHERE `Id`=11566; -- Surrender... Not!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11571; -- Learning to Communicate
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=18000 WHERE `Id`=11572; -- Return to Atuik
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6000 WHERE `Id`=11574; -- Too Close For Comfort
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11580; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11581; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9000 WHERE `Id`=11582; -- Monitoring the Rift: Sundered Chasm
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11583; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11584; -- Honor the Flame
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11587; -- Prison Break
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11590; -- Abduction
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11598; -- Taking Back Mightstone Quarry
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11602; -- Cutting Off the Source
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=11605; -- The Honored Ancestors
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=11612; -- Reclaiming the Quarry
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3000 WHERE `Id`=11616; -- Message to Hellscream
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=11617; -- Hampering Their Escape
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3000 WHERE `Id`=11618; -- Reinforcements Incoming...
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11619; -- Gamel the Cruel
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11625; -- The Trident of Naz'jan
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=11627; -- Boiling Point
UPDATE `quest_template` SET `RequiredNpcOrGoCount1`=1 WHERE `Id`=11628; -- Shrouds of the Scourge
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1200 WHERE `Id`=11636; -- Magic Carpet Ride
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9000 WHERE `Id`=11648; -- The Art of Persuasion
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11650; -- Just a Few More Things...
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11653; -- Hah... You're Not So Big Now!
UPDATE `quest_template` SET `RequiredNpcOrGoCount1`=1 WHERE `Id`=11655; -- Into the Mist
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11656; -- Burn in Effigy
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11657; -- Torch Catching
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11661; -- Orabus the Helmsman
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15300 WHERE `Id`=11670; -- It Was The Orcs, Honest!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11671; -- A Race Against Time
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1200 WHERE `Id`=11672; -- Enlistment Day
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15300 WHERE `Id`=11673; -- Get Me Outa Here!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11685; -- The Heart of the Elements
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11686; -- The Warsong Farms
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1200 WHERE `Id`=11692; -- Check in With Bixie
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11695; -- The Horn of Elemental Fury
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11697; -- Rats, Tinky Went into the Necropolis!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1200 WHERE `Id`=11700; -- Let Bixie Know
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15000 WHERE `Id`=11701; -- Back to the Airstrip
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1200 WHERE `Id`=11704; -- King Mrgl-Mrgl
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1200 WHERE `Id`=11708; -- The Mechagnomes
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11710; -- What's the Matter with the Transmatter?
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9000 WHERE `Id`=11711; -- Coward Delivery... Under 30 Minutes or it's Free
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11712; -- Re-Cursive
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11713; -- Scouting the Sinkholes
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11721; -- Gammothra the Tormentor
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1200 WHERE `Id`=11725; -- Finding Pilot Tailspin
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11726; -- A Little Bit of Spice
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1200 WHERE `Id`=11727; -- A Time for Heroes
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11728; -- Lupus Pupus
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1200 WHERE `Id`=11729; -- The Ultrasonic Screwdriver
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15000 WHERE `Id`=11730; -- Master and Servant
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11731; -- Torch Tossing
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11732; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9000 WHERE `Id`=11733; -- Traversing the Rift
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11734; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11735; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11736; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11737; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11738; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11739; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11740; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11741; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11742; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11743; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11744; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11745; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11746; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11747; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11749; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11750; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11751; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11752; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11753; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11754; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11755; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11756; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11757; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11758; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11759; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11760; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11761; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11762; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11763; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11764; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11765; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11766; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11767; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11768; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11769; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11770; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11771; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=44000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11772; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11773; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=44000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11774; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11775; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11776; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11777; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11778; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11779; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11780; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11781; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11782; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11783; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11784; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11786; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11787; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6000 WHERE `Id`=11790; -- Cultists Among Us
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1200 WHERE `Id`=11791; -- Notify Arlos
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15300 WHERE `Id`=11798; -- The Gearmaster
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11799; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11800; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11801; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11802; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11803; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11804; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11805; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11806; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11807; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11808; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11809; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11810; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11811; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11812; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11813; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11814; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11815; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11816; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11817; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11818; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11820; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11821; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11822; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11823; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11824; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11825; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11826; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11827; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11828; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11829; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11830; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11831; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11832; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11833; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11834; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11835; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11836; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11837; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11838; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11839; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11840; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11841; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11842; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11843; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11844; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11845; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11846; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11847; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11848; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11849; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11850; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11851; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11852; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11853; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11854; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11855; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11856; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11857; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11858; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11859; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11860; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11862; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=11863; -- Honor the Flame
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=11868; -- The Culler Cometh
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15000 WHERE `Id`=11873; -- Give Fizzcrank the News
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=11875; -- Gaining the Advantage
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15300 WHERE `Id`=11879; -- Kaw the Mammoth Destroyer
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=11880; -- The Multiphase Survey
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9600 WHERE `Id`=11885; -- Adversarial Blood
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=11886; -- Unusual Activity
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1200 WHERE `Id`=11888; -- Ride to Taunka'le Village
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=11891; -- An Innocent Disguise
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11896; -- Weakness to Lightning
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6000 WHERE `Id`=11902; -- Pernicious Evidence
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11903; -- It's Time for Action
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=24000 WHERE `Id`=11905; -- Postponing the Inevitable
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15000 WHERE `Id`=11907; -- The Sub-Chieftains
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9000 WHERE `Id`=11908; -- Reference Material
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=24000 WHERE `Id`=11911; -- Quickening
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11913; -- Take No Chances
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=16550 WHERE `Id`=11915; -- Playing with Fire
UPDATE `quest_template` SET `RequiredNpcOrGoCount2`=10 WHERE `Id`=11918; -- Basic Training
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6000 WHERE `Id`=11920; -- Cultists Among Us
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11921; -- More Torch Tossing
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11922; -- Torch Tossing
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11923; -- Torch Catching
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11924; -- More Torch Catching
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11925; -- More Torch Catching
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11926; -- More Torch Tossing
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1200 WHERE `Id`=11927; -- Word on the Street
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11931; -- Cracking the Code
UPDATE `quest_template` SET `RewardOrRequiredMoney`=71000, `RewardMoneyMaxLevel`=124050 WHERE `Id`=11933; -- Stealing the Exodar's Flame
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=11938; -- Buying Some Time
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11940; -- Drake Hunt
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11941; -- Puzzling...
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11943; -- The Cell
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=11944; -- Surrounded!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=11945; -- Preparing for the Worst
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1200, `Objectives`='Keristrasza vous demande de lui parler quand vous serez $gpret:prete; a preparer la confrontation avec Malygos.$b$bSi vous perdez votre Prison arcanique amelioree, parlez a Raelorasz au Bouclier Transitus.' WHERE `Id`=11946; -- Keristrasza
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=11950; -- Muahit's Wisdom
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11951; -- Bait and Switch
UPDATE `quest_template` SET `RewardOrRequiredMoney`=23500, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11954; -- Striking Back
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11956; -- Finding the Phylactery
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=11957; -- Saragosa's End
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15300 WHERE `Id`=11959; -- Slay Loguhn
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=11960; -- Planning for the Future
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9300 WHERE `Id`=11961; -- Spirits Watch Over Us
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3000 WHERE `Id`=11963; -- Weapons for Farshire
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=16550 WHERE `Id`=11966; -- Incense for the Festival Scorchlings
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6000 WHERE `Id`=11967; -- Mustering the Reds
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=16550 WHERE `Id`=11970; -- The Master of Summer Lore
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=16550 WHERE `Id`=11971; -- The Spinner of Summer Tales
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=11972; -- Shards of Ahune
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=24000 WHERE `Id`=11973; -- Prisoner of War
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=11975; -- Now, When I Grow Up...
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=11978; -- Into the Fold
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=11979; -- The Taunka and the Tauren
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=11980; -- Pride of the Horde
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=11982; -- Raining Down Destruction
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9300 WHERE `Id`=11983; -- Blood Oath of the Horde
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=11985; -- Into the Breach
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=11990; -- Vial of Visions
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=11991; -- Subject to Interpretation
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=11995; -- Your Presence is Required at Stars' Rest
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=11998; -- Softening the Blow
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12000; -- Rifle the Bodies
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12002; -- Brothers in Battle
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15300 WHERE `Id`=12004; -- Prevent the Accord
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15300 WHERE `Id`=12005; -- Prevent the Accord
UPDATE `quest_template` SET `RequiredNpcOrGoCount2`=1 WHERE `Id`=12006; -- Avenge this Atrocity!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9300 WHERE `Id`=12008; -- Agmar's Hammer
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700 WHERE `Id`=12012; -- Inform the Elder
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12016; -- The Bait
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15300 WHERE `Id`=12017; -- Meat on the Hook
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=18300 WHERE `Id`=12019; -- Last Rites
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=12022; -- Chug and Chuck!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12027; -- Mr. Floppy's Perilous Adventure
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12030; -- Elder Mana'loa
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12031; -- Freedom for the Lingering
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15300 WHERE `Id`=12032; -- Conversing With the Depths
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12036; -- From the Depths of Azjol-Nerub
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=24900 WHERE `Id`=12037; -- Search and Rescue
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12038; -- Seared Scourge
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12040; -- An Enemy in Arthas
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9300 WHERE `Id`=12041; -- The Lost Empire
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12042; -- Heart of the Ancients
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12048; -- Scourge Armaments
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12053; -- The Might of the Horde
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12054; -- Deciphering the Journal
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6000 WHERE `Id`=12055; -- A Strange Device
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12060; -- Projections and Plans
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12061; -- Projections and Plans
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12064; -- Chains of the Anub'ar
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12065; -- The Focus on the Beach
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12066; -- The Focus on the Beach
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12067; -- A Letter for Home
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=18600 WHERE `Id`=12069; -- Return of the High Chief
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12070; -- Rallying the Troops
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=12071; -- Attack by Air! 
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12072; -- Blightbeasts be Damned!
UPDATE `quest_template` SET `RequiredNpcOrGoCount2`=1 WHERE `Id`=12073; -- Pounding the Iron
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12075; -- Slim Pickings
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12076; -- Messy Business
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12077; -- Apply This Twice A Day
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=12081; -- Gavrock
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12083; -- Atop the Woodlands
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12084; -- Atop the Woodlands
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12092; -- Strengthen the Ancients
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12093; -- Runes of Compulsion
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12094; -- Latent Power
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=18900 WHERE `Id`=12097; -- Sarathstra, Scourge of the North
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12098; -- Search Indu'le Village
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15600 WHERE `Id`=12099; -- Free at Last
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=12101; -- The Good Doctor...
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12102; -- In Search of the Ruby Lilac
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=12104; -- Return to Soar
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12106; -- Search Indu'le Village
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15300 WHERE `Id`=12110; -- The End of the Line
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12111; -- Where the Wild Things Roam
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=12115; -- Koltira and the Language of Death
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=12117; -- Travel to Moa'ki Harbor
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3000 WHERE `Id`=12119; -- Gaining an Audience
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12120; -- Drak'aguul's Mallet
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12121; -- See You on the Other Side
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3000 WHERE `Id`=12122; -- Gaining an Audience
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=12124; -- Informing the Queen
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=18600 WHERE `Id`=12136; -- The Translated Tome
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15600 WHERE `Id`=12137; -- Chill Out, Mon
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12140; -- All Hail Roanauk!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1200 WHERE `Id`=12141; -- A Diplomatic Mission
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12142; -- Pest Control
UPDATE `quest_template` SET `RequiredNpcOrGoCount2`=1 WHERE `Id`=12143; -- Canyon Chase
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12144; -- Pest Control
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300, `RequiredNpcOrGoCount2`=1 WHERE `Id`=12145; -- Canyon Chase
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12146; -- Disturbing Implications
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12147; -- Disturbing Implications
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12148; -- One of a Kind
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12149; -- Mighty Magnataur
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15600 WHERE `Id`=12150; -- Reclusive Runemaster
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=18600 WHERE `Id`=12151; -- Wanton Warlord
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12152; -- Jin'arrak's End
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=18900 WHERE `Id`=12164; -- Hour of the Worg
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12165; -- An Intriguing Plan
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12167; -- Kill the Cultists
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=12168; -- The Favor of Zangus
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12170; -- Blackriver Brawl
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12173; -- Attunement to Dalaran
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6300 WHERE `Id`=12177; -- Jun'ik's Coverup
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6300 WHERE `Id`=12178; -- Delivery to Krenna
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12188; -- The Forsaken Blight and You: How Not to Die
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12190; -- Say Hello to My Little Friend
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12196; -- From the Ground Up
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12197; -- We Have the Power
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12198; -- ... Or Maybe We Don't
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15600 WHERE `Id`=12199; -- Bringing Down the Iron Thane
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12201; -- The Overseer's Shadow
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12202; -- Cultivating an Image
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12203; -- Loken's Orders
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9300 WHERE `Id`=12210; -- Troll Season!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12212; -- Replenishing the Storehouse
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9300 WHERE `Id`=12215; -- Them or Us!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12216; -- Take Their Rear!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12217; -- Eagle Eyes
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12218; -- Spread the Good Word
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12219; -- The Failed World Tree
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12220; -- A Dark Influence
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9300 WHERE `Id`=12221; -- The Forsaken Blight
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3150 WHERE `Id`=12224; -- The Kor'kron Vanguard!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12226; -- Just Passing Through
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9300 WHERE `Id`=12227; -- Doing Your Duty
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12232; -- Bombard the Ballistae
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12234; -- Need to Know
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=18900 WHERE `Id`=12236; -- Ursoc, the Bear God
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12237; -- Flight of the Wintergarde Defender
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=18900 WHERE `Id`=12238; -- Cleansing Drak'Tharon
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12239; -- The Spy in New Hearthglen
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12240; -- A Means to an End
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12241; -- Destroy the Sapling
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12242; -- Vordrassil's Seeds
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12243; -- Fire Upon the Waters
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12248; -- Vordrassil's Sapling
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12250; -- Vordrassil's Seeds
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12252; -- Torture the Torturer
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12254; -- Without a Prayer
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12255; -- The Thane of Voldrune
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12258; -- The Fate of the Dead
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12260; -- The Perfect Dissemblance
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12263; -- The Best of Intentions
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=12266; -- Tales of Destruction
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15600 WHERE `Id`=12267; -- Neltharion's Flame
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12269; -- Not In Our Mine
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12270; -- Shred the Alliance
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12272; -- The Bleeding Ore
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15300 WHERE `Id`=12273; -- The Denouncement
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12274; -- A Fall From Grace
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12279; -- A Bear of an Appetite
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12280; -- Making Repairs
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=12281; -- Understanding the Scourge War Machine
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12282; -- Imprints on the Past
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12283; -- The Truth Will Out
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12284; -- Keep 'Em on Their Heels
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15300 WHERE `Id`=12285; -- Do Unto Others
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12288; -- Overwhelmed!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12290; -- The Murkweed Elixir
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12291; -- The Forgotten Tale
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12292; -- Local Support
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3150 WHERE `Id`=12293; -- Close the Deal
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6300 WHERE `Id`=12295; -- An Exercise in Diplomacy
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=12298; -- High Commander Halford Wyrmbane
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12299; -- Northern Hospitality
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12303; -- Funding the War Effort
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12307; -- Wolfsbane Root
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=12309; -- Find Durkon!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12310; -- A Swift Response
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3150 WHERE `Id`=12312; -- Secrets of the Scourge
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12315; -- Crush Captain Brightwater!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12317; -- Keep Them at Bay
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12321; -- A Righteous Sermon
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12324; -- Smoke 'Em Out
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3150 WHERE `Id`=12325; -- Into Hostile Territory
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15300 WHERE `Id`=12326; -- Steamtank Surprise
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12328; -- Ruuna's Request
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12372; -- Defending Wyrmrest Temple
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12413; -- Attack on Silverbrook
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12414; -- Mounting Up
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12415; -- The Horse Hollerer
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12416; -- Heated Battle
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12417; -- Return to the Earth
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3150 WHERE `Id`=12422; -- Tactical Clemency
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6300 WHERE `Id`=12424; -- Gorgonna
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3150 WHERE `Id`=12425; -- Ruuna the Blind
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15600 WHERE `Id`=12428; -- The Conquest Pit: Mad Furbolg Fighting
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15600 WHERE `Id`=12429; -- The Conquest Pit: Blood and Metal
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=18900 WHERE `Id`=12430; -- The Conquest Pit: Death Is Likely
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=18900 WHERE `Id`=12431; -- The Conquest Pit: Final Showdown
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12432; -- Riding the Red Rocket
UPDATE `quest_template` SET `RewardCurrencyId1`=392 WHERE `Id`=12434; -- Always Seeking Solvent
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=12435; -- Report to Lord Afrasastrasz
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15600 WHERE `Id`=12438; -- Wanted: Kreug Oathbreaker
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=12439; -- A Disturbance In The West
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15600 WHERE `Id`=12441; -- Wanted: High Shaman Bloodpaw
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15600 WHERE `Id`=12442; -- Wanted: Onslaught Commander Iustus
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12444; -- Blackriver Skirmish
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12448; -- Heated Battle
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12449; -- Return to the Earth
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15600 WHERE `Id`=12450; -- Through Fields of Flame
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3150 WHERE `Id`=12451; -- Onward to Camp Oneqwah
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12458; -- Seeds of the Lashers
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=12460; -- Report to the Ruby Dragonshrine
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=12461; -- Report to the Ruby Dragonshrine
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12462; -- Breaking Off A Piece
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15300 WHERE `Id`=12464; -- My Old Enemy
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3150 WHERE `Id`=12466; -- Chasing Icestorm: The 7th Legion Front
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=12469; -- Return to Sender
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300, `RequiredNpcOrGoCount1`=1 WHERE `Id`=12473; -- An End And A Beginning
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12476; -- The Return of the Crusade?
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12300 WHERE `Id`=12477; -- The Path of Redemption
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15000 WHERE `Id`=12481; -- Adding Injury to Insult
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1200 WHERE `Id`=12486; -- To Bor'gorok Outpost, Quickly!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=12487; -- To Conquest Hold, But Be Careful!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=12491; -- Direbrew's Dire Brew
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=12492; -- Direbrew's Dire Brew
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=12496; -- Audience With The Dragon Queen
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15600 WHERE `Id`=12498; -- On Ruby Wings
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=18600 WHERE `Id`=12499; -- Return To Angrathar
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6300 WHERE `Id`=12502; -- Troll Patrol: High Standards
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=25500 WHERE `Id`=12503; -- Defend the Stand
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=25500 WHERE `Id`=12504; -- Argent Crusade, We Are Leaving!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2520 WHERE `Id`=12505; -- New Orders for Sergeant Stackhammer
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=25500 WHERE `Id`=12506; -- Trouble at the Altar of Sseratus
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6300 WHERE `Id`=12507; -- Strange Mojo
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6300 WHERE `Id`=12509; -- Troll Patrol: Intestinal Fortitude
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3150 WHERE `Id`=12511; -- The Hills Have Us
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=25500 WHERE `Id`=12514; -- Mushroom Mixer
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7200 WHERE `Id`=12515; -- Nice Hat...
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6300 WHERE `Id`=12519; -- Troll Patrol: Whatdya Want, a Medal?
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2520 WHERE `Id`=12521; -- Where in the World is Hemet Nesingwary?
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=18900 WHERE `Id`=12522; -- Need an Engine, Take an Engine
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=25500 WHERE `Id`=12523; -- Have a Part, Give a Part
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=25500 WHERE `Id`=12524; -- Venture Co. Misadventure
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=25500 WHERE `Id`=12525; -- Wipe That Grin Off His Face
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2520 WHERE `Id`=12526; -- Rhino Mastery: The Chase
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=51300 WHERE `Id`=12529; -- The Ape Hunter's Slave
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=51300 WHERE `Id`=12537; -- Lightning Definitely Strikes Twice
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=51300 WHERE `Id`=12538; -- The Mist Isn't Listening
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=51300 WHERE `Id`=12539; -- Hoofing It
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=51300 WHERE `Id`=12540; -- Just Following Orders
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6300 WHERE `Id`=12541; -- Troll Patrol: The Alchemist's Apprentice
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3150 WHERE `Id`=12542; -- The Call Of The Crusade
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=25500 WHERE `Id`=12543; -- An Offering for Soo-rahm
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12545; -- The Cleansing Of Jintha'kalar
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=25500 WHERE `Id`=12550; -- Dreadsaber Mastery: Stalking the Prey
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=25500 WHERE `Id`=12552; -- Death to the Necromagi
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=25500 WHERE `Id`=12553; -- Skimmer Spinnerets
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=31800 WHERE `Id`=12554; -- Malas the Corrupter
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=31800 WHERE `Id`=12556; -- Rhino Mastery: The Kill
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=25500 WHERE `Id`=12558; -- Dreadsaber Mastery: Ready to Pounce
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=38400 WHERE `Id`=12559; -- Powering the Waygate - The Maker's Perch
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=25500 WHERE `Id`=12560; -- Crocolisk Mastery: The Plan
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=64200 WHERE `Id`=12561; -- An Issue of Trust
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6300 WHERE `Id`=12564; -- Troll Patrol: Something for the Pain
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=25500 WHERE `Id`=12565; -- The Blessing of Zim'Abwa
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6300 WHERE `Id`=12568; -- Troll Patrol: Done to Death
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=25500 WHERE `Id`=12569; -- Crocolisk Mastery: The Ambush
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=51300 WHERE `Id`=12571; -- Make the Bad Snake Go Away
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=51300 WHERE `Id`=12572; -- Gods like Shiny Things
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=25800 WHERE `Id`=12582; -- Frenzyheart Champion
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6300 WHERE `Id`=12585; -- Troll Patrol: Creature Comforts
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=25500 WHERE `Id`=12587; -- Troll Patrol
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6300 WHERE `Id`=12588; -- Troll Patrol: Can You Dig It?
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6300 WHERE `Id`=12591; -- Troll Patrol: Throwing Down
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=480 WHERE `Id`=12593; -- In Service Of The Lich King
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6300 WHERE `Id`=12594; -- Troll Patrol: Couldn't Care Less
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=25500 WHERE `Id`=12596; -- Pa'Troll
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=38100 WHERE `Id`=12604; -- Congratulations!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9900 WHERE `Id`=12619; -- The Emblazoned Runeblade
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100 WHERE `Id`=12623; -- To the Witch Doctor
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=38100 WHERE `Id`=12624; -- It Could Be Anywhere!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=51300 WHERE `Id`=12627; -- Breaking Through Jin'Alai
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12629; -- You Can Run, But You Can't Hide
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12630; -- Kickin' Nass and Takin' Manes
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=51300 WHERE `Id`=12632; -- But First My Offspring
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=25500 WHERE `Id`=12634; -- Some Make Lemonade, Some Make Liquor
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=480 WHERE `Id`=12636; -- The Eye Of Acherus
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6300 WHERE `Id`=12637; -- Near Miss
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=51300 WHERE `Id`=12640; -- Sealing the Rifts
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=12641; -- Death Comes From On High
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12643; -- Silver Lining
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=18900 WHERE `Id`=12644; -- Still At It
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=51300 WHERE `Id`=12646; -- My Prophet, My Enemy
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=64200 WHERE `Id`=12647; -- An End to the Suffering
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9300 WHERE `Id`=12648; -- Dressing Down
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9300 WHERE `Id`=12649; -- Suit Up!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=25800 WHERE `Id`=12653; -- Back to Har'koa
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=12657; -- The Might Of The Scourge
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=51300 WHERE `Id`=12659; -- Scalps!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12661; -- Infiltrating Voltarus
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=51300 WHERE `Id`=12665; -- I Sense a Disturbance
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=51300 WHERE `Id`=12666; -- Preparations for the Underworld
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=25800 WHERE `Id`=12667; -- Seek the Wind Serpent Goddess
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=51300 WHERE `Id`=12668; -- Foundation for Revenge
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12669; -- So Far, So Bad
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=480 WHERE `Id`=12670; -- The Scarlet Harvest
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=51300 WHERE `Id`=12671; -- Reconnaissance Flight
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=51300 WHERE `Id`=12672; -- Setting the Stage
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=64200 WHERE `Id`=12674; -- Hell Hath a Fury
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=25800 WHERE `Id`=12675; -- One Last Thing
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12676; -- Sabotage
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12677; -- Hazardous Materials
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=12678; -- If Chaos Drives, Let Suffering Hold The Reins
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=12679; -- Tonight We Dine In Havenshire
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=12680; -- Grand Theft Palomino
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=51300 WHERE `Id`=12683; -- Burning to Help
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=51300 WHERE `Id`=12684; -- Blood of a Dead God
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=25800 WHERE `Id`=12689; -- Hand of the Oracles
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=25800 WHERE `Id`=12692; -- Return of the Lich Hunter
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12900 WHERE `Id`=12696; -- Aerial Surveillance
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=51300 WHERE `Id`=12702; -- Chicken Party!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=97200 WHERE `Id`=12703; -- Kartak's Rampage
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=51300 WHERE `Id`=12704; -- Appeasing the Great Rain Stone
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=97200 WHERE `Id`=12705; -- Will of the Titans
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6300 WHERE `Id`=12710; -- Disclosure
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=38100 WHERE `Id`=12713; -- Betrayal
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=64200 WHERE `Id`=12721; -- Rampage
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15000 WHERE `Id`=12728; -- Monitoring the Rift: Winterfin Cavern
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=116700 WHERE `Id`=12730; -- Convocation at Zol'Heb
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=12733; -- Death's Challenge
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=97200 WHERE `Id`=12759; -- Tools of War
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=97200, `RequiredSourceItemCount3`=1 WHERE `Id`=12760; -- Secret Strength of the Frenzyheart
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=97200 WHERE `Id`=12761; -- Mastery of the Crystals
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=97200 WHERE `Id`=12762; -- Power of the Great Ones
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=12767; -- Speak with your Ambassador
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=12769; -- The Steward of Wyrmrest Temple
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=12770; -- Reallocating Resources
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=12785; -- Orgrimmar
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=12788; -- Silvermoon
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=12789; -- Into the Breach!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=12790; -- Learning to Leave and Return: the Magical Way
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=12791; -- The Magical Kingdom of Dalaran
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=12792; -- First Things First
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=12794; -- The Magical Kingdom of Dalaran
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12799; -- Siphoning the Spirits
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12802; -- My Heart is in Your Hands
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=77700 WHERE `Id`=12819; -- Just Around the Corner
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=77700 WHERE `Id`=12820; -- A Delicate Touch
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=77700 WHERE `Id`=12821; -- Opening the Backdoor
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=77700 WHERE `Id`=12822; -- Know No Fear
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=77700 WHERE `Id`=12823; -- A Flawless Plan
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7800 WHERE `Id`=12824; -- Demolitionist Extraordinaire
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7800 WHERE `Id`=12826; -- Slightly Unstable
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=77700 WHERE `Id`=12828; -- Ample Inspiration
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=77700 WHERE `Id`=12829; -- Moving In
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=77700 WHERE `Id`=12830; -- Ore Repossession
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=77700 WHERE `Id`=12832; -- Bitter Departure
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=77700 WHERE `Id`=12833; -- Overstock
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=77700 WHERE `Id`=12836; -- Expression of Gratitude
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104700 WHERE `Id`=12841; -- The Crone's Bargain
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=12842; -- Runeforging: Preparation For Battle
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=39000 WHERE `Id`=12846; -- Leave No Goblin Behind
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=12848; -- The Endless Hunger
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=480 WHERE `Id`=12850; -- Report To Scourge Commander Thalanor
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7800 WHERE `Id`=12853; -- Luxurious Getaway!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15600 WHERE `Id`=12857; -- Wanted: Ragemane's Flipper
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7800 WHERE `Id`=12862; -- When All Else Fails
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7800 WHERE `Id`=12863; -- Offering Thanks
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=77700 WHERE `Id`=12864; -- Missing Scouts
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=77700 WHERE `Id`=12865; -- Loyal Companions
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=97200 WHERE `Id`=12868; -- Sirana Iceshriek
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=77700 WHERE `Id`=12869; -- Pushed Too Far
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=77700 WHERE `Id`=12870; -- Ancient Relics
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=77700 WHERE `Id`=12882; -- Ancient Relics
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12883; -- Orders From Drakuru
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3150 WHERE `Id`=12884; -- The Ebon Watch
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3150 WHERE `Id`=12894; -- Crusader Forward Camp
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=25500 WHERE `Id`=12903; -- That's What Friends Are For...
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=31800 WHERE `Id`=12904; -- Light Won't Grant Me Vengeance
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=10500 WHERE `Id`=12905; -- Mildred the Cruel
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=52200 WHERE `Id`=12906; -- Discipline
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=52200 WHERE `Id`=12907; -- Examples to be Made
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=26100 WHERE `Id`=12908; -- A Certain Prisoner
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=25500 WHERE `Id`=12914; -- Gymer's Salvation
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=12916; -- Our Only Hope
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=38100 WHERE `Id`=12919; -- The Storm King's Vengeance
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=10500 WHERE `Id`=12921; -- A Change of Scenery
UPDATE `quest_template` SET `NextQuestIdChain`=0 WHERE `Id`=12930; -- Rare Earth
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=77100 WHERE `Id`=12932; -- The Amphitheater of Anguish: Yggdras!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=77100 WHERE `Id`=12954; -- The Amphitheater of Anguish: Yggdras!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=12958; -- Shipment: Blood Jade Amulet 
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=12959; -- Shipment: Glowing Ivory Figurine
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=12960; -- Shipment: Wicked Sun Brooch
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=12961; -- Shipment: Intricate Bone Figurine
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=12962; -- Shipment: Bright Armor Relic
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=12963; -- Shipment: Shifting Sun Curio 
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100 WHERE `Id`=12974; -- The Champion's Call!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=77700 WHERE `Id`=13008; -- Scourge Tactics
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7800 WHERE `Id`=13036; -- Honor Above All Else
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=77700 WHERE `Id`=13039; -- Defending The Vanguard
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=77700 WHERE `Id`=13040; -- Curing The Incurable
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=13041; -- Finish the Shipment
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7800 WHERE `Id`=13044; -- If There Are Survivors...
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=97200 WHERE `Id`=13045; -- Into The Wild Green Yonder
UPDATE `quest_template` SET `RequiredNpcOrGoCount1`=1 WHERE `Id`=13049; -- The Hero's Arms
UPDATE `quest_template` SET `RequiredNpcOrGoCount1`=1 WHERE `Id`=13050; -- Veranus
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7800 WHERE `Id`=13060; -- When All Else Fails
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=10500 WHERE `Id`=13061; -- Prepare for Glory
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7800 WHERE `Id`=13070; -- A Cold Front Approaches
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=116700 WHERE `Id`=13086; -- The Last Line Of Defense
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=13089; -- Northern Cooking
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=13090; -- Northern Cooking
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=24000 WHERE `Id`=13094; -- Have They No Shame?
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=24000 WHERE `Id`=13095; -- Have They No Shame?
UPDATE `quest_template` SET `RewardOrRequiredMoney`=39000, `RewardMoneyMaxLevel`=124050 WHERE `Id`=13100; -- Infused Mushroom Meatloaf
UPDATE `quest_template` SET `RewardOrRequiredMoney`=71000, `RewardMoneyMaxLevel`=124050 WHERE `Id`=13101; -- Convention at the Legerdemain
UPDATE `quest_template` SET `RewardOrRequiredMoney`=39000, `RewardMoneyMaxLevel`=124050 WHERE `Id`=13102; -- Sewer Stew
UPDATE `quest_template` SET `RewardOrRequiredMoney`=39000, `RewardMoneyMaxLevel`=124050 WHERE `Id`=13103; -- Cheese for Glowergold
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7800 WHERE `Id`=13105; -- Once More Unto The Breach, Hero
UPDATE `quest_template` SET `RewardOrRequiredMoney`=39000, `RewardMoneyMaxLevel`=124050 WHERE `Id`=13107; -- Mustard Dogs!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=77700 WHERE `Id`=13110; -- The Restless Dead
UPDATE `quest_template` SET `RewardOrRequiredMoney`=71000, `RewardMoneyMaxLevel`=124050 WHERE `Id`=13112; -- Infused Mushroom Meatloaf
UPDATE `quest_template` SET `RewardOrRequiredMoney`=71000, `RewardMoneyMaxLevel`=124050 WHERE `Id`=13113; -- Convention at the Legerdemain
UPDATE `quest_template` SET `RewardOrRequiredMoney`=71000, `RewardMoneyMaxLevel`=124050 WHERE `Id`=13114; -- Sewer Stew
UPDATE `quest_template` SET `RewardOrRequiredMoney`=71000, `RewardMoneyMaxLevel`=124050 WHERE `Id`=13115; -- Cheese for Glowergold
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=77700 WHERE `Id`=13118; -- The Purging Of Scourgeholme
UPDATE `quest_template` SET `RequiredSourceItemCount2`=1 WHERE `Id`=13121; -- Through the Eye
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=77700 WHERE `Id`=13122; -- The Scourgestone
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=156900 WHERE `Id`=13125; -- The Air Stands Still
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=24900 WHERE `Id`=13129; -- Head Games
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104700 WHERE `Id`=13130; -- The Stone That Started A Revolution
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104700 WHERE `Id`=13135; -- It Could Kill Us All
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104700 WHERE `Id`=13139; -- Into The Frozen Heart Of Northrend
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104700 WHERE `Id`=13141; -- The Battle For Crusaders' Pinnacle
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RequiredSourceItemCount2`=1 WHERE `Id`=13148; -- Necklace Repair
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=156900 WHERE `Id`=13157; -- The Crusaders' Pinnacle
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=50700 WHERE `Id`=13187; -- The Faceless Ones
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=24000 WHERE `Id`=13206; -- Disarmament
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=26100 WHERE `Id`=13225; -- The Skybreaker
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=19500 WHERE `Id`=13226; -- Judgment Day Comes!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=19500 WHERE `Id`=13227; -- Judgment Day Comes!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4350 WHERE `Id`=13408; -- Hellfire Fortifications
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4350 WHERE `Id`=13410; -- Hellfire Fortifications
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4350 WHERE `Id`=13411; -- Hellfire Fortifications
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=78600 WHERE `Id`=13422; -- Maintaining Discipline
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=13430; -- Trial of the Naaru: Magtheridon
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=13431; -- The Cudgel of Kar'desh
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=13432; -- The Vials of Eternity
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=13440; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=13441; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=13442; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=13443; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=13444; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=13445; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=13446; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=13447; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=13449; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=13450; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=13451; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=13453; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=13454; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=13455; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=13457; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=13458; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=13476; -- For Great Honor
UPDATE `quest_template` SET `RewardOrRequiredMoney`=82000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=13478; -- Concerted Efforts
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=13479; -- The Great Egg Hunt
UPDATE `quest_template` SET `RewardOrRequiredMoney`=1500, `RewardMoneyMaxLevel`=165400 WHERE `Id`=13480; -- The Great Egg Hunt
UPDATE `quest_template` SET `RewardOrRequiredMoney`=800, `RewardMoneyMaxLevel`=16550 WHERE `Id`=13484; -- Spring Collectors
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=13485; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=13486; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=13489; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=13490; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=13491; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=13492; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=13493; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=13494; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=13495; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=13496; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=13497; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=13498; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=13499; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=13500; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=13502; -- A Tisket, a Tasket, a Noblegarden Basket
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=13503; -- A Tisket, a Tasket, a Noblegarden Basket
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=660 WHERE `Id`=13582; -- Elune's Fire
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720 WHERE `Id`=13584; -- Calming the Earth
UPDATE `quest_template` SET `NextQuestIdChain`=0 WHERE `Id`=13593; -- Valiant Of Stormwind
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1020 WHERE `Id`=13594; -- Don't Forget the Horde
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1020 WHERE `Id`=13595; -- Of Their Own Design
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1020 WHERE `Id`=13602; -- Naga of the Strand
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=90 WHERE `Id`=13617; -- West to the Strand
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=240 WHERE `Id`=13623; -- Delivery for Orendil
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1020 WHERE `Id`=13624; -- A Squad of Your Own
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1020 WHERE `Id`=13626; -- Respect for the Fallen
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1020 WHERE `Id`=13630; -- The Reason Why
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1020 WHERE `Id`=13632; -- Rear Guard Duty
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1020 WHERE `Id`=13642; -- Bathed in Light
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1320 WHERE `Id`=13644; -- That Which Has Risen
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=270 WHERE `Id`=13645; -- To Raene Wolfrunner
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=120 WHERE `Id`=13646; -- Astranaar Bound
UPDATE `quest_template` SET `RequiredSourceItemCount2`=1 WHERE `Id`=13665; -- The Grand Melee
UPDATE `quest_template` SET `RequiredSourceItemCount4`=1 WHERE `Id`=13677; -- Learning The Reins
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1020 WHERE `Id`=13683; -- Stopping the Rituals
UPDATE `quest_template` SET `RequiredSourceItemCount3`=1 WHERE `Id`=13699; -- The Valiant's Challenge
UPDATE `quest_template` SET `RequiredNpcOrGoCount1`=1 WHERE `Id`=13710; -- Valiant Of Undercity
UPDATE `quest_template` SET `RequiredSourceItemCount3`=1 WHERE `Id`=13713; -- The Valiant's Challenge
UPDATE `quest_template` SET `RequiredSourceItemCount3`=1 WHERE `Id`=13723; -- The Valiant's Challenge
UPDATE `quest_template` SET `RequiredSourceItemCount3`=1 WHERE `Id`=13724; -- The Valiant's Challenge
UPDATE `quest_template` SET `RequiredSourceItemCount3`=1 WHERE `Id`=13725; -- The Valiant's Challenge
UPDATE `quest_template` SET `RequiredSourceItemCount3`=1 WHERE `Id`=13726; -- The Valiant's Challenge
UPDATE `quest_template` SET `RequiredSourceItemCount3`=1 WHERE `Id`=13727; -- The Valiant's Challenge
UPDATE `quest_template` SET `RequiredSourceItemCount3`=1 WHERE `Id`=13728; -- The Valiant's Challenge
UPDATE `quest_template` SET `RequiredSourceItemCount3`=1 WHERE `Id`=13729; -- The Valiant's Challenge
UPDATE `quest_template` SET `RequiredSourceItemCount3`=1 WHERE `Id`=13731; -- The Valiant's Challenge
UPDATE `quest_template` SET `RequiredSourceItemCount2`=1 WHERE `Id`=13745; -- The Grand Melee
UPDATE `quest_template` SET `RequiredSourceItemCount2`=1 WHERE `Id`=13750; -- The Grand Melee
UPDATE `quest_template` SET `RequiredSourceItemCount2`=1 WHERE `Id`=13756; -- The Grand Melee
UPDATE `quest_template` SET `RequiredSourceItemCount2`=1 WHERE `Id`=13761; -- The Grand Melee
UPDATE `quest_template` SET `RequiredSourceItemCount2`=1 WHERE `Id`=13767; -- The Grand Melee
UPDATE `quest_template` SET `RequiredSourceItemCount2`=1 WHERE `Id`=13772; -- The Grand Melee
UPDATE `quest_template` SET `RequiredSourceItemCount2`=1 WHERE `Id`=13777; -- The Grand Melee
UPDATE `quest_template` SET `RequiredSourceItemCount2`=1 WHERE `Id`=13782; -- The Grand Melee
UPDATE `quest_template` SET `RequiredSourceItemCount2`=1 WHERE `Id`=13787; -- The Grand Melee
UPDATE `quest_template` SET `RequiredSourceItemCount2`=1 WHERE `Id`=13790; -- Among the Champions
UPDATE `quest_template` SET `RequiredSourceItemCount2`=1 WHERE `Id`=13793; -- Among the Champions
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=13796; -- The Forest Heart
UPDATE `quest_template` SET `RequiredSourceItemCount2`=1 WHERE `Id`=13811; -- Among the Champions
UPDATE `quest_template` SET `RequiredSourceItemCount2`=1 WHERE `Id`=13814; -- Among the Champions
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1080 WHERE `Id`=13815; -- Making Stumps
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=13833; -- Blood Is Thicker
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=13836; -- Disarmed!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1380 WHERE `Id`=13842; -- Dread Head Redemption
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1140 WHERE `Id`=13849; -- Astranaar's Burning!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4500 WHERE `Id`=13850; -- Toxic Tolerance
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1380 WHERE `Id`=13853; -- Return Fire
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1140 WHERE `Id`=13867; -- Culling the Furbolg Threat
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1140 WHERE `Id`=13868; -- Corrupting Influence?
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1020 WHERE `Id`=13869; -- Recover the Remains
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=120 WHERE `Id`=13872; -- Worgen Wisdom
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1140 WHERE `Id`=13874; -- A Not-So-Charmed Life
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1440 WHERE `Id`=13876; -- Too Far Gone
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=840 WHERE `Id`=13882; -- The Seeds of Life
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1440 WHERE `Id`=13886; -- Vortex
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1440 WHERE `Id`=13900; -- The Offering to Azshara
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=13906; -- They Grow Up So Fast
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1200 WHERE `Id`=13913; -- They Took Our Gnomes
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=13919; -- A Trip to the Moonwell
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=270 WHERE `Id`=13921; -- He Who Would Be Forgiven
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1140 WHERE `Id`=13922; -- In the Hands of the Perverse
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1380 WHERE `Id`=13924; -- All's Well
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=16550 WHERE `Id`=13926; -- Little Orphan Roo Of The Oracles
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=16550 WHERE `Id`=13927; -- Little Orphan Kekek Of The Wolvar
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1140 WHERE `Id`=13928; -- Recover the Fallen
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=13929; -- The Biggest Tree Ever!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=13930; -- Home Of The Bear-Men
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=13933; -- The Bronze Dragonshrine
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=13934; -- The Bronze Dragonshrine
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1380 WHERE `Id`=13935; -- Defend the Tree!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=13937; -- A Trip To The Wonderworks
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=13950; -- Playmates!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=13951; -- Playmates!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=13954; -- The Dragon Queen
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=13956; -- Meeting a Great One
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700 WHERE `Id`=13959; -- Back To The Orphanage
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=13961; -- Drag it Out of Them
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=300 WHERE `Id`=13964; -- To the Spire
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=300 WHERE `Id`=13965; -- Check in on the Edunes
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1200 WHERE `Id`=13979; -- The Goblin Braintrust
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1200 WHERE `Id`=13981; -- They Set Them Up The Bomb!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=13982; -- In a Bind
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1200 WHERE `Id`=13985; -- Clear the Shrine
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1620 WHERE `Id`=13989; -- King of the Foulweald
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=16550 WHERE `Id`=14022; -- Pilgrim's Bounty
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700 WHERE `Id`=14024; -- Pumpkin Pie
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=16550 WHERE `Id`=14036; -- Pilgrim's Bounty
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700 WHERE `Id`=14037; -- Spice Bread Stuffing
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=14039; -- Home of the Kaldorei
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700 WHERE `Id`=14040; -- Pumpkin Pie
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700 WHERE `Id`=14041; -- Cranberry Chutney
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700 WHERE `Id`=14048; -- Can't Get Enough Turkey
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700 WHERE `Id`=14051; -- Don't Forget The Stuffing!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=124050 WHERE `Id`=14058; -- She Says Potato
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700 WHERE `Id`=14059; -- We're Out of Cranberry Chutney Again?
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700 WHERE `Id`=14060; -- Easy As Pie
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700 WHERE `Id`=14061; -- Can't Get Enough Turkey
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700 WHERE `Id`=14062; -- Don't Forget The Stuffing!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700 WHERE `Id`=14065; -- Sharing a Bountiful Feast
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=570 WHERE `Id`=14130; -- Friends Come In All Colors
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=780 WHERE `Id`=14131; -- A Little Pick-me-up
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=780 WHERE `Id`=14132; -- That's Just Rude!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=14146; -- Defend the Gates!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=14151; -- Cardinal Ruby
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=660 WHERE `Id`=14155; -- Arborcide
UPDATE `quest_template` SET `RewardOrRequiredMoney`=71000, `RewardMoneyMaxLevel`=248050 WHERE `Id`=14178; -- Call to Arms: Arathi Basin
UPDATE `quest_template` SET `NextQuestIdChain`=14188, `RewardMoneyMaxLevel`=360 WHERE `Id`=14184; -- My Time Has Passed
UPDATE `quest_template` SET `NextQuestIdChain`=14189 WHERE `Id`=14188; -- Avenge Furien!
UPDATE `quest_template` SET `NextQuestIdChain`=14191 WHERE `Id`=14189; -- Translation
UPDATE `quest_template` SET `NextQuestIdChain`=14360, `RewardMoneyMaxLevel`=1500 WHERE `Id`=14191; -- Furien's Footsteps
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1500 WHERE `Id`=14193; -- Nothing a Couple of Melons Won't Fix
UPDATE `quest_template` SET `NextQuestIdChain`=14196 WHERE `Id`=14195; -- All Becoming Clearer
UPDATE `quest_template` SET `NextQuestIdChain`=14198, `RewardMoneyMaxLevel`=1500 WHERE `Id`=14196; -- Firestarter
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=14215; -- Memories of the Dead
UPDATE `quest_template` SET `NextQuestIdChain`=14225 WHERE `Id`=14223; -- Peace of Mind
UPDATE `quest_template` SET `NextQuestIdChain`=14227 WHERE `Id`=14225; -- You'll Know It When You See It
UPDATE `quest_template` SET `NextQuestIdChain`=14254 WHERE `Id`=14247; -- Stubborn Lands
UPDATE `quest_template` SET `NextQuestIdChain`=14256 WHERE `Id`=14255; -- Ethel Rethor
UPDATE `quest_template` SET `NextQuestIdChain`=14257 WHERE `Id`=14256; -- The Emerging Threat
UPDATE `quest_template` SET `NextQuestIdChain`=14260 WHERE `Id`=14257; -- Slitherblade Slaughter
UPDATE `quest_template` SET `NextQuestIdChain`=14264 WHERE `Id`=14260; -- Going Deep
UPDATE `quest_template` SET `NextQuestIdChain`=14268 WHERE `Id`=14264; -- Wetter Than Wet
UPDATE `quest_template` SET `NextQuestIdChain`=14282, `RewardMoneyMaxLevel`=1620 WHERE `Id`=14268; -- Deep Impact
UPDATE `quest_template` SET `NextQuestIdChain`=14292 WHERE `Id`=14282; -- Mystery Solved
UPDATE `quest_template` SET `NextQuestIdChain`=14301 WHERE `Id`=14284; -- A Revenant's Vengeance
UPDATE `quest_template` SET `NextQuestIdChain`=14284 WHERE `Id`=14292; -- The Enemy of Our Enemy
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720 WHERE `Id`=14295; -- Sisters of the Sea
UPDATE `quest_template` SET `NextQuestIdChain`=14302 WHERE `Id`=14301; -- Return and Report
UPDATE `quest_template` SET `NextQuestIdChain`=14309 WHERE `Id`=14304; -- Blood Theory
UPDATE `quest_template` SET `NextQuestIdChain`=14314 WHERE `Id`=14312; -- An Introduction Is In Order
UPDATE `quest_template` SET `NextQuestIdChain`=14318 WHERE `Id`=14314; -- Breakout!
UPDATE `quest_template` SET `NextQuestIdChain`=14325 WHERE `Id`=14318; -- Delicate Negotiations
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=780 WHERE `Id`=14323; -- Absorbent
UPDATE `quest_template` SET `NextQuestIdChain`=14327 WHERE `Id`=14325; -- Will Work For Food
UPDATE `quest_template` SET `NextQuestIdChain`=14328 WHERE `Id`=14327; -- My Word is My Bond
UPDATE `quest_template` SET `NextQuestIdChain`=14329 WHERE `Id`=14328; -- Three Princes
UPDATE `quest_template` SET `NextQuestIdChain`=14332 WHERE `Id`=14330; -- Behind Closed Doors
UPDATE `quest_template` SET `NextQuestIdChain`=14393 WHERE `Id`=14332; -- Time For Change
UPDATE `quest_template` SET `NextQuestIdChain`=14339 WHERE `Id`=14338; -- Ghost Walker Post
UPDATE `quest_template` SET `NextQuestIdChain`=14343 WHERE `Id`=14339; -- Delivery Device
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=600 WHERE `Id`=14340; -- Dressed to Impress
UPDATE `quest_template` SET `NextQuestIdChain`=14346 WHERE `Id`=14343; -- Maurin's Concoction
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1500 WHERE `Id`=14354; -- Elune's Gifts
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1500 WHERE `Id`=14357; -- To the Hilt!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1500 WHERE `Id`=14358; -- Ten Pounds of Flesh
UPDATE `quest_template` SET `NextQuestIdChain`=14195 WHERE `Id`=14360; -- Nothing a Couple of Melons Won't Fix
UPDATE `quest_template` SET `NextQuestIdChain`=14363, `RewardMoneyMaxLevel`=1500 WHERE `Id`=14361; -- Peace of Mind
UPDATE `quest_template` SET `NextQuestIdChain`=14364 WHERE `Id`=14363; -- You'll Know It When You See It
UPDATE `quest_template` SET `NextQuestIdChain`=14256, `RewardMoneyMaxLevel`=150 WHERE `Id`=14365; -- Ethel Rethor
UPDATE `quest_template` SET `NextQuestIdChain`=14380 WHERE `Id`=14378; -- Hunting Brendol
UPDATE `quest_template` SET `NextQuestIdChain`=14346 WHERE `Id`=14379; -- Rock Lobstrock!
UPDATE `quest_template` SET `NextQuestIdChain`=14381 WHERE `Id`=14380; -- An Impactful Discovery
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=150 WHERE `Id`=14384; -- Rerouted!
UPDATE `quest_template` SET `NextQuestIdChain`=14354, `RewardMoneyMaxLevel`=150 WHERE `Id`=14387; -- Lay of the Land
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=600 WHERE `Id`=14388; -- Azsharite Experiment Number Two
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1080 WHERE `Id`=14392; -- Farewell, Minnow
UPDATE `quest_template` SET `NextQuestIdChain`=14394 WHERE `Id`=14393; -- Into the Fray!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=420 WHERE `Id`=14424; -- Need More Science
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=840 WHERE `Id`=14428; -- Amberwind's Journal
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=60 WHERE `Id`=14434; -- Rut'theran Village
UPDATE `quest_template` SET `NextQuestIdChain`=14491 WHERE `Id`=14438; -- Sharing the Land
UPDATE `quest_template` SET `NextQuestIdChain`=14452 WHERE `Id`=14449; -- The First Step
UPDATE `quest_template` SET `NextQuestIdChain`=24852 WHERE `Id`=14452; -- Rite of Strength
UPDATE `quest_template` SET `NextQuestIdChain`=14460 WHERE `Id`=14459; -- The Battleboars
UPDATE `quest_template` SET `NextQuestIdChain`=24861 WHERE `Id`=14460; -- Rite of Honor
UPDATE `quest_template` SET `NextQuestIdChain`=14460 WHERE `Id`=14461; -- Feed of Evil
UPDATE `quest_template` SET `RequiredSourceItemCount1`=1, `RequiredSourceItemCount2`=1 WHERE `Id`=14483; -- Something is in the Air (and it Ain't Love)
UPDATE `quest_template` SET `RequiredSourceItemCount1`=1, `RequiredSourceItemCount2`=1, `RequiredSourceItemCount3`=1 WHERE `Id`=14488; -- You've Been Served
UPDATE `quest_template` SET `NextQuestIdChain`=24523 WHERE `Id`=20441; -- Rite of Vision
UPDATE `quest_template` SET `NextQuestIdChain`=24215 WHERE `Id`=23733; -- Rites of the Earthmother
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=248050 WHERE `Id`=24216; -- Call to Arms: Warsong Gulch
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=248050 WHERE `Id`=24217; -- Call to Arms: Warsong Gulch
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=24432; -- Sea Legs
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720 WHERE `Id`=24435; -- Mop Up
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720 WHERE `Id`=24437; -- First Come, First Served
UPDATE `quest_template` SET `NextQuestIdChain`=24441 WHERE `Id`=24440; -- Winterhoof Cleansing
UPDATE `quest_template` SET `NextQuestIdChain`=24456 WHERE `Id`=24441; -- Thunderhorn Totem
UPDATE `quest_template` SET `NextQuestIdChain`=24457 WHERE `Id`=24456; -- Thunderhorn Cleansing
UPDATE `quest_template` SET `NextQuestIdChain`=20441 WHERE `Id`=24457; -- Rite of Vision
UPDATE `quest_template` SET `NextQuestIdChain`=749 WHERE `Id`=24459; -- Morin Cloudstalker
UPDATE `quest_template` SET `RequiredSourceItemCount4`=1 WHERE `Id`=24492; -- Pack Your Bags
UPDATE `quest_template` SET `NextQuestIdChain`=24505, `RewardMoneyMaxLevel`=1500 WHERE `Id`=24504; -- Clear the High Road
UPDATE `quest_template` SET `NextQuestIdChain`=24519 WHERE `Id`=24518; -- The Low Road
UPDATE `quest_template` SET `NextQuestIdChain`=24524 WHERE `Id`=24523; -- Wildmane Totem
UPDATE `quest_template` SET `NextQuestIdChain`=24550 WHERE `Id`=24524; -- Wildmane Cleansing
UPDATE `quest_template` SET `NextQuestIdChain`=24534 WHERE `Id`=24529; -- Bad to Worse
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700, `Details`='Get a load of these guys, would ya? Steamwheedle''s been handling the business of holidays for years, and all of a sudden, these guys bust into the market. They''re not Steamwheedle; the cartel hired me to get to the bottom of this. Something stinks here and it ain''t just perfume.

Take this device I brought and go analyze the perfume clouds around the guards. I want to know what they''re putting in that stuff. Things ain''t natural.' WHERE `Id`=24536; -- Something Stinks
UPDATE `quest_template` SET `NextQuestIdChain`=24542 WHERE `Id`=24539; -- When Plants Attack
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=124050, `Details`='I knew they were up to no good! There''s some sort of mind-affecting chemical in here, but I can''t get a handle on it with such a small sample. I need the real stuff.

Don''t just go over there and buy it! I don''t want you giving these scumbags one copper. Nah, you gotta get it from the source, discreet-like.

I''ll disguise you as a package runner. I saw a stockpile guarded by their goons outside the gates. Go run by, and DON''T stop, or they''ll make you! They''ll toss you a crate. Bring it back here.' WHERE `Id`=24541; -- Pilfering Perfume
UPDATE `quest_template` SET `NextQuestIdChain`=24546 WHERE `Id`=24543; -- A Family Divided
UPDATE `quest_template` SET `NextQuestIdChain`=24540 WHERE `Id`=24550; -- Journey into Thunder Bluff
UPDATE `quest_template` SET `NextQuestIdChain`=24574 WHERE `Id`=24565; -- Biological Intervention
UPDATE `quest_template` SET `NextQuestIdChain`=24573 WHERE `Id`=24568; -- To the Walls!
UPDATE `quest_template` SET `NextQuestIdChain`=24572 WHERE `Id`=24569; -- Siegebreaker
UPDATE `quest_template` SET `NextQuestIdChain`=24577 WHERE `Id`=24572; -- Taking Back Taurajo
UPDATE `quest_template` SET `NextQuestIdChain`=24601 WHERE `Id`=24574; -- To Harvest Chaos
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=124050 WHERE `Id`=24576; -- A Friendly Chat...
UPDATE `quest_template` SET `NextQuestIdChain`=24591, `RewardMoneyMaxLevel`=1320 WHERE `Id`=24577; -- Desolation Hold Inspection
UPDATE `quest_template` SET `RewardOrRequiredMoney`=23500, `RewardMoneyMaxLevel`=165400 WHERE `Id`=24597; -- A Gift for the King of Stormwind
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=24602; -- Laid to Rest
UPDATE `quest_template` SET `NextQuestIdChain`=24608 WHERE `Id`=24603; -- Don't Stop Bereavin'
UPDATE `quest_template` SET `NextQuestIdChain`=24653 WHERE `Id`=24606; -- Blood of the Barrens
UPDATE `quest_template` SET `RewardOrRequiredMoney`=23500, `RewardMoneyMaxLevel`=165400 WHERE `Id`=24612; -- A Gift for the Warchief
UPDATE `quest_template` SET `RewardOrRequiredMoney`=23500, `RewardMoneyMaxLevel`=165400 WHERE `Id`=24613; -- A Gift for the Banshee Queen
UPDATE `quest_template` SET `RewardOrRequiredMoney`=23500, `RewardMoneyMaxLevel`=165400 WHERE `Id`=24614; -- A Gift for the High Chieftain
UPDATE `quest_template` SET `RewardOrRequiredMoney`=23500, `RewardMoneyMaxLevel`=165400 WHERE `Id`=24615; -- A Gift for the Regent Lord of Quel'Thalas
UPDATE `quest_template` SET `NextQuestIdChain`=24620 WHERE `Id`=24619; -- Parts-is-Parts
UPDATE `quest_template` SET `NextQuestIdChain`=24621 WHERE `Id`=24620; -- Hearts-is-Hearts
UPDATE `quest_template` SET `RequiredSourceItemCount1`=1 WHERE `Id`=24626; -- Young and Vicious
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=390 WHERE `Id`=24628; -- Preparations
UPDATE `quest_template` SET `RewardOrRequiredMoney`=23500, `RewardMoneyMaxLevel`=165400 WHERE `Id`=24629; -- A Perfect Puff of Perfume
UPDATE `quest_template` SET `NextQuestIdChain`=24632 WHERE `Id`=24631; -- Flightmare
UPDATE `quest_template` SET `NextQuestIdChain`=24684 WHERE `Id`=24632; -- Tauren Vengeance
UPDATE `quest_template` SET `NextQuestIdChain`=24637 WHERE `Id`=24634; -- Intelligence Warfare
UPDATE `quest_template` SET `RewardOrRequiredMoney`=23500, `RewardMoneyMaxLevel`=165400 WHERE `Id`=24635; -- A Cloudlet of Classy Cologne
UPDATE `quest_template` SET `RewardOrRequiredMoney`=23500, `RewardMoneyMaxLevel`=165400 WHERE `Id`=24636; -- Bonbon Blitz
UPDATE `quest_template` SET `NextQuestIdChain`=24667 WHERE `Id`=24654; -- Silithissues
UPDATE `quest_template` SET `Details`='Get a load of these guys, would ya? Steamwheedle''s been handling the business of holidays for years, and all of a sudden, these guys bust into the market. They''re not Steamwheedle; the cartel hired me to get to the bottom of this. Something stinks here and it ain''t just perfume.

Take this device I brought and go analyze the perfume clouds around the guards. I want to know what they''re putting in that stuff. Things ain''t natural.' WHERE `Id`=24655; -- Something Stinks
UPDATE `quest_template` SET `Details`='I knew they were up to no good! There''s some sort of mind-affecting chemical in here, but I can''t get a handle on it with such a small sample. I need the real stuff.

Don''t just go over there and buy it! I don''t want you giving these scumbags one copper. Nah, you gotta get it from the source, discreet-like.

I''ll disguise you as a package runner. I saw a stockpile guarded by their goons outside the gates. Go run by, and DON''T stop, or they''ll make you! They''ll toss you a crate. Bring it back here.' WHERE `Id`=24656; -- Pilfering Perfume
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=390 WHERE `Id`=24674; -- Slaves to No One
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=24676; -- Push Them Out
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=24678; -- Knee-Deep
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=24679; -- Patriarch's Blessing
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=60 WHERE `Id`=24680; -- Keel Harbor
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720 WHERE `Id`=24681; -- They Have Allies, But So Do We
UPDATE `quest_template` SET `NextQuestIdChain`=24685 WHERE `Id`=24684; -- A Weezil in the Henhouse
UPDATE `quest_template` SET `NextQuestIdChain`=24747 WHERE `Id`=24685; -- Dwarf Fortress
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4200 WHERE `Id`=24686; -- Carried on the Waves
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=420 WHERE `Id`=24689; -- Flowing to the North
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=24690; -- Blazerunner
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4350 WHERE `Id`=24691; -- Peculiar Delicacies
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9000 WHERE `Id`=24692; -- The Fledgling Colossus
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=24695; -- Ever Watching From Above
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4350 WHERE `Id`=24697; -- How to Make Meat Fresh Again
UPDATE `quest_template` SET `RequiredNpcOrGoCount2`=1 WHERE `Id`=24707; -- The Ballad of Maximillian
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=24733; -- The Bait for Lar'korwi
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2220 WHERE `Id`=24734; -- Lost!
UPDATE `quest_template` SET `RequiredSourceItemCount3`=1, `RequiredSourceItemCount4`=1 WHERE `Id`=24745; -- Something is in the Air (and it Ain't Love)
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2460 WHERE `Id`=24747; -- Sabotage!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=23500, `RewardMoneyMaxLevel`=41350 WHERE `Id`=24793; -- Man on the Inside
UPDATE `quest_template` SET `NextQuestIdChain`=14458 WHERE `Id`=24852; -- Our Tribe, Imprisoned
UPDATE `quest_template` SET `NextQuestIdChain`=23733 WHERE `Id`=24861; -- Last Rites, First Rites
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=660 WHERE `Id`=24902; -- The Hunt For Sylvanas
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=390 WHERE `Id`=24903; -- Vengeance or Survival
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=780 WHERE `Id`=24904; -- The Battle for Gilneas City
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3300 WHERE `Id`=24906; -- Seaside Salvage
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3300 WHERE `Id`=24907; -- Puddle Stomping
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6000 WHERE `Id`=24913; -- Remember the Light
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=660 WHERE `Id`=24920; -- Slowing the Inevitable
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3600 WHERE `Id`=24931; -- Gazer Tag
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3600 WHERE `Id`=24932; -- Cutting Losses
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3600 WHERE `Id`=24933; -- Chicken of the Desert
UPDATE `quest_template` SET `NextQuestIdChain`=24939 WHERE `Id`=24938; -- The Guns of Northwatch
UPDATE `quest_template` SET `NextQuestIdChain`=24948 WHERE `Id`=24943; -- Re-Take the Courtyard
UPDATE `quest_template` SET `NextQuestIdChain`=24956 WHERE `Id`=24944; -- Back in the Fight
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1500 WHERE `Id`=24948; -- Lifting the Siege
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3600 WHERE `Id`=24951; -- A Great Idea
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4500 WHERE `Id`=24953; -- Just Trying to Kill Some Bugs
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1920 WHERE `Id`=24956; -- Silencing Rageroar
UPDATE `quest_template` SET `RequiredSourceItemCount2`=1 WHERE `Id`=24979; -- A Scarlet Letter
UPDATE `quest_template` SET `RequiredSourceItemCount1`=1 WHERE `Id`=25001; -- Sandscraper
UPDATE `quest_template` SET `RequiredItemCount1`=1 WHERE `Id`=25011; -- To Bigger and Better Things
UPDATE `quest_template` SET `RequiredSourceItemCount4`=1 WHERE `Id`=25014; -- Sandscraper's Treasure
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3300 WHERE `Id`=25021; -- Blood to Thrive
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3300 WHERE `Id`=25025; -- Sang'thraze the Deflector
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3300 WHERE `Id`=25026; -- Darkest Mojo
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4350 WHERE `Id`=25032; -- Secrets in the Oasis
UPDATE `quest_template` SET `NextQuestIdChain`=25042 WHERE `Id`=25041; -- Lion's Pride
UPDATE `quest_template` SET `RequiredNpcOrGoCount1`=1 WHERE `Id`=25042; -- Marching On Our Stomachs
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400, `RequiredSourceItemCount2`=1 WHERE `Id`=25047; -- Broken Panther Figurine
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3300 WHERE `Id`=25048; -- Seaside Salvage
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3300 WHERE `Id`=25049; -- Puddle Stomping
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3300 WHERE `Id`=25050; -- Rocket Rescue
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4350 WHERE `Id`=25052; -- Dead Man's Chest
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3450 WHERE `Id`=25053; -- To The Ground!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3450 WHERE `Id`=25054; -- Lootin' Plunder
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3750 WHERE `Id`=25060; -- Define "Crazy"
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1800 WHERE `Id`=25061; -- Land's End
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3750 WHERE `Id`=25062; -- What We Came For
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3750 WHERE `Id`=25063; -- Terrapination
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3900 WHERE `Id`=25069; -- The Secrets of Uldum
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3600 WHERE `Id`=25072; -- A Few Good Goblins
UPDATE `quest_template` SET `NextQuestIdChain`=25079 WHERE `Id`=25075; -- Pick-a-Part
UPDATE `quest_template` SET `NextQuestIdChain`=25080 WHERE `Id`=25079; -- Powder Play
UPDATE `quest_template` SET `NextQuestIdChain`=25085 WHERE `Id`=25084; -- A Growing Threat
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1680 WHERE `Id`=25091; -- Sandsorrow Watch
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=25105; -- Nibbler!  No!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4200 WHERE `Id`=25111; -- Scavengers Scavenged
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3300 WHERE `Id`=25112; -- Butcherbot
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4200 WHERE `Id`=25115; -- Blisterpaw Butchery
UPDATE `quest_template` SET `NextQuestIdChain`=25151 WHERE `Id`=25120; -- Marley's Final Flight
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1740 WHERE `Id`=25121; -- Momentum
UPDATE `quest_template` SET `NextQuestIdChain`=25175 WHERE `Id`=25151; -- He Needs Ale!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=25154; -- A Present for Lila
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=25155; -- Ogrezonians in the Mood
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=25156; -- Elemental Goo
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=25157; -- The Latest Fashion!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=25158; -- Nibbler!  No!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=25159; -- The Latest Fashion!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=25160; -- A Present for Lila
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=25161; -- Ogrezonians in the Mood
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=25162; -- Elemental Goo
UPDATE `quest_template` SET `NextQuestIdChain`=25174 WHERE `Id`=25163; -- Who Did This?
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82550 WHERE `Id`=25164; -- Backed Into a Corner
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4350 WHERE `Id`=25166; -- Captain Dreadbeard
UPDATE `quest_template` SET `NextQuestIdChain`=25182 WHERE `Id`=25174; -- Twinbraid Needs to Know
UPDATE `quest_template` SET `RewardOrRequiredMoney`=350, `RewardMoneyMaxLevel`=165400 WHERE `Id`=25180; -- Tablets of the Earth
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=25181; -- Tablets of Fire
UPDATE `quest_template` SET `NextQuestIdChain`=25185 WHERE `Id`=25183; -- ...And Bury the Rest
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=390 WHERE `Id`=25202; -- The Fastest Way to His Heart
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=390 WHERE `Id`=25203; -- What Kind of Name is Chip, Anyway?
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1080 WHERE `Id`=25208; -- Tell Silvia
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2640 WHERE `Id`=25209; -- The Gordunni Threat
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25215; -- A Distracting Scent
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=25216; -- The Great Sambino
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25217; -- Totem Modification
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25218; -- Undersea Inflation
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25219; -- Don't be Shellfish
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25220; -- Slippery Threat
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25221; -- Rundown
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=16550 WHERE `Id`=25222; -- Silver Tide Hollow
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25223; -- Trial By Fire
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25224; -- In Bloom
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25233; -- End of the Supply Line
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25234; -- In the Rear With the Gear
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=390 WHERE `Id`=25243; -- She Loves Me, She Loves Me NOT!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=390 WHERE `Id`=25244; -- What Kind of Name is Candy, Anyway?
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25255; -- Harrying the Hunters
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=60 WHERE `Id`=25265; -- Victory!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=60 WHERE `Id`=25266; -- Warchief's Emissary
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=60 WHERE `Id`=25267; -- Message for Garrosh
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=33000 WHERE `Id`=25268; -- The Voice of Goldrinn
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25270; -- Howling Mad
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25272; -- Lycanthoth the Corruptor
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25273; -- Lycanthoth the Corruptor
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25274; -- Signed in Blood
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=33000 WHERE `Id`=25276; -- Your New Identity
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25277; -- Cleaning House
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25278; -- Cleaning House
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=25280; -- The Shrine Reclaimed
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25281; -- Pay It Forward
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6300 WHERE `Id`=25286; -- Words for Delivery
UPDATE `quest_template` SET `RequiredSourceItemCount4`=1 WHERE `Id`=25290; -- Infiltrating the Cult
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1500 WHERE `Id`=25292; -- Next of Kin
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25296; -- Gather the Intelligence
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=49550 WHERE `Id`=25297; -- From the Mouth of Madness
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25298; -- Free Your Mind, the Rest Follows
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25299; -- Mental Training: Speaking the Truth to Power
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=33000 WHERE `Id`=25300; -- The Eye of Twilight
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=33000 WHERE `Id`=25301; -- Mastering Puppets
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25303; -- Elementary!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1140 WHERE `Id`=25304; -- The Battle of Sardor
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25308; -- Seeds of Discord
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25309; -- Spiritual Training: Mercy is for the Weak
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=16550 WHERE `Id`=25312; -- Return to Duskwhisper
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=99000 WHERE `Id`=25315; -- Graduation Speech
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=49550 WHERE `Id`=25316; -- As Hyjal Burns
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=16550 WHERE `Id`=25317; -- Protect the World Tree
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25319; -- War on the Twilight's Hammer
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=33000 WHERE `Id`=25320; -- The Captured Scout
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=49550 WHERE `Id`=25321; -- Twilight Captivity
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25323; -- Flamebreaker
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=33000 WHERE `Id`=25324; -- A Prisoner of Interest
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=49550 WHERE `Id`=25325; -- Through the Dream
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25328; -- Gar'gol's Gotta Go
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=49550 WHERE `Id`=25330; -- Waste of Flesh
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2760 WHERE `Id`=25333; -- Might of the Sentinels
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=49550 WHERE `Id`=25334; -- The Looming Threat
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2340 WHERE `Id`=25337; -- Hippogryph Muisek
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2100 WHERE `Id`=25341; -- The Gordunni Orb
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2220 WHERE `Id`=25350; -- The Lost Apprentice
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25352; -- Sweeping the Shelf
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25353; -- Lightning in a Bottle
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25357; -- Buy Us Some Time
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25358; -- Nerve Tonic
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=16550 WHERE `Id`=25359; -- Toshe's Vengeance
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25360; -- Crabby Patrons
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25370; -- Inciting the Elements
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82550 WHERE `Id`=25371; -- The Abyssal Ride
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=25372; -- Aessina's Miracle
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25377; -- The Horde's Hoard
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25381; -- Fighting Fire With ... Anything
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25382; -- Disrupting the Rituals
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25385; -- Save the Wee Animals
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25388; -- A Case of Crabs
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25389; -- A Taste For Tail
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25390; -- A Girl's Best Friend
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25392; -- Oh, Deer!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=960 WHERE `Id`=25395; -- The Stolen Keg
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2100 WHERE `Id`=25396; -- Tears of Stone
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2100 WHERE `Id`=25397; -- The Land, Corrupted
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2220 WHERE `Id`=25399; -- Hatecrest Forces
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2760 WHERE `Id`=25400; -- The Gordunni Threat
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2220 WHERE `Id`=25401; -- The Gordunni Orb
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=25405; -- Rest For the Weary
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2220 WHERE `Id`=25407; -- Forces of Nature: Wisps
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25408; -- Seeds of Their Demise
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=33000 WHERE `Id`=25411; -- A New Master
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25412; -- The Name Never Spoken
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25419; -- Lady La-La's Medallion
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4950 WHERE `Id`=25421; -- The Grand Tablet
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=49550 WHERE `Id`=25424; -- Return to Alysra
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2460 WHERE `Id`=25426; -- War on the Woodpaw
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25428; -- Black Heart of Flame
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2460 WHERE `Id`=25429; -- Zukk'ash Infestation
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=33000 WHERE `Id`=25430; -- Emerald Allies
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3150 WHERE `Id`=25431; -- Stinglasher
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2460 WHERE `Id`=25432; -- It's Not "Ogre" Yet
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3150 WHERE `Id`=25433; -- Sasquatch Sighting
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2460 WHERE `Id`=25434; -- Taming The Tamers
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2640 WHERE `Id`=25436; -- Spiteful Sisters
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3900 WHERE `Id`=25438; -- Ysondre's Farewell
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25439; -- Vengeful Heart
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25440; -- Fathom-Lord Zin'jatar
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25441; -- Vortex
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25442; -- A Pearl of Wisdom
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2100 WHERE `Id`=25447; -- Signs of Change
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2640 WHERE `Id`=25448; -- The Northspring Menace
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2100 WHERE `Id`=25449; -- The Mark of Quality
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2760 WHERE `Id`=25451; -- Pristine Yeti Hide
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2100 WHERE `Id`=25452; -- The Mark of Quality
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=16550 WHERE `Id`=25456; -- Back in One Piece
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2760 WHERE `Id`=25458; -- General Skessesh
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25459; -- Ophidophobia
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25460; -- The Earth Rises
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25462; -- The Bears Up There
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=25463; -- Report to Silvia
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82550 WHERE `Id`=25464; -- The Return of Baron Geddon
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25467; -- Kliklak's Craw
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2220 WHERE `Id`=25468; -- Forces of Nature: Faerie Dragons
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=25471; -- Across the Great Divide
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25472; -- The Flameseer's Staff
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2220 WHERE `Id`=25475; -- Find OOX-22/FE!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4500 WHERE `Id`=25476; -- Rescue OOX-22/FE!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25477; -- Better Late Than Dead
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=25480; -- Dance Of De Spirits
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=660 WHERE `Id`=25481; -- To New Thalanaar
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=660 WHERE `Id`=25489; -- Two If By Boat
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25490; -- Smashing Through Ashes
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25491; -- Durable Seeds
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25492; -- Firebreak
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25493; -- Fresh Bait
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25494; -- A Champion's Collar
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25502; -- Prepping the Soil
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25503; -- Blackfin's Booty
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25507; -- Hell's Shells
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25509; -- Physical Training: Forced Labor
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=25510; -- Tortolla Speaks
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5850 WHERE `Id`=25513; -- Thunderdrome: Grudge Match!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25514; -- Breaking the Bonds
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2640 WHERE `Id`=25516; -- Down in the Deeps
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2640 WHERE `Id`=25517; -- Bar Fight!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25519; -- Children of Tortolla
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=25520; -- An Ancient Awakens
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3450 WHERE `Id`=25521; -- I'm With Scorpid
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4350 WHERE `Id`=25522; -- Gargantapid
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=49550 WHERE `Id`=25523; -- Flight in the Firelands
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2640 WHERE `Id`=25524; -- In the Outhouse
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25525; -- Wave One
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25531; -- Twilight Riot
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=16550 WHERE `Id`=25535; -- A Powerful Need To Eat
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25536; -- Cold Welcome
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25545; -- To Arms!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25546; -- Traveling on Our Stomachs
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25548; -- Might of the Firelord
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25549; -- The Sanctum of the Prophets
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104000 WHERE `Id`=25550; -- Magma Monarch
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104000 WHERE `Id`=25553; -- Death to the Broodmother
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25554; -- Secrets of the Flame
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1800 WHERE `Id`=25556; -- Into Zul'Farrak
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25558; -- All or Nothing
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3900 WHERE `Id`=25559; -- Laying Claim
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3900 WHERE `Id`=25565; -- Fragments of Language
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3900 WHERE `Id`=25566; -- The Secrets of Uldum
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=25571; -- A Natural Occurrence
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25574; -- Flames from Above
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25575; -- Forged of Shadow and Flame
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25576; -- Rage of the Wolf Ancient
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25577; -- Crushing the Cores
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25578; -- Return to Nordrassil
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25579; -- Caught Off-Guard
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25580; -- Swift Approach
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25581; -- An Occupation of Time
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25582; -- A Better Vantage
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=33000 WHERE `Id`=25584; -- The Return of the Ancients
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2760 WHERE `Id`=25585; -- Quiet the Cannons
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2760 WHERE `Id`=25586; -- Quiet the Cannons
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25587; -- Gimme Shelter!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2760 WHERE `Id`=25588; -- A Little Payback
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2760 WHERE `Id`=25590; -- Where's Wizzle?
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25592; -- Deep Attraction
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25593; -- Shelled Salvation
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25594; -- Crafty Crabs
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25595; -- Something Edible
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=49550 WHERE `Id`=25597; -- Commander Jarod Shadowsong
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25598; -- Ain't Too Proud to Beg
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25599; -- Cindermaul, the Portal Master
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82550 WHERE `Id`=25600; -- Forgemaster Pyrendius
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25602; -- Can't Start a Fire Without a Spark
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1200 WHERE `Id`=25607; -- Ze Gnomecorder
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82550 WHERE `Id`=25608; -- Slash and Burn
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2760 WHERE `Id`=25609; -- Sunken Treasure
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=25611; -- Return from the Firelands
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=120 WHERE `Id`=25613; -- Do Yourself a Favor
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1200 WHERE `Id`=25614; -- The Only Way Down is in a Body Bag
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=120 WHERE `Id`=25615; -- Return to Stardust
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=25616; -- Hellscream's Legacy
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=25617; -- Into the Maw!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=25618; -- Into the Maw!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82550 WHERE `Id`=25619; -- Reoccupation
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=49550 WHERE `Id`=25620; -- The Revered Lady
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=330 WHERE `Id`=25621; -- Field Test: Gnomecorder
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=25622; -- Burn, Baby, Burn!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=25630; -- The Fires of Mount Hyjal
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82550 WHERE `Id`=25637; -- To the Fathom-Lord's Call
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=49550 WHERE `Id`=25638; -- A Desperate Plea
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=120 WHERE `Id`=25640; -- Bombs Away: Windshear Mine!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=25642; -- Don't Look Them in the Eyes
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1140 WHERE `Id`=25643; -- The Darkmist Ruins
UPDATE `quest_template` SET `RequiredSourceItemCount2`=1 WHERE `Id`=25644; -- The Twilight Egg
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=25646; -- Windshear Mine Cleanup
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=960 WHERE `Id`=25647; -- Illegible Orc Letter
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=960 WHERE `Id`=25649; -- Minx'll Fix It
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=960 WHERE `Id`=25650; -- Orders from High Command
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25651; -- Oh, the Insanity!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1620 WHERE `Id`=25652; -- Commandeer That Balloon!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=25653; -- The Ancients are With Us
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2640 WHERE `Id`=25654; -- Dark Heart
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25655; -- The Wormwing Problem
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25656; -- Scrambling for Eggs
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25657; -- Dah, Nunt... Dah, Nunt...
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82550 WHERE `Id`=25658; -- Built to Last
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=99000 WHERE `Id`=25659; -- Not Soon Forgotten
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=25662; -- Free Our Sisters
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=33000 WHERE `Id`=25663; -- An Offering for Aviana
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25664; -- A Prayer and a Wing
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=25665; -- A Plea From Beyond
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1680 WHERE `Id`=25669; -- Rumble in the Lumber... Mill
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25670; -- DUN-dun-DUN-dun-DUN-dun
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1680 WHERE `Id`=25673; -- Just Ask Alice
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2460 WHERE `Id`=25676; -- Heartstrike
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=25685; -- The First Step
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6000 WHERE `Id`=25690; -- A Bloodmage's Gotta Eat Too
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=25694; -- Protecting Our Rear
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100 WHERE `Id`=25695; -- Watching Our Back
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2640 WHERE `Id`=25696; -- The Sunveil Excursion
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6000 WHERE `Id`=25708; -- Our Fallen Friends
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4950 WHERE `Id`=25709; -- Curtail the Darktail
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3600 WHERE `Id`=25710; -- Minor Distractions
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6000 WHERE `Id`=25711; -- Eliminate the Okril'lon
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4950 WHERE `Id`=25712; -- Nethergarde Reigns
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4950 WHERE `Id`=25713; -- Remove Their Arms
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=480 WHERE `Id`=25714; -- Watcher Mahar Ba
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4950 WHERE `Id`=25715; -- A Closer Look
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6900 WHERE `Id`=25717; -- The Demons and the Druid
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=8100 WHERE `Id`=25719; -- Demoniac Vessel
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11100 WHERE `Id`=25720; -- The Downfall of Marl Wormthorn
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=960 WHERE `Id`=25721; -- Fight the Flood
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=960 WHERE `Id`=25725; -- Fenbush Berries
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=960 WHERE `Id`=25726; -- A Dumpy Job
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=960 WHERE `Id`=25727; -- Drungeld Glowerglare
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1980 WHERE `Id`=25728; -- Mr. P's Wild Ride
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1320 WHERE `Id`=25729; -- Gerenzo the Traitor
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1980 WHERE `Id`=25730; -- BEWARE OF CRAGJAW!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25731; -- A Bird in Hand
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25732; -- A Bone to Pick
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1320 WHERE `Id`=25739; -- If the Horde Don't Get You...
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=16550 WHERE `Id`=25740; -- Fact-Finding Mission
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1320 WHERE `Id`=25741; -- Preparations for the Future
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25743; -- Decisions, Decisions
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=660 WHERE `Id`=25744; -- Negotiations
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25746; -- Sethria's Brood
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25748; -- Clear Goals
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25749; -- Not Entirely Unprepared
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25751; -- Properly Inspired
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2760 WHERE `Id`=25757; -- Get Koalbeard!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25758; -- A Gap in Their Armor
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=132000 WHERE `Id`=25760; -- Visions of the Past: The Invasion of Vashj'ir
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25761; -- Disassembly
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2880 WHERE `Id`=25762; -- The Ancient Brazier
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=25763; -- The Codex of Shadows
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25764; -- Egg Hunt
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720 WHERE `Id`=25765; -- Tell 'Em Koko Sent You
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2040 WHERE `Id`=25766; -- Arcane Legacy
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1380 WHERE `Id`=25767; -- Capturing Memories
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=330 WHERE `Id`=25768; -- Bombs Away: Mirkfallon Post!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=150 WHERE `Id`=25769; -- Fallowmere Beckons
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25776; -- Sethria's Demise
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=150 WHERE `Id`=25793; -- The Deep Reaches
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=49550 WHERE `Id`=25794; -- Undersea Sanctuary
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=25795; -- Return to the Shrine
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2760 WHERE `Id`=25796; -- Eminent Domain
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2760 WHERE `Id`=25798; -- Defend the Drill
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1380 WHERE `Id`=25806; -- They Put the Assass in... Never Mind
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=25807; -- An Ancient Reborn
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1740 WHERE `Id`=25808; -- Is This Thing On?
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1740 WHERE `Id`=25809; -- Leave No Man Behind! 
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=25810; -- The Hatchery Must Burn
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1740 WHERE `Id`=25811; -- Shuttin Her Down
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=49550 WHERE `Id`=25812; -- Spelunking
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=510 WHERE `Id`=25816; -- Cursed to Roam
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=150 WHERE `Id`=25821; -- A Special Kind of Job
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1380 WHERE `Id`=25822; -- Armaments for War
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1380 WHERE `Id`=25823; -- The Unrelenting Horde
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=49550 WHERE `Id`=25824; -- Debriefing
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720 WHERE `Id`=25826; -- Deliver the Goods
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=25830; -- The Last Living Lorekeeper
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=25832; -- Return to Aviana
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=150 WHERE `Id`=25834; -- Death by Proxy
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1740 WHERE `Id`=25837; -- A Proper Peace Offerin'
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25842; -- Firefight
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=25843; -- Tortolla's Revenge
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720 WHERE `Id`=25844; -- Sating the Savage Beast
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=150 WHERE `Id`=25845; -- Terms of Service
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720 WHERE `Id`=25846; -- Grundig Darkcloud, Chieftain of the Grimtotem
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1500 WHERE `Id`=25847; -- Grimtotem Supremacy
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2220 WHERE `Id`=25848; -- Downfall
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=150 WHERE `Id`=25851; -- Dances with Grimtotem
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=150 WHERE `Id`=25852; -- All's Clear
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82550 WHERE `Id`=25858; -- By Her Lady's Word
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82550 WHERE `Id`=25859; -- No Trespass Forgiven
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82550 WHERE `Id`=25861; -- Setting An Example
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25862; -- Stolen Property
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25863; -- Chosen Burden
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2880 WHERE `Id`=25871; -- Save the Sentinel
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3750 WHERE `Id`=25873; -- Horn of the Traitor
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720 WHERE `Id`=25875; -- Gnome on the Inside
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1380 WHERE `Id`=25876; -- It's Up There!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720 WHERE `Id`=25877; -- No Time for Goodbyes!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1380 WHERE `Id`=25878; -- Schemin' That Sabotage
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1380 WHERE `Id`=25879; -- The Lumbering Oaf Problem
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=150 WHERE `Id`=25880; -- Warn Master Thal'darah
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25881; -- Lost Wardens
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25883; -- How Disarming
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25884; -- Come Hell or High Water
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25885; -- What? What? In My Gut...?
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25886; -- Pressing the Advantage
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25887; -- Wake of Destruction
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25888; -- Decompression
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1800 WHERE `Id`=25889; -- Save the Children!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=25890; -- Nespirah
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1440 WHERE `Id`=25891; -- Last Ditch Effort
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=16550 WHERE `Id`=25893; -- Desperate Plan
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25899; -- Breakthrough
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=33000 WHERE `Id`=25900; -- Making Contact
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25904; -- The Hammer and the Key
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=25906; -- The Third Flamegate
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25907; -- Slave Labor
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000, `RequiredSourceItemCount1`=1 WHERE `Id`=25908; -- Stick it to Them
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25910; -- The Time for Mercy has Passed
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1440 WHERE `Id`=25912; -- Seen Better Days
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1440 WHERE `Id`=25913; -- Putting Them to Rest
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1440 WHERE `Id`=25914; -- Back to the Depths!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25915; -- The Strength of Tortolla
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=99000 WHERE `Id`=25921; -- Overseer Idra'kess
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25923; -- Finish Nemesis
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25924; -- Call of Duty
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2220 WHERE `Id`=25925; -- Thal'darah's Vengeance
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=25928; -- Tortolla's Triumph
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25929; -- Sea Legs
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1500 WHERE `Id`=25930; -- Ascending the Vale
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1500 WHERE `Id`=25931; -- Brood of Seldarria
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1500 WHERE `Id`=25934; -- World First: Gnomegen
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1500 WHERE `Id`=25935; -- Hungry Pups
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25936; -- Pay It Forward
UPDATE `quest_template` SET `NextQuestIdChain`=14384, `RewardMoneyMaxLevel`=360 WHERE `Id`=25938; -- Help for Desolace
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=25940; -- Last Stand at Whistling Grove
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=25941; -- Rest For the Weary
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25942; -- Buy Us Some Time
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25943; -- Traveling on Our Stomachs
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25944; -- Girding Our Loins
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=330 WHERE `Id`=25945; -- We're Here to Do One Thing, Maybe Two...
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25946; -- Helm's Deep
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25947; -- Finders, Keepers
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25948; -- Bring It On!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25949; -- Blood and Thunder!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=25950; -- Sira'kess Slaying
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25952; -- Caught Off-Guard
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25953; -- Swift Approach
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25954; -- An Occupation of Time
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25955; -- A Better Vantage
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25956; -- Upon the Scene of Battle
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=132000 WHERE `Id`=25957; -- Visions of the Past: The Invasion of Vashj'ir
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=25958; -- Looking Forward
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25959; -- Clear Goals
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25960; -- Not Entirely Unprepared
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25962; -- Properly Inspired
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25963; -- Swift Action
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25964; -- Fallen But Not Forgotten
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25965; -- Gauging Success
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=132000 WHERE `Id`=25966; -- Visions of the Past: The Slaughter of Biel'aran Ridge
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25967; -- Losing Ground
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=16550 WHERE `Id`=25968; -- Desperate Plan
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25972; -- Honor and Privilege
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=25974; -- Sira'kess Slaying
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=25975; -- Treasure Reclamation
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=25976; -- Treasure Reclamation
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104000 WHERE `Id`=25977; -- A Standard Day for Azrajar
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104000 WHERE `Id`=25980; -- A Standard Day for Azrajar
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=25981; -- Those Aren't Masks
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=25982; -- Those Aren't Masks
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=8300 WHERE `Id`=25984; -- Promontory Point
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=25985; -- Wings Over Mount Hyjal
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104000 WHERE `Id`=25988; -- Put It On
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=49550 WHERE `Id`=25989; -- Capture the Crab
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=33000 WHERE `Id`=25990; -- Breaking Through
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=33000 WHERE `Id`=25991; -- We Are Not Alone
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25992; -- Hopelessly Gearless
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25993; -- Body Blows
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25994; -- Still Valuable
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=99000 WHERE `Id`=25995; -- Overseer Idra'kess
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=25996; -- Waking the Beast
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=49550 WHERE `Id`=26000; -- Spelunking
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=49550 WHERE `Id`=26006; -- A Breath of Fresh Air
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=49550 WHERE `Id`=26007; -- Debriefing
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=26008; -- Decompression
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1980 WHERE `Id`=26009; -- Seek and Destroy
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=8300 WHERE `Id`=26012; -- Trouble at Wyrmrest
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=26013; -- Assault on the Sanctum
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=26014; -- The Brothers Digsong
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=26017; -- A Lure
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=26018; -- Coldlights Out
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=33000 WHERE `Id`=26019; -- Enormous Eel Egg
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1980 WHERE `Id`=26022; -- First Blood
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=124750 WHERE `Id`=26034; -- The Twilight Destroyer
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2160 WHERE `Id`=26039; -- The Princess Trapped
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=26040; -- What? What? In My Gut...?
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1980 WHERE `Id`=26053; -- Clearing the Highlands
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=8300 WHERE `Id`=26056; -- The Wavespeaker
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=8300 WHERE `Id`=26057; -- The Wavespeaker
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104000 WHERE `Id`=26065; -- Free Wil'hai
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2220 WHERE `Id`=26068; -- Kobold Fury!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=150 WHERE `Id`=26069; -- Nura Pathfinder
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=26070; -- Clearing the Defiled
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=26071; -- Clearing the Defiled
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=26072; -- Into the Totem
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=26080; -- One Last Favor
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=660 WHERE `Id`=26083; -- Hello Lolo
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=660 WHERE `Id`=26084; -- Hammerfall
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=26086; -- Orako
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=26087; -- "Glow-Juice"
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=26088; -- Here Fishie Fishie
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=26089; -- Die Fishman Die
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=33000 WHERE `Id`=26090; -- I Brought You This Egg
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82550 WHERE `Id`=26091; -- Here Fishie Fishie 2: Eel-Egg-Trick Boogaloo
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=26092; -- Orako's Report
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=26096; -- Scalding Shrooms
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=26103; -- Bio-Fuel
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2040 WHERE `Id`=26110; -- Just Like Old Times
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104000 WHERE `Id`=26111; -- ... It Will Come
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2760 WHERE `Id`=26117; -- For Southshore
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=26121; -- Claim Korthun's End
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=26122; -- Environmental Awareness
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=26124; -- Secure Seabrush
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=26125; -- Secure Seabrush
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=26126; -- The Perfect Fuel
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=26130; -- Unplug L'ghorek
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=26132; -- Fiends from the Netherworld
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=26133; -- Fiends from the Netherworld
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720 WHERE `Id`=26134; -- Nothing Left for You Here
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=132000 WHERE `Id`=26135; -- Visions of the Past: Rise from the Deep
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=26140; -- Communing with the Ancient
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=26141; -- Runestones of Binding
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=26142; -- Ascend No More!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=156900 WHERE `Id`=26143; -- All that Rises
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=26149; -- Prisoners
UPDATE `quest_template` SET `RewardOrRequiredMoney`=350, `RewardMoneyMaxLevel`=165400 WHERE `Id`=26153; -- Penny's Pumpkin Pancakes
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104000 WHERE `Id`=26154; -- Twilight Extermination
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4950 WHERE `Id`=26157; -- Kasim Sharim
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=26159; -- The First Step
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6300 WHERE `Id`=26161; -- Not Just Any Body
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=26162; -- The Altar of Storms
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=26163; -- Time is Short
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6300 WHERE `Id`=26164; -- The Charred Granite of the Dark Portal
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6300 WHERE `Id`=26165; -- The Vile Blood of Demons
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2520 WHERE `Id`=26166; -- Enhancing the Stone
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6000 WHERE `Id`=26167; -- The Amulet of Allistarj
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6000 WHERE `Id`=26168; -- The Amulet of Sevine
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6000 WHERE `Id`=26169; -- The Amulet of Grol
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=26170; -- The Final Ritual
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6000 WHERE `Id`=26172; -- A Bloodmage's Gotta Eat Too
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7500 WHERE `Id`=26173; -- Protecting Our Rear
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100 WHERE `Id`=26174; -- Watching Our Back
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2640, `Objectives`='Presentez-vous au Maire Charlton Connisport a Surwich dans les Terres Foudroyees.' WHERE `Id`=26175; -- Surwich
UPDATE `quest_template` SET `RewardOrRequiredMoney`=350 WHERE `Id`=26177; -- Feeling Crabby?
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=20850 WHERE `Id`=26181; -- Back to Darkbreak Cove
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=20850 WHERE `Id`=26182; -- Back to the Tenebrous Cavern
UPDATE `quest_template` SET `RewardOrRequiredMoney`=350 WHERE `Id`=26183; -- The King's Cider
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6900 WHERE `Id`=26184; -- Wormthorn's Dream
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=8100 WHERE `Id`=26186; -- Demoniac Vessel
UPDATE `quest_template` SET `RewardOrRequiredMoney`=350 WHERE `Id`=26190; -- A Fisherman's Feast
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=26191; -- The Culmination of Our Efforts
UPDATE `quest_template` SET `RewardOrRequiredMoney`=350, `RewardMoneyMaxLevel`=165400 WHERE `Id`=26192; -- Orphans Like Cookies Too!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=124750 WHERE `Id`=26193; -- Defending the Rift
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=124750 WHERE `Id`=26194; -- Defending the Rift
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=26209; -- Murder Was The Case That They Gave Me
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=26214; -- Hot On the Trail: Murlocs
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=120 WHERE `Id`=26215; -- Meet Two-Shoed Lou
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=26219; -- Full Circle
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000 WHERE `Id`=26220; -- Everything Is Better with Bacon
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=26221; -- Full Circle
UPDATE `quest_template` SET `NextQuestIdChain`=26224 WHERE `Id`=26223; -- Stalking the Stalkers
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000 WHERE `Id`=26226; -- Crawfish Creole
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000 WHERE `Id`=26227; -- Careful, This Fruit Bites Back
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=390 WHERE `Id`=26228; -- Livin' the Life
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=26229; -- "I TAKE Candle!"
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=420 WHERE `Id`=26232; -- Lou's Parting Thoughts
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000 WHERE `Id`=26233; -- Stealing From Our Own
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000 WHERE `Id`=26234; -- Stealing From Our Own
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000 WHERE `Id`=26235; -- Even Thieves Get Hungry
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=60 WHERE `Id`=26236; -- Shakedown at the Saldean's
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=26237; -- Times are Tough
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=26241; -- Westfall Stew
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=26244; -- The Earth Claims All
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=26245; -- Gunship Down
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=41600 WHERE `Id`=26246; -- Captain's Log
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=41600 WHERE `Id`=26247; -- Diplomacy First
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=26248; -- All Our Friends Are Dead
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=41600 WHERE `Id`=26249; -- The Admiral's Cabin
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=62450 WHERE `Id`=26250; -- On Second Thought, Take One Prisoner
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=26251; -- Take No Prisoners
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=26252; -- Heart of the Watcher
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=62450 WHERE `Id`=26254; -- Some Spraining to Do
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=62450 WHERE `Id`=26255; -- Return to the Temple of Earth
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=62450 WHERE `Id`=26256; -- Bleed the Bloodshaper
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=26257; -- It's Alive!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=62450 WHERE `Id`=26258; -- Deathwing's Fall
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=26259; -- Blood of the Earthwarder
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=26260; -- The Forgemaster's Log
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=26261; -- Question the Slaves
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=270 WHERE `Id`=26266; -- Hope for the People
UPDATE `quest_template` SET `NextQuestIdChain`=26432 WHERE `Id`=26267; -- Skulk Rock Clean-Up
UPDATE `quest_template` SET `NextQuestIdChain`=26432 WHERE `Id`=26268; -- Skulk Rock Supplies
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=26270; -- You Have Our Thanks
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=26271; -- Feeding the Hungry and the Hopeless
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1200 WHERE `Id`=26278; -- The Defense of Grom'gol: Raptor Risk
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=26286; -- In Defense of Westfall
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=26287; -- The Westfall Brigade
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=600 WHERE `Id`=26288; -- Jango Spothide
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=60 WHERE `Id`=26289; -- Find Agent Kearnen
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=600 WHERE `Id`=26290; -- Secrets of the Tower
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=600 WHERE `Id`=26291; -- Big Trouble in Moonbrook
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=60 WHERE `Id`=26292; -- To Moonbrook!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=32900 WHERE `Id`=26293; -- Machines of War
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=26294; -- Weapons of Mass Dysfunction
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=600 WHERE `Id`=26295; -- Propaganda
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=600 WHERE `Id`=26296; -- Evidence Collection
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=480 WHERE `Id`=26297; -- The Dawning of a New Day
UPDATE `quest_template` SET `NextQuestIdChain`=26307 WHERE `Id`=26306; -- Start Taking Back
UPDATE `quest_template` SET `NextQuestIdChain`=26308 WHERE `Id`=26307; -- Death to the Vilebranch
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2160 WHERE `Id`=26309; -- Dark Vessels
UPDATE `quest_template` SET `NextQuestIdChain`=26309 WHERE `Id`=26310; -- All That Skitters
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=26311; -- Unfamiliar Waters
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=26312; -- Crumbling Defenses
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=26314; -- On Even Ground
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=26315; -- Imposing Confrontation
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=60 WHERE `Id`=26319; -- Secrets Revealed
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=660 WHERE `Id`=26320; -- A Vision of the Past
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=960 WHERE `Id`=26322; -- Rise of the Brotherhood
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=26323; -- Favored Skull
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=98650 WHERE `Id`=26324; -- Where Is My Warfleet?
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=10450 WHERE `Id`=26326; -- The Very Earth Beneath Our Feet
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=26200 WHERE `Id`=26328; -- Rocky Relations
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=13150 WHERE `Id`=26335; -- Ready the Navy
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720, `Objectives`='Trouvez Shakes O’’Breen dans la Crique de Faldir, dans les Hautes-terres d’’Arathi.' WHERE `Id`=26336; -- Shakes O'Breen
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=26337; -- Beating the Market
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=600 WHERE `Id`=26347; -- Keeper of the Flame
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=660 WHERE `Id`=26348; -- The Coast Isn't Clear
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=660 WHERE `Id`=26349; -- The Coastal Menace
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=270 WHERE `Id`=26353; -- Captain Sanders' Hidden Treasure
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=270 WHERE `Id`=26354; -- Captain Sanders' Hidden Treasure
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=270 WHERE `Id`=26355; -- Captain Sanders' Hidden Treasure
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=26356; -- Captain Sanders' Hidden Treasure
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=13150 WHERE `Id`=26358; -- Ready the Air Force
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=26361; -- Smoot's Samophlange
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1800 WHERE `Id`=26362; -- Be Raptor
UPDATE `quest_template` SET `NextQuestIdChain`=26369 WHERE `Id`=26363; -- Summit of Fate
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=660 WHERE `Id`=26365; -- Hero's Call: Redridge Mountains!
UPDATE `quest_template` SET `NextQuestIdChain`=26363 WHERE `Id`=26367; -- Ongo'longo's Revenge
UPDATE `quest_template` SET `RequiredNpcOrGoCount1`=1 WHERE `Id`=26369; -- Hunt the Keeper
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=330 WHERE `Id`=26371; -- The Legend of Captain Grayson
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=13150 WHERE `Id`=26372; -- Pre-Flight Checklist
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=26374; -- Ready the Ground Troops
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=26375; -- Loose Stones
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=26376; -- Hatred Runs Deep
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=26377; -- Unsolid Ground
UPDATE `quest_template` SET `NextQuestIdChain`=26406 WHERE `Id`=26381; -- The Eye of Shadra
UPDATE `quest_template` SET `NextQuestIdChain`=26387, `RewardMoneyMaxLevel`=1860 WHERE `Id`=26382; -- Can't Make An Omelette Without...
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=26388; -- Twilight Skies
UPDATE `quest_template` SET `RequiredSourceItemCount2`=1 WHERE `Id`=26399; -- The Mosh'Ogg Bounty
UPDATE `quest_template` SET `RequiredSourceItemCount2`=1 WHERE `Id`=26400; -- The Universal Key
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2760 WHERE `Id`=26401; -- Return to Vestia
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1500, `RequiredSourceItemCount1`=1, `RequiredSourceItemCount2`=1 WHERE `Id`=26404; -- Above My Pay Grade
UPDATE `quest_template` SET `NextQuestIdChain`=26418 WHERE `Id`=26406; -- The Fang of Shadra
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=8300 WHERE `Id`=26409; -- Where's Goldmine?
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=26410; -- Explosive Bonding Compound
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=41600 WHERE `Id`=26411; -- Apply and Flash Dry
UPDATE `quest_template` SET `RequiredSourceItemCount2`=1 WHERE `Id`=26412; -- The Mosh'Ogg Bounty
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=8300 WHERE `Id`=26413; -- Take Him to the Earthcaller
UPDATE `quest_template` SET `RewardOrRequiredMoney`=350 WHERE `Id`=26414; -- Hitting a Walleye
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=120 WHERE `Id`=26417; -- Northern Stranglethorn: The Fallen Empire
UPDATE `quest_template` SET `NextQuestIdChain`=26558 WHERE `Id`=26418; -- The Shell of Shadra
UPDATE `quest_template` SET `RewardOrRequiredMoney`=350 WHERE `Id`=26420; -- Diggin' For Worms
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=26426; -- Violent Gale
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=62450 WHERE `Id`=26427; -- Without a Captain or Crew
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1980 WHERE `Id`=26428; -- To Steal From Thieves
UPDATE `quest_template` SET `NextQuestIdChain`=26306 WHERE `Id`=26432; -- The Fall of Jintha'Alor
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1500 WHERE `Id`=26434; -- Primal Reagents of Power
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=26200 WHERE `Id`=26436; -- Entrenched
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=26437; -- Making Things Crystal Clear
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=26438; -- Intervention
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=26439; -- Putting the Pieces Together
UPDATE `quest_template` SET `RewardOrRequiredMoney`=350 WHERE `Id`=26442; -- Rock Lobster
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=510 WHERE `Id`=26443; -- Diabolical Plans
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1020 WHERE `Id`=26444; -- Destroy the Legion
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1020 WHERE `Id`=26446; -- Reclaiming Felfire Hill
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=26451; -- Gurubashi Challenge: Free-For-All Arena Combat
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=26452; -- Gurubashi Challenge
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=510 WHERE `Id`=26453; -- A Helping Hand
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1020 WHERE `Id`=26454; -- A Shameful Waste
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1020 WHERE `Id`=26455; -- The Lost Chalice
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=600 WHERE `Id`=26456; -- Report from the Northern Front
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1020 WHERE `Id`=26457; -- Agents of Destruction
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1020, `RequiredItemCount1`=1 WHERE `Id`=26463; -- Finding Teronis
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1020 WHERE `Id`=26464; -- The Lost Gem
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1020 WHERE `Id`=26465; -- The Ancient Statuettes
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1320 WHERE `Id`=26466; -- Ruuzel
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1020 WHERE `Id`=26467; -- Vile Satyr! Dryads in Danger!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1020 WHERE `Id`=26469; -- Satyr Slaying!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=26470; -- Retaking Mystral Lake
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1320 WHERE `Id`=26472; -- Insane Druids
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1020 WHERE `Id`=26473; -- Bathran's Hair
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1380 WHERE `Id`=26474; -- Orendil's Cure
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1140 WHERE `Id`=26475; -- Elune's Tear
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=26476; -- Dryad Delivery
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1140 WHERE `Id`=26477; -- Search the Bole
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1140 WHERE `Id`=26478; -- Playing Possum
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=120 WHERE `Id`=26479; -- Return to Raene
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=900 WHERE `Id`=26480; -- Dartol's Rod
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=26481; -- A New Adornment
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=8300 WHERE `Id`=26484; -- To Stonehearth's Aid
UPDATE `quest_template` SET `RewardOrRequiredMoney`=350 WHERE `Id`=26488; -- Big Gulp
UPDATE `quest_template` SET `NextQuestIdChain`=26496 WHERE `Id`=26491; -- Skulk Rock Clean-Up
UPDATE `quest_template` SET `NextQuestIdChain`=26496 WHERE `Id`=26492; -- Skulk Rock Supplies
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1860 WHERE `Id`=26493; -- There's Somebody Out There Who Wants It
UPDATE `quest_template` SET `NextQuestIdChain`=26497 WHERE `Id`=26496; -- Down with the Vilebranch
UPDATE `quest_template` SET `NextQuestIdChain`=26307 WHERE `Id`=26497; -- Vilebranch Scum
UPDATE `quest_template` SET `NextQuestIdChain`=26516 WHERE `Id`=26498; -- Death to the Vilebranch
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=26499; -- Stonefather's Boon
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=26501; -- Sealing the Way
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=26502; -- Thunder Stones
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=840 WHERE `Id`=26503; -- Still Assessing the Threat
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720 WHERE `Id`=26506; -- Franks and Beans
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=26507; -- Petrified Delicacies
UPDATE `quest_template` SET `NextQuestIdChain`=26515 WHERE `Id`=26518; -- Heads Up
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1080 WHERE `Id`=26520; -- Saving Foreman Oslow
UPDATE `quest_template` SET `NextQuestIdChain`=26524, `RequiredNpcOrGoCount1`=1 WHERE `Id`=26523; -- All That Skitters
UPDATE `quest_template` SET `NextQuestIdChain`=26368 WHERE `Id`=26524; -- Dark Vessels
UPDATE `quest_template` SET `RequiredNpcOrGoCount1`=1 WHERE `Id`=26526; -- Hunt the Keeper
UPDATE `quest_template` SET `NextQuestIdChain`=26529 WHERE `Id`=26528; -- The Eye of Shadra
UPDATE `quest_template` SET `NextQuestIdChain`=26530 WHERE `Id`=26529; -- The Fang of Shadra
UPDATE `quest_template` SET `NextQuestIdChain`=26531 WHERE `Id`=26530; -- The Shell of Shadra
UPDATE `quest_template` SET `NextQuestIdChain`=26532 WHERE `Id`=26531; -- Summoning Shadra
UPDATE `quest_template` SET `RewardOrRequiredMoney`=350, `RequiredSourceItemCount1`=1 WHERE `Id`=26536; -- Thunder Falls
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=26537; -- Shatter Them!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=98650 WHERE `Id`=26538; -- Emergency Aid
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=65750 WHERE `Id`=26539; -- Stalled Negotiations
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=65750 WHERE `Id`=26540; -- Dangerous Compassion
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1140 WHERE `Id`=26542; -- Hero's Call: The Hinterlands!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RequiredSourceItemCount1`=1 WHERE `Id`=26543; -- Clammy Hands
UPDATE `quest_template` SET `NextQuestIdChain`=26548, `RewardMoneyMaxLevel`=1920 WHERE `Id`=26546; -- Razorbeak Friends
UPDATE `quest_template` SET `NextQuestIdChain`=26548 WHERE `Id`=26547; -- A Mangy Threat
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=26549; -- Madness
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RequiredSourceItemCount1`=1 WHERE `Id`=26556; -- No Dumping Allowed
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000 WHERE `Id`=26557; -- A Staggering Effort
UPDATE `quest_template` SET `NextQuestIdChain`=26419 WHERE `Id`=26558; -- Summoning Shadra
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=26564; -- Fixer Upper
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=780 WHERE `Id`=26569; -- Surveying Equipment
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=780 WHERE `Id`=26570; -- Render's Army
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=780 WHERE `Id`=26571; -- Weapons of War
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400, `RequiredSourceItemCount1`=1 WHERE `Id`=26572; -- A Golden Opportunity
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=780 WHERE `Id`=26573; -- His Heart Must Be In It
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1740 WHERE `Id`=26574; -- Adella's Covert Camp
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=26575; -- Rock Bottom
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=26200 WHERE `Id`=26576; -- Steady Hand
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=26200 WHERE `Id`=26577; -- Rocky Upheaval
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=26578; -- Doomshrooms
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=26579; -- Gone Soft
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=26581; -- A Head Full of Wind
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=26200 WHERE `Id`=26582; -- Unnatural Causes
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=26583; -- Wrath of the Fungalmancer
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=26584; -- Shaken and Stirred
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=26585; -- Corruption Destruction
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=780 WHERE `Id`=26586; -- In Search of Bravo Company
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000 WHERE `Id`=26588; -- A Furious Catch
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=26591; -- Battlefront Triage
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1500 WHERE `Id`=26592; -- Diffractory Chromascope
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1620 WHERE `Id`=26593; -- Scaring Shaky
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2640 WHERE `Id`=26597; -- Stranglethorn Fever
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1740 WHERE `Id`=26599; -- The Captain's Chest
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1320 WHERE `Id`=26600; -- A Giant's Feast
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2640 WHERE `Id`=26601; -- Mok'rash the Cleaver
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2160 WHERE `Id`=26602; -- A Dish Best Served Huge
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1200 WHERE `Id`=26603; -- Message in a Bottle
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1620 WHERE `Id`=26604; -- Protecting Her Royal Highness Poobah
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1620 WHERE `Id`=26605; -- Grubby Little Paws
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2640 WHERE `Id`=26606; -- Mukla's Demise
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=26608; -- Negotiations Terminated
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1200 WHERE `Id`=26609; -- The Bloodsail Buccaneers
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1200 WHERE `Id`=26610; -- Bloodsail Treachery
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=390 WHERE `Id`=26611; -- The Baron Must Be Told
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2160 WHERE `Id`=26612; -- Details of the Attack
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1740, `RequiredSourceItemCount1`=1 WHERE `Id`=26613; -- Up to Snuff
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1740 WHERE `Id`=26614; -- Keep An Eye Out
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=210 WHERE `Id`=26616; -- It's Never Over
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1200 WHERE `Id`=26617; -- An Old Sea Dog
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=98650 WHERE `Id`=26619; -- You Say You Want a Revolution
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=263100 WHERE `Id`=26621; -- Insurrection
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=164400 WHERE `Id`=26622; -- Death to Mor'ghor
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=180 WHERE `Id`=26624; -- Getting In With the Bloodsail
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=130800 WHERE `Id`=26625; -- Troggzor the Earthinator
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2160 WHERE `Id`=26629; -- Seeing Where Your Loyalties Lie
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=130800 WHERE `Id`=26632; -- Close Escort
UPDATE `quest_template` SET `NextQuestIdChain`=26643 WHERE `Id`=26641; -- Can't Make An Omelette Without...
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=510 WHERE `Id`=26652; -- Ghost Hair Thread
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=510 WHERE `Id`=26654; -- Return the Comb
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=26656; -- Don't. Stop. Moving.
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1140 WHERE `Id`=26667; -- The Stolen Letters
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1380 WHERE `Id`=26670; -- Roland's Doom
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=480 WHERE `Id`=26679; -- Return to Revilgaz
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1020 WHERE `Id`=26684; -- The Insane Ghoul
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1080 WHERE `Id`=26685; -- Classy Glass
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=26686; -- Bones That Walk
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1140 WHERE `Id`=26688; -- Worgen in the Woods
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=210 WHERE `Id`=26696; -- The Call of Kalimdor
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=210 WHERE `Id`=26701; -- Flight to Brackenwall
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=210 WHERE `Id`=26702; -- Flight to Theramore
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=840 WHERE `Id`=26706; -- Endgame
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1440 WHERE `Id`=26708; -- AHHHHHHHHHHHH! AHHHHHHHHH!!!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=10450 WHERE `Id`=26709; -- The Stone Throne
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=26710; -- Lost In The Deeps
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=960 WHERE `Id`=26728; -- Hero's Call: Duskwood!
UPDATE `quest_template` SET `RequiredNpcOrGoCount1`=1 WHERE `Id`=26743; -- Sacred to the Bloodscalp
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=26744; -- Deep Roots
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=26755; -- Keep Them off the Front
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=26762; -- Reactivate the Constructs
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1380 WHERE `Id`=26763; -- Venture Company Mining
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=26766; -- Big Game, Big Bait
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=62450 WHERE `Id`=26768; -- To Catch a Dragon
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=26770; -- Mystic Masters
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=26771; -- Testing the Trap
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1440 WHERE `Id`=26774; -- Mind Control
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1800 WHERE `Id`=26779; -- Zul'Mamwe Mambo
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1440 WHERE `Id`=26780; -- Nighttime in the Jungle
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1380 WHERE `Id`=26781; -- The Mind's Eye
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1380, `RequiredSourceItemCount2`=1 WHERE `Id`=26782; -- The Mosh'Ogg Bounty
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1380, `RequiredSourceItemCount2`=1 WHERE `Id`=26783; -- The Mosh'Ogg Bounty
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=26784; -- Muddied Waters
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=13150 WHERE `Id`=26786; -- Securing the Beach Head
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=26788; -- Cementing Our Victory
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=26791; -- Sprout No More
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=26792; -- Fungal Monstrosities
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=13150 WHERE `Id`=26798; -- The Warchief Will be Pleased
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=360 WHERE `Id`=26805; -- To the Cape!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1860 WHERE `Id`=26822; -- Good-Fer-Nothin' Slither-Dogs
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1500 WHERE `Id`=26823; -- Too Big For His Britches
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=150 WHERE `Id`=26826; -- Dask "The Flask" Gobfizzle
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=26827; -- Rallying the Earthen Ring
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=26829; -- The Stone March
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=26830; -- Traitor's Bait
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=26831; -- The Twilight Flight
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=26832; -- Therazane's Mercy
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=10450 WHERE `Id`=26834; -- Down Into the Chasm
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=10450 WHERE `Id`=26835; -- A Slight Problem
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=130800 WHERE `Id`=26836; -- Rescue the Stonefather... and Flint
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=120 WHERE `Id`=26838; -- Rebels Without a Clue
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=13150 WHERE `Id`=26840; -- Return to the Highlands
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=26857; -- Abyssion's Minions
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720 WHERE `Id`=26860; -- Thelsamar Blood Sausages
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=26861; -- Block the Gates
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=60 WHERE `Id`=26867; -- Enemies Below
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=960 WHERE `Id`=26868; -- Axis of Awful
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=52300 WHERE `Id`=26869; -- Depth of the Depths
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=780 WHERE `Id`=26870; -- Cleansing the Caverns
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=130800 WHERE `Id`=26876; -- The World Pillar Fragment
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=900 WHERE `Id`=26881; -- In Search of Thaelrid
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3450 WHERE `Id`=26886; -- Going Off-Task
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3450 WHERE `Id`=26887; -- Filling Our Pockets
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=840 WHERE `Id`=26889; -- All Cheered Out
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1980 WHERE `Id`=26895; -- The Thunderdrome!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=300 WHERE `Id`=26897; -- Blackfathom Deeps
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=300 WHERE `Id`=26898; -- Blackfathom Deeps
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1500 WHERE `Id`=26901; -- Going, Going, Guano!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1500 WHERE `Id`=26903; -- Willix the Importer
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1500 WHERE `Id`=26905; -- Agamaggan's Charge
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1500 WHERE `Id`=26907; -- Take Them Down!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=180 WHERE `Id`=26908; -- Feeling Thorny
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=210 WHERE `Id`=26935; -- Northridge Lumber Mill
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=120 WHERE `Id`=26944; -- Exploring Gnomeregan
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1140 WHERE `Id`=26950; -- The Dark Side of the Light
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2220 WHERE `Id`=26954; -- A Different Approach
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=13150 WHERE `Id`=26960; -- My Son, the Prince
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=98650 WHERE `Id`=26975; -- Rallying the Fleet
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1860 WHERE `Id`=26976; -- Battle for the Scarlet Monastery
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=13150 WHERE `Id`=26977; -- Twilight Investigation
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=210 WHERE `Id`=26984; -- An Old, Crazed Friend
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=240 WHERE `Id`=26985; -- Pitting Madness Against Madness
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=180 WHERE `Id`=26987; -- The Right Way
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=210 WHERE `Id`=26988; -- Moving Things Along
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1320 WHERE `Id`=26993; -- Compendium of the Fallen
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1560 WHERE `Id`=26994; -- Without Rhyme or Reason
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=26997; -- The Usual Suspects
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27003; -- Easy Money
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27004; -- The Twilight Plot
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27005; -- The Twilight Plot
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27006; -- Fly Over
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=41600 WHERE `Id`=27007; -- Silvermarsh Rendezvous
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27008; -- Fly Over
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2580 WHERE `Id`=27009; -- The Coldbringer
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=27010; -- Quicksilver Submersion
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=900 WHERE `Id`=27016; -- The Joy of Boar Hunting
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2340 WHERE `Id`=27017; -- Memories from a Lost Past
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=300 WHERE `Id`=27019; -- Scourge of the Downs
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2520 WHERE `Id`=27022; -- Extinguishing the Idol
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2400 WHERE `Id`=27024; -- Partners in Crime
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=900 WHERE `Id`=27025; -- Thistle While You Work
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=900 WHERE `Id`=27028; -- Hornet Hunting
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2400 WHERE `Id`=27029; -- Cure the Scourge
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=27038; -- Missing Parts
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27040; -- Decryption Made Easy
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27041; -- Decryption Made Easy
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=130800 WHERE `Id`=27042; -- Fight Fire and Water and Air with...
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=130800 WHERE `Id`=27043; -- Fight Fire and Water and Air with...
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=65750 WHERE `Id`=27044; -- Peasant Problems
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27046; -- Fear of Boring
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27047; -- Motes
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27048; -- Underground Economy
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27049; -- Soft Rock
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27050; -- Fungal Fury
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27051; -- Through Persistence
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=130800 WHERE `Id`=27058; -- The Wrong Sequence
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=130800 WHERE `Id`=27059; -- The Wrong Sequence
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=20850 WHERE `Id`=27061; -- The Twilight Overlook
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=300 WHERE `Id`=27063; -- Looming Threat
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2940 WHERE `Id`=27068; -- Chief Ukorz Sandscalp
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2820 WHERE `Id`=27071; -- Wrath of the Sandfury
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2820 WHERE `Id`=27076; -- Breaking and Entering
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=164400 WHERE `Id`=27092; -- Cataclysm in the Catacombs
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=27100; -- Twilight Research
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=62450 WHERE `Id`=27101; -- Maziel's Revelation
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104000 WHERE `Id`=27102; -- Maziel's Ascendancy
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2040 WHERE `Id`=27103; -- Shards of the Felvine
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2040 WHERE `Id`=27104; -- Alzzin the Wildshaper
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1980 WHERE `Id`=27105; -- An Unwelcome Guest
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=164400, `RequiredSourceItemCount3`=1 WHERE `Id`=27106; -- A Villain Unmasked
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1980 WHERE `Id`=27107; -- Pusillin The Thief
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1980 WHERE `Id`=27108; -- Lethtendris's Web
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2280 WHERE `Id`=27109; -- The Warped Defender
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2400 WHERE `Id`=27110; -- The Madness Within
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=300 WHERE `Id`=27111; -- The Treasure of the Shen'dralar
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2280 WHERE `Id`=27112; -- The Cursed Remains
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=300 WHERE `Id`=27113; -- The Shen'dralar Ancient
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=8300 WHERE `Id`=27123; -- Deepholm, Realm of Earth
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2700 WHERE `Id`=27125; -- King of the Gordok
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=270 WHERE `Id`=27129; -- Saving Warpwood
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=270 WHERE `Id`=27130; -- Saving Warpwood
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=300 WHERE `Id`=27131; -- The Highborne
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=300 WHERE `Id`=27132; -- The Highborne
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=330 WHERE `Id`=27133; -- Eyes in the Sky
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=330 WHERE `Id`=27134; -- Ogre in the Field
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=27135; -- Something that Burns
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=27136; -- Elemental Energy
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2280 WHERE `Id`=27140; -- Alexi's Gambit
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27141; -- Premature Explosionation
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2280 WHERE `Id`=27142; -- The Lich, Ras Frostwhisper
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2280 WHERE `Id`=27143; -- Barov Family Fortune
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2280 WHERE `Id`=27146; -- Doctor Theolen Krastinov, the Butcher
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2280 WHERE `Id`=27147; -- Kirtonos the Herald
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2400 WHERE `Id`=27148; -- School's Out Forever
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2760 WHERE `Id`=27157; -- Drudges... <Sigh>
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=480 WHERE `Id`=27158; -- The Battle for Andorhal
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=210 WHERE `Id`=27165; -- Victory, For Now
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2100 WHERE `Id`=27167; -- A Mighty Hunger
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2100 WHERE `Id`=27168; -- Those That Couldn't Let Go
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1560 WHERE `Id`=27169; -- Uther's Blessing
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=210 WHERE `Id`=27175; -- The Menders' Stead
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=26200 WHERE `Id`=27176; -- Just the Tip
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=27177; -- Salvage Operation
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=27178; -- Naga Reinforcements
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27179; -- Field Work
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2580 WHERE `Id`=27185; -- Cutting the Competition
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27187; -- Do the World a Favor
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2580 WHERE `Id`=27192; -- The Great Fras Siabi
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=27194; -- Cornered and Crushed!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=26200 WHERE `Id`=27196; -- On to Something
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=270 WHERE `Id`=27197; -- The Battle Resumes!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3300 WHERE `Id`=27198; -- Supporting the Troops
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2640 WHERE `Id`=27199; -- Ashes to Ashes
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3300 WHERE `Id`=27202; -- Brother Against Brother
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=8300 WHERE `Id`=27203; -- The Maelstrom
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=270 WHERE `Id`=27205; -- The Depravity of the Forsaken
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2700 WHERE `Id`=27208; -- The Dreadlord Balnazzar
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2100 WHERE `Id`=27211; -- Propaganda War
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2640 WHERE `Id`=27213; -- The End of the Deserters
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1080 WHERE `Id`=27219; -- Is it Real?
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2700 WHERE `Id`=27223; -- Retribution
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3150 WHERE `Id`=27227; -- Lord Aurius Rivendare
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3000 WHERE `Id`=27228; -- Man Against Abomination
UPDATE `quest_template` SET `RequiredNpcOrGoCount1`=1 WHERE `Id`=27229; -- SMASH BROODQUEEN
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3000 WHERE `Id`=27230; -- Weapons for War
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=210 WHERE `Id`=27233; -- The Menders' Stead
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2220 WHERE `Id`=27236; -- Secondhand Diving Gear
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2220 WHERE `Id`=27237; -- Recover the Cargo!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1260 WHERE `Id`=27248; -- Mission to Mudsprocket
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1680 WHERE `Id`=27249; -- Inspecting the Ruins
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=90 WHERE `Id`=27266; -- Wulf Calls
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=90 WHERE `Id`=27273; -- An Invitation from Moonglade
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=27299; -- Torn Ground
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=27300; -- Pushing Back
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=27301; -- Unbroken
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=27302; -- Simple Solutions
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=27303; -- Mercy for the Bound
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2580 WHERE `Id`=27305; -- Of Love and Family
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2880 WHERE `Id`=27310; -- No Weapons For You!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2880 WHERE `Id`=27312; -- Darkcloud Grimtotem
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3600 WHERE `Id`=27314; -- Grimtotem Chiefs: Isha Gloomaxe
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=65750 WHERE `Id`=27338; -- Our Boys on the Shore
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=65750 WHERE `Id`=27341; -- Scouting the Shore
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1860 WHERE `Id`=27343; -- The Hand of the Light
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1860 WHERE `Id`=27344; -- A Well-Earned Reward
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=780 WHERE `Id`=27349; -- Break in Communications: Dreadwatch Outpost
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=600 WHERE `Id`=27350; -- Break in Communications: Rutsak's Guard
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1860 WHERE `Id`=27351; -- A Royal Reward
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1860 WHERE `Id`=27353; -- Blessings of the Elements
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1860 WHERE `Id`=27354; -- Mastering the Arcane
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1860 WHERE `Id`=27356; -- The Circle's Future
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3000 WHERE `Id`=27359; -- Argent Reinforcements
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=660 WHERE `Id`=27360; -- Vengeance for Our Soldiers
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1860 WHERE `Id`=27361; -- Favored of the Light
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1860 WHERE `Id`=27362; -- Favored of Elune
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=840 WHERE `Id`=27364; -- On Whose Orders?
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=27366; -- Landgrab
UPDATE `quest_template` SET `RequiredNpcOrGoCount1`=1 WHERE `Id`=27368; -- Just Encased
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2640 WHERE `Id`=27372; -- A Gift For Fiona
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=32900 WHERE `Id`=27374; -- The Maw of Madness
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=32900 WHERE `Id`=27375; -- The Weeping Wound
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=27376; -- The Maw of Iso'rath
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=27379; -- The Terrors of Iso'rath
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=248050 WHERE `Id`=27380; -- Nightmare
UPDATE `quest_template` SET `RequiredSourceItemCount1`=1, `RequiredSourceItemCount2`=1, `RequiredSourceItemCount3`=1 WHERE `Id`=27392; -- I'm Not Supposed to Tell You This
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=27393; -- The Call of the Blade
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1860 WHERE `Id`=27395; -- A Marksman's Weapon
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1860 WHERE `Id`=27397; -- Dreamseeker's Task
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1860 WHERE `Id`=27400; -- Mastering the Arcane
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=840 WHERE `Id`=27401; -- What Tomorrow Brings
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1860 WHERE `Id`=27402; -- Token of Power
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=960 WHERE `Id`=27405; -- Fall Back!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1080 WHERE `Id`=27406; -- A Man Named Godfrey
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3750 WHERE `Id`=27411; -- Challenge to the Black Flight
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=330 WHERE `Id`=27422; -- A City Under Siege
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1380 WHERE `Id`=27423; -- Resistance is Futile
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27431; -- Tipping the Balance
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=27433; -- Shredderectomy
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1860 WHERE `Id`=27434; -- The Adept's Path
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1860 WHERE `Id`=27437; -- The Dark Cleric's Bidding
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1380 WHERE `Id`=27438; -- The Great Escape
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1860 WHERE `Id`=27439; -- Staff of the Light
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4200 WHERE `Id`=27440; -- Trolls, Ogres, and Orcs, Oh My!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1860 WHERE `Id`=27441; -- A Seer's Staff
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=8300 WHERE `Id`=27442; -- The War Has Many Fronts
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=8300 WHERE `Id`=27443; -- The War Has Many Fronts
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4200 WHERE `Id`=27444; -- The False Warchief
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4350 WHERE `Id`=27445; -- General Drakkisath, Hand of Nefarian
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=300 WHERE `Id`=27446; -- Tanaris is Calling
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2880 WHERE `Id`=27453; -- Catalysm
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2880 WHERE `Id`=27456; -- Gathering Some Grub(s)
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3600 WHERE `Id`=27465; -- Argent Call: The Noxious Glade
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=27468; -- Siege Tank Rescue
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=27469; -- Friends on The Other Side
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=27470; -- A Potential Ally
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=27471; -- Blackrock Anomaly
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1380 WHERE `Id`=27472; -- Rise, Godfrey
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=960 WHERE `Id`=27474; -- Breaking the Barrier
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=780 WHERE `Id`=27475; -- Unyielding Servitors
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1020 WHERE `Id`=27480; -- Ley Energies
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=124050 WHERE `Id`=27486; -- Warm Welcome
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27490; -- SI:7 Drop
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27491; -- Kor'kron Drop
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27492; -- Ogres & Ettins
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27493; -- Ogres & Ettins
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27495; -- Move the Mountain
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27496; -- Call in the Artillery
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27497; -- Call in the Artillery
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27500; -- Four Heads are Better than None
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27501; -- Four Heads are Better than None
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27503; -- Up to the Citadel
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=16550 WHERE `Id`=27504; -- Even Dragons Bleed
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27505; -- Draconic Mending
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27506; -- Life from Death
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27507; -- Encroaching Twilight
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27508; -- Far from the Nest
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27509; -- Breach in the Defenses
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=840 WHERE `Id`=27510; -- A Wolf in Bear's Clothing
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=78500 WHERE `Id`=27511; -- The Thrill of Discovery
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27517; -- Be Prepared
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27519; -- Under the Choking Sands
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27520; -- Minions of Al'Akir
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3150 WHERE `Id`=27522; -- Beat it Out of Them
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=27538; -- The Perfect Poultice
UPDATE `quest_template` SET `RewardOrRequiredMoney`=9000, `RewardMoneyMaxLevel`=16550 WHERE `Id`=27540; -- The Wildhammer
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27541; -- Lessons From the Past
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=900 WHERE `Id`=27547; -- Of No Consequence
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=900 WHERE `Id`=27548; -- Lessons in Fear
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27549; -- By the Light of the Stars
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1080 WHERE `Id`=27550; -- Pyrewood's Fall
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3600 WHERE `Id`=27569; -- Dark Iron Tacticians
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3750 WHERE `Id`=27571; -- The Grim Guzzler
UPDATE `quest_template` SET `RewardOrRequiredMoney`=9400, `RewardMoneyMaxLevel`=16550 WHERE `Id`=27572; -- A Gathering in Outland
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3900 WHERE `Id`=27573; -- The Dark Iron Pact
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4050 WHERE `Id`=27578; -- Morgan's Fruition
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=450 WHERE `Id`=27579; -- Into the Prison
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=480 WHERE `Id`=27582; -- Infiltrating Shadowforge City
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=65750 WHERE `Id`=27583; -- The Northern Flank
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=27584; -- Blood in the Surf
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3600 WHERE `Id`=27585; -- The 109th Division
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=27586; -- Shells on the Sea Shore
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4350 WHERE `Id`=27587; -- Maliciously Delicious
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3750 WHERE `Id`=27589; -- The Grim Guzzler
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=52300 WHERE `Id`=27595; -- The Prophet Hadassi
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3600 WHERE `Id`=27596; -- The Heart of the Mountain
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=52300 WHERE `Id`=27602; -- The Prophet's Dying Words
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3300 WHERE `Id`=27603; -- The Sealed Gate
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3600, `RequiredNpcOrGoCount1`=1 WHERE `Id`=27604; -- Jammal'an the Prophet
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3600 WHERE `Id`=27605; -- Eranikus
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=65750 WHERE `Id`=27607; -- The Southern Flank
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=27610; -- Scouting the Shore
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=27611; -- Blood on the Sand
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4500, `RequiredNpcOrGoCount2`=1 WHERE `Id`=27620; -- Like Rats
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=65750 WHERE `Id`=27621; -- Firebeard's Patrol
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=27622; -- Mo' Better Shredder
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27623; -- Colossal Guardians
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27624; -- After the Fall
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=78500 WHERE `Id`=27628; -- Send Word to Phaoris
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=65750 WHERE `Id`=27629; -- The Vizier's Vote
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=10450 WHERE `Id`=27630; -- The High Priest's Vote
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=52300 WHERE `Id`=27631; -- The High Commander's Vote
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=78500 WHERE `Id`=27632; -- Tanotep's Son
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3600 WHERE `Id`=27633; -- The Blood God Hakkar
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700 WHERE `Id`=27638; -- Just You and Garona
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=65750 WHERE `Id`=27640; -- Dunwalds Don't Die
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=164400 WHERE `Id`=27641; -- While Meeting The Family
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=27642; -- Sifting Through The Wreckage
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=65750, `Objectives`='Trouvez Donnelly Dunwald.' WHERE `Id`=27643; -- Donnelly Dunwald
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=65750, `Objectives`='Trouvez Eoin Dunwald.' WHERE `Id`=27644; -- Eoin Dunwald
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=65750, `Objectives`='Trouvez Cayden Dunwald.' WHERE `Id`=27645; -- Cayden Dunwald
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=164400 WHERE `Id`=27646; -- Finding Beak
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=164400 WHERE `Id`=27648; -- Once More Into The Fire
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=27649; -- A Steady Supply
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=164400 WHERE `Id`=27651; -- Doing It Like a Dunwald
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27653; -- Dark Assassins
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27655; -- Bring the Hammer Down
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700 WHERE `Id`=27658; -- Help from the Earthcaller
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27659; -- Portal Overload
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700 WHERE `Id`=27660; -- Spirit of the Loch
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27661; -- Fire the Cannon
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27662; -- Unbinding
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=130800 WHERE `Id`=27669; -- Do the Honors
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1860 WHERE `Id`=27672; -- The Chamber of Khaz'mul
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1860 WHERE `Id`=27673; -- It's What's Inside That Counts
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1860 WHERE `Id`=27676; -- Behind Closed Doors
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1980 WHERE `Id`=27677; -- Archaedas, The Ancient Stone Watcher
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1860 WHERE `Id`=27679; -- The Chamber of Khaz'mul
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1980 WHERE `Id`=27680; -- Archaedas, The Ancient Stone Watcher
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1860 WHERE `Id`=27681; -- Behind Closed Doors
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1860 WHERE `Id`=27682; -- We Require More Minerals
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=27685; -- Good Deed Left Undone
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=206700 WHERE `Id`=27689; -- Distract Them for Me
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=65750 WHERE `Id`=27690; -- Narkrall, the Drake-Tamer
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4350 WHERE `Id`=27693; -- The Warden's Game
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4500 WHERE `Id`=27694; -- Pool of Tears
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27696; -- The Elementium Axe
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1380 WHERE `Id`=27697; -- Corruption in Maraudon
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=27699; -- Shark Weak
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27701; -- Dragon, Unchained
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27703; -- Coup de Grace
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=78500 WHERE `Id`=27706; -- The Scepter of Orsis
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27707; -- Neferset Prison
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82550 WHERE `Id`=27708; -- The Warden's Time
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=16550 WHERE `Id`=27712; -- Back to the Elementium Depths
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=27717; -- Piece of the Past
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=8300 WHERE `Id`=27722; -- Warchief's Command: Deepholm!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=8300 WHERE `Id`=27727; -- Hero's Call: Deepholm!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=27729; -- Once More, With Eeling
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=840 WHERE `Id`=27733; -- The Good Ol' Switcheroo
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=130800 WHERE `Id`=27738; -- The Pit of Scales
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=900 WHERE `Id`=27739; -- The Gnoll King
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27742; -- A Little on the Side
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27743; -- While We're Here
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27744; -- Rune Ruination
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=27747; -- Total War
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=27750; -- War Forage
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=27751; -- Crushing the Wildhammer
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=27752; -- Fight Like a Wildhammer
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=27754; -- Dragonmaw Takedown
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27755; -- The Curse of the Tombs
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=78500 WHERE `Id`=27760; -- Artificial Intelligence
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27761; -- A Disarming Distraction
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=330 WHERE `Id`=27762; -- Fuselight, Ho!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1680 WHERE `Id`=27764; -- A Strange Request
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27777; -- Core Access Codes
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27778; -- Hacking the Wibson
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=130800 WHERE `Id`=27779; -- Gnomebliteration
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=16550 WHERE `Id`=27783; -- Garona Needs You
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27786; -- The Hammer of Twilight
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=248050 WHERE `Id`=27788; -- Skullcrusher the Mountain
UPDATE `quest_template` SET `RequiredNpcOrGoCount1`=1 WHERE `Id`=27792; -- All's Fair in Love, War, and Archaeology
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4800 WHERE `Id`=27795; -- Tides of Darkness
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=206700 WHERE `Id`=27798; -- Water of Life
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=27803; -- Welcome Relief
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=27804; -- The Only Homes We Have
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550, `RequiredSourceItemCount1`=1, `RequiredSourceItemCount2`=1, `RequiredSourceItemCount3`=1 WHERE `Id`=27805; -- Small Comforts
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=65750 WHERE `Id`=27807; -- Clan Mullan
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=27808; -- Stubborn as a Doyle
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=65750 WHERE `Id`=27809; -- Firebeard Bellows
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=27811; -- The Scent of Battle
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=164400 WHERE `Id`=27817; -- Dropping the Hammer
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4800 WHERE `Id`=27821; -- Orcs and Humans
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4800 WHERE `Id`=27822; -- Lumbering Oafs
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3600 WHERE `Id`=27825; -- Survival of the Fattest
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27836; -- Stopping the Spread
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27837; -- Trespassers in the Water
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27838; -- The Root of the Corruption
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27839; -- Ancient Weapons
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4800 WHERE `Id`=27840; -- Draenethyst Crystals
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=27842; -- Only the Beginning
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4800 WHERE `Id`=27843; -- Reinforcements Denied
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=27844; -- Traitors!!!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4800 WHERE `Id`=27845; -- Marking the Fallen
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=540 WHERE `Id`=27847; -- Not Quite There
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7200 WHERE `Id`=27849; -- Assault on Stonard
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=570 WHERE `Id`=27850; -- The Defias Kingpin
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7200 WHERE `Id`=27851; -- Cutting Supply
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4800 WHERE `Id`=27860; -- The Lost Ones
UPDATE `quest_template` SET `RequiredNpcOrGoCount1`=1 WHERE `Id`=27861; -- The Crucible of Carnage: The Bloodeye Bruiser!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=248050 WHERE `Id`=27863; -- The Crucible of Carnage: The Bloodeye Bruiser!
UPDATE `quest_template` SET `RequiredNpcOrGoCount1`=1 WHERE `Id`=27864; -- The Crucible of Carnage: The Deadly Dragonmaw!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=248050 WHERE `Id`=27865; -- The Crucible of Carnage: The Wayward Wildhammer!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=248050 WHERE `Id`=27866; -- The Crucible of Carnage: Calder's Creation!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=248050 WHERE `Id`=27867; -- The Crucible of Carnage: The Earl of Evisceration!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=330750 WHERE `Id`=27868; -- The Crucible of Carnage: The Twilight Terror!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=33000 WHERE `Id`=27874; -- Aviana's Legacy
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4950 WHERE `Id`=27875; -- Prayerblossom
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4950 WHERE `Id`=27876; -- Secrets of the Mire
UPDATE `quest_template` SET `RequiredNpcOrGoCount1`=1 WHERE `Id`=27882; -- It's Not About History, It's About Power
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2580 WHERE `Id`=27883; -- The Warden's Pawn
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2580 WHERE `Id`=27884; -- The Sentinel's Pawn
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1800 WHERE `Id`=27889; -- New Kargath
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=26200 WHERE `Id`=27899; -- That Gleam in his Eye
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27900; -- I've Got This Guy
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27901; -- They Don't Know What They've Got Here
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4950, `RequiredNpcOrGoCount1`=6 WHERE `Id`=27902; -- The Purespring
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27903; -- Ignition
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4950 WHERE `Id`=27904; -- Breath of Mist
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2340 WHERE `Id`=27915; -- The Heart of the Temple
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2460 WHERE `Id`=27918; -- The Harborage
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2460 WHERE `Id`=27919; -- Onward to the Blasted Lands
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=660 WHERE `Id`=27920; -- Armored to the Teeth
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27922; -- Traitors!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27923; -- Smoke in Their Eyes
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27924; -- Budd's Plan
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27926; -- Eastern Hospitality
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27928; -- A Favor for the Furrier
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=27929; -- Drag 'em Down
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=8300 WHERE `Id`=27931; -- The Quaking Fields
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=83150 WHERE `Id`=27934; -- One With the Ground
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104000 WHERE `Id`=27935; -- Bring Down the Avalanche
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=10450 WHERE `Id`=27937; -- The Hero Returns
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27939; -- The Desert Fox
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27940; -- Dirty Birds
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27941; -- Fashionism
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27942; -- Idolatry
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27943; -- Angered Spirits
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27944; -- Thinning the Brood
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=27945; -- Paint it Black
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=65750 WHERE `Id`=27947; -- A Vision of Twilight
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27948; -- A Sticky Task
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27949; -- The Forgotten
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=27951; -- We All Must Sacrifice
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=10450 WHERE `Id`=27952; -- The Explorers
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=10450 WHERE `Id`=27953; -- The Reliquary
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3600 WHERE `Id`=27963; -- A New Master... But Who?
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3600 WHERE `Id`=27964; -- Dig-Boss Dinwhisker
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27966; -- Salvaging the Remains
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27967; -- First Lieutenant Connor
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=780 WHERE `Id`=27968; -- Fury of the Pack
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=130800 WHERE `Id`=27969; -- Make Yourself Useful
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27970; -- Captain P. Harris
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27971; -- Rattling Their Cages
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27972; -- Boosting Morale
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27973; -- Watch Out For Splinters!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=600 WHERE `Id`=27974; -- This Land is Our Land
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27975; -- WANTED: Foreman Wellson
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27978; -- Ghostbuster
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3750 WHERE `Id`=27980; -- The Spiders Have to Go
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3750 WHERE `Id`=27983; -- Lunk's Adventure: Cranky Little Dwarfs
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4650 WHERE `Id`=27985; -- Prayer to Elune
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=390 WHERE `Id`=27986; -- In the Hall of the Mountain-Lord
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=27987; -- Cannonball!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3300 WHERE `Id`=27989; -- Ruumbo Demands Honey
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=27990; -- Battlezone
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400, `RequiredSourceItemCount1`=1 WHERE `Id`=27992; -- Magnets, How Do They Work?
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=26200 WHERE `Id`=27993; -- Take it to 'Em!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3300 WHERE `Id`=27994; -- Ruumbo Demands Justice
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3450 WHERE `Id`=27995; -- Dance for Ruumbo!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720 WHERE `Id`=27996; -- Orders Are For the Living
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3300 WHERE `Id`=27997; -- The Corruption of the Jadefire
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=780 WHERE `Id`=27998; -- Sweet, Merciless Revenge
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=13150 WHERE `Id`=27999; -- The Fate of the Doyles
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3300 WHERE `Id`=28000; -- Do the Imp-Possible
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=65750 WHERE `Id`=28001; -- A Coward's Due
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=270 WHERE `Id`=28031; -- Special Delivery for Brivelthwerp
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3900 WHERE `Id`=28032; -- The Mysteries of the Fire-Gizzard
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=390 WHERE `Id`=28033; -- Deceit
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1980 WHERE `Id`=28034; -- Lunk's Adventure: Rendan's Weakness
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=390 WHERE `Id`=28035; -- The Mountain-Lord's Support
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700 WHERE `Id`=28038; -- Blood in the Highlands
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=28041; -- Bait and Throttle
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=270 WHERE `Id`=28042; -- Special Delivery for Brivelthwerp
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=28043; -- How to Maim Your Dragon
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3450 WHERE `Id`=28044; -- Touch the Untouchable
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28046; -- Finish The Job
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3450 WHERE `Id`=28049; -- See the Invisible
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28050; -- Shark Tank
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5850 WHERE `Id`=28052; -- Operation: Stir the Cauldron
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4050 WHERE `Id`=28057; -- Kill 'em With Sleep Deprivation
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28059; -- Claiming The Keep
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100 WHERE `Id`=28060; -- Twisted Twilight Ties
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100 WHERE `Id`=28062; -- From Whence He Came
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28063; -- Leave No Weapon Behind
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6000 WHERE `Id`=28064; -- Welcome to the Brotherhood
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=300 WHERE `Id`=28085; -- Trouble at Highperch
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28090; -- Precious Goods
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28091; -- Easy Pickings
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28092; -- If The Key Fits
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28093; -- Pressing Forward
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28094; -- Paving the Way
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=16550 WHERE `Id`=28097; -- The Gates of Grim Batol
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1740 WHERE `Id`=28100; -- A Talking Totem
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3450 WHERE `Id`=28102; -- Fight the Power
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28103; -- Easy Pickings
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28104; -- Precious Goods
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=28105; -- Kavem the Callous
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28107; -- Paving the Way
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28108; -- If The Key Fits
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28109; -- Pressing Forward
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=78500 WHERE `Id`=28112; -- Escape From the Lost City
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4350 WHERE `Id`=28113; -- Break the Unbreakable
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3450 WHERE `Id`=28116; -- Crying Violet
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3450 WHERE `Id`=28119; -- Purity From Corruption
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28120; -- Learning From The Past
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3450 WHERE `Id`=28121; -- Forces of Jaedenar
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=98650 WHERE `Id`=28123; -- The Demon Chain
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4350 WHERE `Id`=28126; -- Dousing the Flames of Protection
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4350 WHERE `Id`=28128; -- The Inner Circle
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3450 WHERE `Id`=28129; -- The Demon Prince
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28130; -- Not The Friendliest Town
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3450 WHERE `Id`=28131; -- Twin Temptresses
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=26200 WHERE `Id`=28132; -- Efficient Excavations
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=164400 WHERE `Id`=28133; -- Fury Unbound
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=28134; -- Impending Retribution
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=78500 WHERE `Id`=28135; -- Al'Akir's Vengeance
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28137; -- Teach A Man To Fish.... Or Steal
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=28141; -- Relics of the Sun King
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=28145; -- Venomblood Antidote
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28147; -- Purple is Your Color
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3300 WHERE `Id`=28148; -- Culling the Corrupted
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28149; -- Whispers in the Wind
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=330 WHERE `Id`=28150; -- An Arcane Ally
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28151; -- Dressed to Kill
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3450 WHERE `Id`=28153; -- Shadow Lord Fel'dan
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5250 WHERE `Id`=28155; -- Lord Banehollow
UPDATE `quest_template` SET `RequiredNpcOrGoCount1`=1 WHERE `Id`=28157; -- Four Twilight Elements
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4950 WHERE `Id`=28160; -- Spread the Word
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28166; -- Thog's Nightlight
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28170; -- Night Terrors
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700 WHERE `Id`=28171; -- And the Sky Streaked Red
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4050 WHERE `Id`=28172; -- Done Nothing Wrong
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28173; -- Blackout
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4050 WHERE `Id`=28174; -- Burning Vengeance
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28175; -- Shining Through the Dark
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28176; -- Following the Young Home
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4050 WHERE `Id`=28177; -- Stocking Up
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4050 WHERE `Id`=28178; -- A Future Project
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4050 WHERE `Id`=28179; -- Mud Hunter
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4050 WHERE `Id`=28181; -- Warlocks Have the Neatest Stuff
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100 WHERE `Id`=28182; -- Shadow Boxing
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28191; -- A Fitting End
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=28194; -- The Great Escape
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=28195; -- Sending a Message
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=10450 WHERE `Id`=28198; -- The Weakest Link
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=28200; -- The Element of Supplies
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=28201; -- Ploughshares to Swords
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100 WHERE `Id`=28202; -- A Perfect Costume
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100 WHERE `Id`=28203; -- A Perfect Costume
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100 WHERE `Id`=28204; -- A Perfect Costume
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100 WHERE `Id`=28205; -- A Perfect Costume
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=28210; -- Shaping Up
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=28211; -- Tempered in Elemental Flame
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=28212; -- Hot Stuff
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=28215; -- Potential Energy
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=28216; -- Magmalord Falthazar
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100 WHERE `Id`=28227; -- Golem Training
UPDATE `quest_template` SET `RequiredSourceItemCount1`=1 WHERE `Id`=28229; -- Nature and Nurture
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=28234; -- They Took Me Pants!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=65750 WHERE `Id`=28238; -- Twilight Shores
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2040 WHERE `Id`=28239; -- Into the Black Tooth Hovel
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=65750 WHERE `Id`=28241; -- A Vision of Twilight
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=206700 WHERE `Id`=28247; -- Last of Her Kind
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=41350 WHERE `Id`=28249; -- Crushblow
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=78500 WHERE `Id`=28250; -- Thieving Little Pluckers
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100 WHERE `Id`=28252; -- The Kodocaller's Horn
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=420 WHERE `Id`=28254; -- A Needle in a Hellhole
UPDATE `quest_template` SET `RequiredSourceItemCount1`=1 WHERE `Id`=28264; -- Navarax's Gambit
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=10450 WHERE `Id`=28269; -- Meet Me In Vir'sar
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=28271; -- Reduced Productivity
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=28272; -- Missing Pieces
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28275; -- Bombs Away!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=52300 WHERE `Id`=28276; -- Salhet's Secret
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=28277; -- Salhet the Tactician
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=420 WHERE `Id`=28287; -- Meet with Farseer Umbrua
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=420 WHERE `Id`=28289; -- Moonglade Calls
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=78500 WHERE `Id`=28291; -- Return to Camp
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=10450 WHERE `Id`=28292; -- That's No Pyramid!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=10450 WHERE `Id`=28293; -- That's No Pyramid!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=10450 WHERE `Id`=28295; -- Meetup with the Caravan
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=10450 WHERE `Id`=28296; -- Meetup with the Caravan
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=420 WHERE `Id`=28302; -- Meet with Sunwalker Atohmo
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4200 WHERE `Id`=28311; -- Blackened Ashes
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4200 WHERE `Id`=28312; -- Latent Demons of the Land
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4200 WHERE `Id`=28313; -- A Heap of Delicious Worg
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5250 WHERE `Id`=28314; -- Blood Tour
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5250 WHERE `Id`=28315; -- Draconic Vanguard
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4200 WHERE `Id`=28316; -- A Deal With a Dragon
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2100 WHERE `Id`=28317; -- A Delivery for Thorg'izog
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2100 WHERE `Id`=28318; -- A Delivery for Neeralak
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2100 WHERE `Id`=28319; -- A Delivery for Xi'lun
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=28320; -- Assault on Dreadmaul Rock
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4950 WHERE `Id`=28338; -- Deadwood of the North
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100 WHERE `Id`=28343; -- The Breath of Cenarius
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=28350; -- Master Trapper
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=28351; -- Unlimited Potential
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=28352; -- Camel Tow
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1320 WHERE `Id`=28355; -- Terrible Little Creatures
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=10450 WHERE `Id`=28363; -- Stirred the Hornet's Nest
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=28367; -- Shroud of the Makers
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700 WHERE `Id`=28377; -- Rescue at Glopgut's Hollow
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28378; -- Find Fanny
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1980 WHERE `Id`=28381; -- The Denmother
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3900 WHERE `Id`=28383; -- Wisps of the Woods
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3900 WHERE `Id`=28385; -- Oil and Irony
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4950 WHERE `Id`=28386; -- Borrowed Bombs
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3900 WHERE `Id`=28387; -- Burnout
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=3900 WHERE `Id`=28388; -- Bloody Wages
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=130800 WHERE `Id`=28390; -- Glop, Son of Glop
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=130800 WHERE `Id`=28391; -- The Restless Brood
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=960 WHERE `Id`=28392; -- The Timbermaw Tribe
UPDATE `quest_template` SET `RequiredSourceItemCount2`=1 WHERE `Id`=28393; -- A Dangerous Alliance
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100, `RequiredSourceItemCount2`=1 WHERE `Id`=28394; -- The Golem Lord's Creations
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100, `RequiredSourceItemCount2`=1 WHERE `Id`=28398; -- The Pyromancer's Grimoire
UPDATE `quest_template` SET `RequiredSourceItemCount2`=1 WHERE `Id`=28399; -- Stones of Binding
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100, `RequiredSourceItemCount2`=1 WHERE `Id`=28401; -- Slaves of the Firelord
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=28402; -- Schnottz So Fast
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100 WHERE `Id`=28405; -- Weapons of Darkness
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100, `RequiredSourceItemCount1`=1 WHERE `Id`=28406; -- The Dark Iron Army
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=28408; -- Something Bold
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=28409; -- Something Brewed
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=28410; -- Something Stolen
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=28411; -- Something Stewed
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=98650 WHERE `Id`=28413; -- Words and Music By...
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4050 WHERE `Id`=28416; -- Burning Vengeance
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4050 WHERE `Id`=28419; -- Stocking Up
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4050 WHERE `Id`=28420; -- A Future Project
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4050 WHERE `Id`=28421; -- Mud Hunter
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4050 WHERE `Id`=28433; -- Grunt Work
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100 WHERE `Id`=28434; -- Strategic Cuts
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4200 WHERE `Id`=28449; -- Placing the Pawns
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100, `RequiredSourceItemCount2`=1 WHERE `Id`=28457; -- A Dangerous Alliance
UPDATE `quest_template` SET `RequiredSourceItemCount2`=1 WHERE `Id`=28458; -- The Pyromancer's Grimoire
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100 WHERE `Id`=28459; -- Stones of Binding
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100 WHERE `Id`=28460; -- Threat of the Winterfall
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100, `RequiredSourceItemCount2`=1 WHERE `Id`=28461; -- The Golem Lord's Creations
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100, `RequiredSourceItemCount1`=1 WHERE `Id`=28463; -- The Dark Iron Army
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=4050 WHERE `Id`=28464; -- Falling to Corruption
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100, `RequiredSourceItemCount2`=1 WHERE `Id`=28465; -- Slaves of the Firelord
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100, `RequiredSourceItemCount1`=5 WHERE `Id`=28466; -- Weapons of Darkness
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100 WHERE `Id`=28469; -- Winterfall Runners
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100, `RequiredSourceItemCount1`=5 WHERE `Id`=28473; -- Weapons of Darkness
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100 WHERE `Id`=28474; -- Twilight Scheming
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100 WHERE `Id`=28478; -- Twilight Scheming
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2100 WHERE `Id`=28479; -- The Ruins of Kel'Theril
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=28486; -- Salhet's Gambit
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=28488; -- Beneath the Surface
UPDATE `quest_template` SET `RequiredNpcOrGoCount1`=1 WHERE `Id`=28491; -- Not Fireflies, Flameflies
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=90 WHERE `Id`=28492; -- Hero's Call: Ashenvale!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=28498; -- The Secret of Nahom
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=28499; -- Punish the Trespassers
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=28500; -- The Cypher of Keset
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=164400 WHERE `Id`=28501; -- The Defense of Nahom
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=28502; -- The Bandit Warlord
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=480 WHERE `Id`=28508; -- The Battle for Andorhal
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=360 WHERE `Id`=28512; -- To the Aid of the Thorium Brotherhood
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=420 WHERE `Id`=28515; -- Mouton Flamestar
UPDATE `quest_template` SET `RequiredNpcOrGoCount1`=1 WHERE `Id`=28518; -- Legacy of the High Elves
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=197300 WHERE `Id`=28520; -- The Fall of Neferset City
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100 WHERE `Id`=28522; -- Winterfall Activity
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=480 WHERE `Id`=28527; -- Warchief's Command: Silithus!
UPDATE `quest_template` SET `RequiredNpcOrGoCount1`=8 WHERE `Id`=28530; -- Scalding Signs
UPDATE `quest_template` SET `NextQuestIdChain`=14384 WHERE `Id`=28531; -- Hero's Call: Desolace!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=28533; -- The High Council's Decision
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5250 WHERE `Id`=28540; -- Doin' De E'ko Magic
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=330 WHERE `Id`=28542; -- Warchief's Command: Felwood!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=330 WHERE `Id`=28543; -- Hero's Call: Felwood!
UPDATE `quest_template` SET `NextQuestIdChain`=14184 WHERE `Id`=28548; -- Warchief's Command: Desolace!
UPDATE `quest_template` SET `NextQuestIdChain`=24504 WHERE `Id`=28549; -- Warchief's Command: Southern Barrens!
UPDATE `quest_template` SET `NextQuestIdChain`=24862 WHERE `Id`=28550; -- Hero's Call: Southern Barrens!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=150 WHERE `Id`=28551; -- Hero's Call: Southern Barrens!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=210 WHERE `Id`=28552; -- Hero's Call: Dustwallow Marsh!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1440 WHERE `Id`=28556; -- Breaking the Hand
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=13150 WHERE `Id`=28557; -- Warchief's Command: Uldum!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=13150 WHERE `Id`=28558; -- Hero's Call: Uldum!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=28561; -- Nahom Must Hold
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=660 WHERE `Id`=28563; -- Hero's Call: Redridge Mountains!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=90 WHERE `Id`=28564; -- Hero's Call: Duskwood!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=450 WHERE `Id`=28570; -- The Bogpaddle Bullet
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=270 WHERE `Id`=28578; -- Hero's Call: Eastern Plaguelands!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=330 WHERE `Id`=28579; -- Hero's Call: Badlands!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=360 WHERE `Id`=28582; -- Hero's Call: Searing Gorge!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=65750 WHERE `Id`=28583; -- Krazzworks
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=28584; -- Quality Construction
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=28586; -- Pool Pony Rescue
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=28588; -- Wildhammer Infestation
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=164400 WHERE `Id`=28589; -- Everything But the Kitchen Sink
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=28591; -- Off The Wall
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=28592; -- Parting Packages
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=28593; -- Of Utmost Importance
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=28594; -- Highbank, Crybank
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=164400 WHERE `Id`=28595; -- Krazz Works!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=28596; -- Welcome to Highbank!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=28597; -- Burnin' at Both Ends
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=164400 WHERE `Id`=28598; -- Aiming High
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=28611; -- The Defilers' Ritual
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=120 WHERE `Id`=28619; -- Warchief's Command: Arathi Highlands!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=78500 WHERE `Id`=28622; -- Three if by Air
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=65750 WHERE `Id`=28623; -- The Push Westward
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5550 WHERE `Id`=28625; -- Chop Chop
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=28640; -- Fresh Frostsabers
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=28654; -- The Heart of the Matter
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5250 WHERE `Id`=28656; -- Strange Life Forces
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28662; -- Learning From The Past
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28678; -- Captain P. Harris
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28679; -- Rattling Their Cages
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28680; -- Boosting Morale
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28681; -- Shark Tank
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28682; -- Claiming The Keep
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28683; -- Thinning the Brood
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28684; -- A Sticky Task
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28685; -- Leave No Weapon Behind
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28686; -- Not The Friendliest Town
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28687; -- Teach A Man To Fish.... Or Steal
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28689; -- The Forgotten
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28690; -- Salvaging the Remains
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28691; -- First Lieutenant Connor
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400, `RequiredSourceItemCount1`=1 WHERE `Id`=28692; -- Magnets, How Do They Work?
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28693; -- Finish The Job
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28694; -- Watch Out For Splinters!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28695; -- WANTED: Foreman Wellson
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28696; -- Bombs Away!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28697; -- Ghostbuster
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28698; -- Cannonball!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=120 WHERE `Id`=28699; -- Hero's Call: Northern Stranglethorn Vale!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28700; -- Taking the Overlook Back
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=150 WHERE `Id`=28702; -- Hero's Call: The Cape of Stranglethorn!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=780 WHERE `Id`=28709; -- Hero's Call: Northrend!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700 WHERE `Id`=28712; -- Enter the Dragon Queen
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=13150 WHERE `Id`=28716; -- Hero's Call: Twilight Highlands!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=13150 WHERE `Id`=28717; -- Warchief's Command: Twilight Highlands!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5700 WHERE `Id`=28719; -- A Little Gamy
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28721; -- Walk A Mile In Their Shoes
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=28722; -- Yetiphobia
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=8300 WHERE `Id`=28732; -- This Can Only Mean One Thing...
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=28733; -- Basic Botany
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=166350 WHERE `Id`=28735; -- To the Chamber of Incineration!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=104600 WHERE `Id`=28736; -- Fire From the Sky
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=166350 WHERE `Id`=28737; -- What Is This Place?
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=166350 WHERE `Id`=28738; -- The Twilight Forge
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=166350 WHERE `Id`=28740; -- Do My Eyes Deceive Me?
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=166350 WHERE `Id`=28741; -- Ascendant Lord Obsidius
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6900 WHERE `Id`=28742; -- Shy-Rotam
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6900 WHERE `Id`=28745; -- Screechy Keen
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=209200 WHERE `Id`=28746; -- Penetrating Their Defenses
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=28747; -- Someone Setup the Pumpkin Bomb
UPDATE `quest_template` SET `RewardOrRequiredMoney`=376000, `RewardMoneyMaxLevel`=330750 WHERE `Id`=28748; -- Lawn of the Dead
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=480 WHERE `Id`=28749; -- The Battle for Andorhal
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=480 WHERE `Id`=28750; -- The Battle for Andorhal
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=28751; -- Tending the Garden
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=209200 WHERE `Id`=28753; -- Doing it the Hard Way
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=206700 WHERE `Id`=28758; -- Battle of Life and Death
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=263100 WHERE `Id`=28760; -- Vengeance for Orsis
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400, `RequiredSourceItemCount2`=1 WHERE `Id`=28775; -- Broken Serpent Figurine
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400, `RequiredSourceItemCount2`=1 WHERE `Id`=28776; -- Broken Earthen Figurine
UPDATE `quest_template` SET `RequiredSourceItemCount2`=1 WHERE `Id`=28777; -- Broken Owl Figurine
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400, `RequiredSourceItemCount2`=1 WHERE `Id`=28778; -- Broken Boar Figurine
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=263100 WHERE `Id`=28779; -- A Long Way from Home
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=330750 WHERE `Id`=28781; -- Targets of Opportunity
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6900 WHERE `Id`=28782; -- A Bird of Legend
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=330750 WHERE `Id`=28783; -- The Source of Their Power
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=263100 WHERE `Id`=28814; -- Followers and Leaders
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=263100 WHERE `Id`=28815; -- Twilight Documents
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=263100 WHERE `Id`=28824; -- Wayward Child
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=166350 WHERE `Id`=28833; -- Rescue the Earthspeaker!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=166350 WHERE `Id`=28834; -- Rescue the Earthspeaker!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=166350 WHERE `Id`=28836; -- Sins of the Sea Witch
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=166350 WHERE `Id`=28843; -- Sins of the Sea Witch
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=13150 WHERE `Id`=28845; -- The Vortex Pinnacle
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=65750 WHERE `Id`=28849; -- Twilight Skies
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=330750 WHERE `Id`=28852; -- Soften them Up
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=330750 WHERE `Id`=28853; -- Kill the Courier
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=330750 WHERE `Id`=28854; -- Closing a Dark Chapter
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2460 WHERE `Id`=28857; -- Blasted Lands: The Other Side of the World
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=2460 WHERE `Id`=28859; -- The Dunes of Silithus
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=28860; -- Keeping the Dragonmaw at Bay
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=28861; -- Fight Like a Wildhammer
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=28862; -- Never Leave a Dinner Behind
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=164400 WHERE `Id`=28863; -- Warlord Halthar is Back
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=28864; -- Beer Run
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=1200 WHERE `Id`=28865; -- Call of the Warmatron
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=10450 WHERE `Id`=28866; -- Into the Stonecore
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=10450 WHERE `Id`=28869; -- Pebble
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=16550 WHERE `Id`=28870; -- Return to the Lost City
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=28871; -- Crushing the Wildhammer
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=28872; -- Total War
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=28873; -- Another Maw to Feed
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=131550 WHERE `Id`=28874; -- Hook 'em High
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=164400 WHERE `Id`=28875; -- Bring Down the High Shaman
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28882; -- Victory in Tol Barad
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=28884; -- Victory in Tol Barad
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=28910; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=28911; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=28913; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=28914; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=28916; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=28917; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=28918; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=28920; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=28922; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=28924; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=28925; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=28926; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=28927; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=28928; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=28929; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=28930; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=28932; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=28934; -- Crushing the Crown
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=28935; -- Crushing the Crown
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=28943; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=28944; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=28946; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=28947; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=28948; -- Desecrate this Fire!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=28949; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=28950; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=29030; -- Honor the Flame
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=29031; -- Honor the Flame
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29032; -- Get Them While They're Young
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29034; -- They Grow Up So Fast
UPDATE `quest_template` SET `RewardOrRequiredMoney`=47000, `RewardMoneyMaxLevel`=82700 WHERE `Id`=29036; -- Honor the Flame
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29051; -- Cub's First Toy
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=6600 WHERE `Id`=29066; -- Good News... and Bad News
UPDATE `quest_template` SET `RewardOrRequiredMoney`=700, `RewardMoneyMaxLevel`=16550 WHERE `Id`=29074; -- A Season for Celebration
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700 WHERE `Id`=29075; -- A Time to Gain
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29093; -- Cruisin' the Chasm
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29100; -- Bwemba's Spirit
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=124050 WHERE `Id`=29101; -- Punting Season
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29102; -- To Fort Livingston
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29103; -- Serpents and Poison
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29105; -- Nesingwary Will Know
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29106; -- The Biggest Diamond Ever!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29107; -- Malfurion Has Returned!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=780 WHERE `Id`=29109; -- Mor'shan Caravan Pick-Up
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29114; -- Track the Tracker
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29116; -- Follow That Cat
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29117; -- Let's Go Fly a Kite
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29119; -- You Scream, I Scream...
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29122; -- Echoes of Nemesis
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29123; -- Rage Against the Flames
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=124050 WHERE `Id`=29125; -- Between the Trees
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29126; -- The Power of Malorne
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29127; -- Rage Against the Flames
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=206700 WHERE `Id`=29128; -- The Protectors of Hyjal
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29129; -- A Legendary Engagement
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29134; -- A Wrinkle in Time
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=248050 WHERE `Id`=29135; -- All-Seeing Eye
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29137; -- Breach in the Defenses
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29138; -- Burn Victims
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29139; -- Aggressive Growth
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29141; -- The Harder They Fall
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29142; -- Traitors Return
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29143; -- Wisp Away
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=124050 WHERE `Id`=29144; -- Clean Up in Stormwind
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=16550 WHERE `Id`=29145; -- Opening the Door
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29146; -- Ridin' the Rocketway
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=124050 WHERE `Id`=29147; -- Call the Flock
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29148; -- Wings Aflame
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29149; -- Rage Against the Flames
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29150; -- Voodoo Zombies
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29154; -- Booty Bay's Interests
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=16550 WHERE `Id`=29157; -- The Zandalari Menace
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29159; -- Pyrorachnophobia
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29160; -- Egg-stinction
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=124050 WHERE `Id`=29161; -- Those Bears Up There
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29163; -- Rage Against the Flames
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=124050 WHERE `Id`=29164; -- Perfecting Your Howl
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29166; -- Supplies for the Other Side
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29167; -- The Banshee Queen
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=330750 WHERE `Id`=29172; -- The Beasts Within
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=330750 WHERE `Id`=29173; -- Secondary Targets
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=330750, `RequiredNpcOrGoCount3`=1 WHERE `Id`=29175; -- Break Their Spirits
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29176; -- The Fallen Chieftain
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=66000 WHERE `Id`=29177; -- Vigilance on Wings
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29179; -- Hostile Elements
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=206700 WHERE `Id`=29181; -- Druids of the Talon
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=206700 WHERE `Id`=29186; -- The Hex Lord's Fetish
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29189; -- Wicked Webs
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29190; -- Let's Go Fly a Kite
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29191; -- You Scream, I Scream...
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29192; -- The Wardens are Watching
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=206700 WHERE `Id`=29194; -- Through a Glass, Darkly
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=16550 WHERE `Id`=29196; -- To the Sanctuary!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29197; -- Caught Unawares
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29200; -- Leyara
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=206700 WHERE `Id`=29201; -- Through the Gates of Hell
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=16550 WHERE `Id`=29202; -- The Fate of Runetotem
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=206700 WHERE `Id`=29203; -- Into the Depths
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29205; -- The Forlorn Spire
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29206; -- Into the Fire
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29210; -- Enduring the Heat
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29211; -- Solar Core Destruction
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=206700 WHERE `Id`=29214; -- The Shadow Wardens
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=206700 WHERE `Id`=29217; -- The Captive Scouts
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29219; -- Bwemba's Spirit
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29220; -- To Bambala
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29221; -- Serpents and Poison
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29223; -- Nesingwary Will Know
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29226; -- Track the Tracker
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29228; -- Follow That Cat
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29230; -- Mauti
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29232; -- Bury Me With Me Boots...
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=248050 WHERE `Id`=29234; -- Delegation
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29235; -- Defend Grom'gol
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29236; -- To Hardwrench Hideaway
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29237; -- Voodoo Zombies
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29238; -- Bad Supplies
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=330750, `RequiredNpcOrGoCount2`=1, `RequiredNpcOrGoCount3`=1 WHERE `Id`=29241; -- Break the Godbreaker
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=330750 WHERE `Id`=29242; -- Putting a Price on Priceless
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=206700 WHERE `Id`=29243; -- Strike at the Heart
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29246; -- Relieving the Pain
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29247; -- Treating the Wounds
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29248; -- Releasing the Pressure
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700 WHERE `Id`=29249; -- Planting Season
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29251; -- Booty Bay's Interests
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29252; -- Booty Bay's Interests
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29255; -- Embergris
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29257; -- Steal Magmolias
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29263; -- A Bitter Pill
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29264; -- Flamewakers of the Molten Flow
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29265; -- Fire Flowers
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29270; -- Time Grows Short
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29272; -- Need... Water... Badly...
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29274; -- Hounds of Shannox
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29275; -- Fandral's Methods
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29276; -- The Flame Spider Queen
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29278; -- Living Obsidium
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=206700 WHERE `Id`=29279; -- Filling the Moonwell
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=41350 WHERE `Id`=29280; -- Nourishing Waters
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=206700 WHERE `Id`=29281; -- Additional Armaments
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=206700 WHERE `Id`=29283; -- Calling the Ancients
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=41350 WHERE `Id`=29284; -- Aid of the Ancients
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400, `RequiredNpcOrGoCount1`=1 WHERE `Id`=29287; -- Peaked Interest
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29288; -- Starting Young
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29290; -- Fire in the Skies
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400, `RequiredSourceItemCount2`=1 WHERE `Id`=29295; -- The Bigger They Are
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29296; -- Territorial Birds
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29297; -- Bye Bye Burdy
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700 WHERE `Id`=29298; -- A Smoke-Stained Locket
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29299; -- Some Like It Hot
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700 WHERE `Id`=29302; -- Unlocking the Secrets Within
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700 WHERE `Id`=29303; -- Tragedy and Family
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29304; -- The Dogs of War
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=206700 WHERE `Id`=29305; -- Strike at the Heart
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=248050 WHERE `Id`=29308; -- Heart of Flame
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700 WHERE `Id`=29310; -- The Tipping Point
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29311; -- The Rest is History
UPDATE `quest_template` SET `RequiredSourceItemCount1`=1, `RequiredSourceItemCount2`=1 WHERE `Id`=29314; -- Remembering the Ancestors
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=29315; -- Fungus Among Us
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=29317; -- Fish Head
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=29319; -- Tadpole Terror
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=29320; -- Like Pike?
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=29322; -- Time for Slime
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=124050 WHERE `Id`=29326; -- The Nordrassil Summit
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=206700 WHERE `Id`=29327; -- Elemental Bonds: Doubt
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=206700 WHERE `Id`=29328; -- Elemental Bonds: Desire
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=206700 WHERE `Id`=29329; -- Elemental Bonds: Patience
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=248050 WHERE `Id`=29330; -- Elemental Bonds: Fury
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=330750 WHERE `Id`=29331; -- Elemental Bonds: The Vow
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=29332; -- Lily, Oh Lily
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=29333; -- Escargot A Go-Go
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=29334; -- Roach Coach
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700 WHERE `Id`=29335; -- Into Slashing Winds
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700 WHERE `Id`=29336; -- Into Coaxing Tides
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700 WHERE `Id`=29337; -- Into Constant Earth
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700 WHERE `Id`=29338; -- Into Unrelenting Flame
UPDATE `quest_template` SET `RequiredSourceItemCount2`=1 WHERE `Id`=29352; -- A Fowl Shortage
UPDATE `quest_template` SET `RequiredSourceItemCount2`=1 WHERE `Id`=29353; -- Keepin' the Haggis Flowin'
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=29354; -- Shiny Baubles
UPDATE `quest_template` SET `RequiredSourceItemCount2`=1 WHERE `Id`=29356; -- I Need to Cask a Favor
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=29361; -- Moat Monster!
UPDATE `quest_template` SET `RewardOrRequiredMoney`=94000, `RewardMoneyMaxLevel`=165400 WHERE `Id`=29364; -- Corn Mash
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700 WHERE `Id`=29371; -- A Time to Lose
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=124050 WHERE `Id`=29374; -- Stink Bombs Away!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=124050 WHERE `Id`=29375; -- Clean Up in Undercity
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700 WHERE `Id`=29376; -- A Time to Build Up
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700 WHERE `Id`=29377; -- A Time to Break Down
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=124050 WHERE `Id`=29392; -- Missing Heirlooms
UPDATE `quest_template` SET `RewardOrRequiredMoney`=9400, `RewardMoneyMaxLevel`=16550 WHERE `Id`=29400; -- A Season for Celebration
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=960 WHERE `Id`=29412; -- Blown Away
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=124050 WHERE `Id`=29415; -- Missing Heirlooms
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=124050 WHERE `Id`=29425; -- Shopping Around
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29427; -- The Collector's Agent
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=124050 WHERE `Id`=29428; -- What Now?
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=16550 WHERE `Id`=29431; -- A Friend in Need
UPDATE `quest_template` SET `RequiredSourceItemCount2`=1 WHERE `Id`=29434; -- Tonk Commander
UPDATE `quest_template` SET `RequiredSourceItemCount2`=1 WHERE `Id`=29436; -- The Humanoid Cannonball
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=206700 WHERE `Id`=29437; -- The Fallen Guardian
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700 WHERE `Id`=29439; -- The Call of the World-Shaman
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700 WHERE `Id`=29440; -- The Call of the World-Shaman
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29443; -- A Curious Crystal
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29444; -- An Exotic Egg
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29445; -- An Intriguing Grimoire
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29446; -- A Wondrous Weapon
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29451; -- The Master Strategist
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700 WHERE `Id`=29452; -- Your Time Has Come
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=82700 WHERE `Id`=29453; -- Your Time Has Come
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29456; -- A Captured Banner
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29457; -- The Enemy's Insignia
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29458; -- The Captured Journal
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29464; -- Tools of Divination
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29506; -- A Fizzy Fusion
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29507; -- Fun for the Little Ones
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29508; -- Baby Needs Two Pair of Shoes
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29509; -- Putting the Crunch in the Frog
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29510; -- Putting Trash to Good Use
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29511; -- Talkin' Tonks
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29512; -- Putting the Carnies Back Together Again
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29513; -- Spoilin' for Salty Sea Dogs
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29515; -- Writing the Future
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29516; -- Keeping the Faire Sparkling
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29517; -- Eyes on the Prizes
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29518; -- Rearm, Reuse, Recycle
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29519; -- Tan My Hide
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29520; -- Banners, Banners Everywhere!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=29528; -- War on the Ramparts
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12000 WHERE `Id`=29529; -- Demons in the Citadel
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=29535; -- Make Them Bleed
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=29538; -- Make Them Bleed
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=29539; -- Heart of Rage
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=12600 WHERE `Id`=29540; -- The Breaker
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=600 WHERE `Id`=29542; -- Invading the Citadel
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=600 WHERE `Id`=29543; -- Invading the Citadel
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=13200 WHERE `Id`=29563; -- Lost in Action
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=13200 WHERE `Id`=29564; -- A Brother Betrayed
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=13200 WHERE `Id`=29565; -- The Heart of the Matter
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=660 WHERE `Id`=29566; -- Checking Up
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=13200 WHERE `Id`=29567; -- Stalk the Stalker
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9900 WHERE `Id`=29568; -- A Necessary Evil
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=13200 WHERE `Id`=29570; -- Rescuing the Expedition
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=660 WHERE `Id`=29571; -- Defending the Wilds
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=10200 WHERE `Id`=29573; -- Safety is Job One
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=10200 WHERE `Id`=29574; -- Intriguing Specimens
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=13500 WHERE `Id`=29575; -- Undercutting the Competition
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=660 WHERE `Id`=29582; -- Grek's Crazy Night
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=8700 WHERE `Id`=29590; -- The Dead Watcher
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=8700 WHERE `Id`=29591; -- Raging Spirits
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9000 WHERE `Id`=29593; -- Hitting Them Where It Hurts
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9000 WHERE `Id`=29594; -- Hitting Them Where It Hurts
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720 WHERE `Id`=29595; -- Everything Will Be Alright
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=14100 WHERE `Id`=29596; -- The End of the Exarch
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=14400 WHERE `Id`=29598; -- Taretha's Diversion
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=14400 WHERE `Id`=29599; -- Escape from Durnholde
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=14700 WHERE `Id`=29605; -- Brother Against Brother
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=14700 WHERE `Id`=29606; -- Terokk's Legacy
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11100 WHERE `Id`=29607; -- Eyes of Desire
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=780 WHERE `Id`=29609; -- Friends in Dalaran
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15300 WHERE `Id`=29613; -- A Proper Fate
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=29614; -- Containment is Key
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=29615; -- Windcaller Claw and the Water Thief
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=720 WHERE `Id`=29616; -- Storming the Steamvault
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15300 WHERE `Id`=29640; -- Find Spy To'gun
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15300 WHERE `Id`=29641; -- The Soul Devices
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=780 WHERE `Id`=29642; -- Trouble at Auchindoun
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15300 WHERE `Id`=29643; -- The Codex of Blood
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15300 WHERE `Id`=29644; -- Into the Heart of the Labyrinth
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=29645; -- Ambassador Hellmaw
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=29650; -- Fel Ember
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15300 WHERE `Id`=29651; -- Honor the Dying
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=29657; -- With Great Power, Comes Great Responsibility
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15300 WHERE `Id`=29658; -- The Calculator
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=29659; -- Lost Treasure
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9600 WHERE `Id`=29660; -- Saving the Botanica
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=11400 WHERE `Id`=29667; -- Culling the Herd
UPDATE `quest_template` SET `RequiredItemCount1`=1 WHERE `Id`=29672; -- The Opening of the Dark Portal
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9600 WHERE `Id`=29674; -- Unbound Darkness
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15300 WHERE `Id`=29681; -- Maximum Security Breakout
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=15300 WHERE `Id`=29684; -- Severed Communications
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=9600 WHERE `Id`=29686; -- A Radical Notion
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=780 WHERE `Id`=29688; -- Advancing the Campaign
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=8400 WHERE `Id`=29691; -- Bring Me A Shrubbery!
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29801; -- Proving Your Worth
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=165400 WHERE `Id`=29802; -- A Hidden Message
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=24900 WHERE `Id`=29807; -- Death to the Traitor King
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=24900 WHERE `Id`=29811; -- The Gatewatcher's Talisman
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=38100 WHERE `Id`=29826; -- Reclaiming Ahn'Kahet
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=18600 WHERE `Id`=29828; -- What the Scourge Dred
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=5100 WHERE `Id`=29829; -- Discretion is Key
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=102600 WHERE `Id`=29830; -- Containment
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=39000 WHERE `Id`=29833; -- Unfinished Business
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=155400 WHERE `Id`=29834; -- Gal'darah Must Pay
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=155400 WHERE `Id`=29835; -- Gal'darah Must Pay
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=7800 WHERE `Id`=29836; -- Just Checkin'
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=116700 WHERE `Id`=29838; -- One of a Kind
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=116700 WHERE `Id`=29839; -- One of a Kind
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=116700 WHERE `Id`=29840; -- For Posterity
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=116700 WHERE `Id`=29844; -- For Posterity
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=97200 WHERE `Id`=29848; -- The Forlorn Watcher
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=97200 WHERE `Id`=29850; -- Corrupt Constructs
UPDATE `quest_template` SET `RewardMoneyMaxLevel`=155400 WHERE `Id`=29851; -- Champion of the Tournament


--
DELETE FROM `quest_template` WHERE `Id` IN (30108,30113);
INSERT INTO `quest_template` (`Id`, `Method`, `Level`, `MinLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `CompletedText`, `RequiredSpell`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`) VALUES
(30108, 2, 85, 0, -162, 0, 0, 0, 0, 47000, 208200, 0, 0, 0, 0, 0, 12582912, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 349, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Our Man in Karazhan', 'Report to Zazzo Twinklefingers in the ruins just southeast of Karazhan.', 'Your next target is the Black Dragon Nalice, who is engaged in some sort of arcane debauchery beneath the ruined tower of Karazhan.$B$BYour primary mission is to destroy her, but if you can bring me back a vial of her blood, I''ll be able to use it to augment the power of the daggers I''ve given you.$B$BYour accomplice Zazzo has already been dispatched to the scene and awaits you there. He''ll have more details.', '', 'Report to Zazzo Twinklefingers in the ruins just southeast of Karazhan.', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, '', 890, 878), -- 30108
(30113, 2, 85, 0, -162, 0, 0, 0, 0, 47000, 208200, 0, 0, 0, 0, 0, 10485760, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 349, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Victory in the Depths', 'Take the Vial of Preserved Dragonsblood, along with your daggers Fear and Vengeance, to Wrathion at Ravenholdt Manor in Hillsbrad Foothills.', '<Zazzo performs an enchantment on the vial of blood, then quickly hands it back to you, as though it''s toxic.>$B$BDone! You''ll want to get this back to Wrathion as soon as possible, along with those two daggers of yours.$B$BI don''t know what he plans to do with this stuff. Between you and me, sometimes that little dragon kid creeps me out. Good luck!', '', 'Take the Vial of Preserved Dragonsblood, along with your daggers Fear and Vengeance, to Wrathion at Ravenholdt Manor in Hillsbrad Foothills.', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, '', 890, 878); -- 30113

DELETE FROM `creature_loot_template` WHERE 
    (`entry`=32860 AND `item`=44942) OR (`entry`=32935 AND `item`=44863) OR (`entry`=32985 AND `item`=44868) OR (`entry`=33009 AND `item`=44913) OR
    (`entry`=33020 AND `item`=44966) OR (`entry`=33021 AND `item`=44966) OR (`entry`=33022 AND `item`=44966) OR (`entry`=33041 AND `item`=44929) OR
    (`entry`=33181 AND `item`=5382 ) OR (`entry`=33419 AND `item`=5463 ) OR (`entry`=33444 AND `item`=5463 ) OR (`entry`=33456 AND `item`=45079) OR
    (`entry`=33458 AND `item`=45069) OR (`entry`=33905 AND `item`=44913) OR (`entry`=34206 AND `item`=46147) OR (`entry`=34353 AND `item`=55152) OR
    (`entry`=34385 AND `item`=46692) OR (`entry`=34398 AND `item`=46695) OR (`entry`=34503 AND `item`=5085 ) OR (`entry`=34545 AND `item`=5085 ) OR
    (`entry`=34590 AND `item`=55144) OR (`entry`=34591 AND `item`=46768) OR (`entry`=34602 AND `item`=46774) OR (`entry`=34706 AND `item`=5078 ) OR
    (`entry`=34707 AND `item`=5078 ) OR (`entry`=34747 AND `item`=46834) OR (`entry`=34750 AND `item`=5084 ) OR (`entry`=34829 AND `item`=46850) OR
    (`entry`=34894 AND `item`=56040) OR (`entry`=34894 AND `item`=56797) OR (`entry`=34898 AND `item`=56223) OR (`entry`=34911 AND `item`=56224) OR
    (`entry`=34969 AND `item`=56187) OR (`entry`=35096 AND `item`=47038) OR (`entry`=35096 AND `item`=58949) OR (`entry`=35234 AND `item`=47530) OR
    (`entry`=35312 AND `item`=47819) OR (`entry`=35409 AND `item`=49170) OR (`entry`=35558 AND `item`=48780) OR (`entry`=35759 AND `item`=49765) OR
    (`entry`=36103 AND `item`=49424) OR (`entry`=36129 AND `item`=49424) OR (`entry`=36130 AND `item`=49174) OR (`entry`=36156 AND `item`=49204) OR
    (`entry`=36304 AND `item`=49208) OR (`entry`=36353 AND `item`=49221) OR (`entry`=36592 AND `item`=49359) OR (`entry`=36593 AND `item`=49359) OR
    (`entry`=36594 AND `item`=49356) OR (`entry`=36611 AND `item`=49364) OR (`entry`=36614 AND `item`=49366) OR (`entry`=36680 AND `item`=49540) OR
    (`entry`=36681 AND `item`=50381) OR (`entry`=36708 AND `item`=49535) OR (`entry`=36712 AND `item`=50473) OR (`entry`=36884 AND `item`=49674) OR
    (`entry`=37083 AND `item`=49772) OR (`entry`=37084 AND `item`=49772) OR (`entry`=37092 AND `item`=49883) OR (`entry`=37093 AND `item`=49876) OR
    (`entry`=37157 AND `item`=49771) OR (`entry`=37208 AND `item`=52305) OR (`entry`=37553 AND `item`=50385) OR (`entry`=37556 AND `item`=49946) OR
    (`entry`=37560 AND `item`=49932) OR (`entry`=37560 AND `item`=49934) OR (`entry`=37585 AND `item`=49850) OR (`entry`=37660 AND `item`=49932) OR
    (`entry`=37660 AND `item`=49934) OR (`entry`=37661 AND `item`=49932) OR (`entry`=37661 AND `item`=49934) OR (`entry`=37786 AND `item`=50219) OR
    (`entry`=37924 AND `item`=50054) OR (`entry`=37925 AND `item`=52290) OR (`entry`=37926 AND `item`=49947) OR (`entry`=38033 AND `item`=50054) OR
    (`entry`=38046 AND `item`=50222) OR (`entry`=38329 AND `item`=50410) OR (`entry`=38359 AND `item`=50437) OR (`entry`=38360 AND `item`=50437) OR
    (`entry`=38663 AND `item`=52036) OR (`entry`=38845 AND `item`=52035) OR (`entry`=38884 AND `item`=52046) OR (`entry`=38896 AND `item`=52506) OR
    (`entry`=38909 AND `item`=52072) OR (`entry`=38916 AND `item`=52284) OR (`entry`=39004 AND `item`=4888 ) OR (`entry`=39004 AND `item`=52080) OR
    (`entry`=39061 AND `item`=52281) OR (`entry`=39072 AND `item`=50018) OR (`entry`=39141 AND `item`=52346) OR (`entry`=39142 AND `item`=52347) OR
    (`entry`=39143 AND `item`=52349) OR (`entry`=39193 AND `item`=52483) OR (`entry`=39193 AND `item`=52484) OR (`entry`=39194 AND `item`=52481) OR
    (`entry`=39354 AND `item`=52530) OR (`entry`=39363 AND `item`=52531) OR (`entry`=39370 AND `item`=52506) OR (`entry`=39373 AND `item`=52506) OR
    (`entry`=39414 AND `item`=52506) OR (`entry`=39415 AND `item`=52506) OR (`entry`=39418 AND `item`=54611) OR (`entry`=39426 AND `item`=52559) OR
    (`entry`=39445 AND `item`=52658) OR (`entry`=39452 AND `item`=60615) OR (`entry`=39619 AND `item`=52685) OR (`entry`=39658 AND `item`=52708) OR
    (`entry`=39844 AND `item`=52506) OR (`entry`=39873 AND `item`=52506) OR (`entry`=39896 AND `item`=18947) OR (`entry`=39918 AND `item`=53073) OR
    (`entry`=39964 AND `item`=53054) OR (`entry`=39994 AND `item`=52506) OR (`entry`=40004 AND `item`=52506) OR (`entry`=40021 AND `item`=52506) OR
    (`entry`=40023 AND `item`=52506) OR (`entry`=40033 AND `item`=52506) OR (`entry`=40051 AND `item`=53099) OR (`entry`=40059 AND `item`=53136) OR
    (`entry`=40066 AND `item`=53102) OR (`entry`=40107 AND `item`=53454) OR (`entry`=40170 AND `item`=52506) OR (`entry`=40193 AND `item`=53642) OR
    (`entry`=40224 AND `item`=8973 ) OR (`entry`=40229 AND `item`=52506) OR (`entry`=40272 AND `item`=52506) OR (`entry`=40273 AND `item`=52506) OR
    (`entry`=40282 AND `item`=54344) OR (`entry`=40319 AND `item`=66927) OR (`entry`=40403 AND `item`=52708) OR (`entry`=40403 AND `item`=54610) OR
    (`entry`=40449 AND `item`=54821) OR (`entry`=40464 AND `item`=52506) OR (`entry`=40466 AND `item`=54640) OR (`entry`=40581 AND `item`=54855) OR
    (`entry`=40632 AND `item`=54829) OR (`entry`=40635 AND `item`=54829) OR (`entry`=40648 AND `item`=52069) OR (`entry`=40656 AND `item`=54856) OR
    (`entry`=40677 AND `item`=54844) OR (`entry`=40677 AND `item`=54958) OR (`entry`=40685 AND `item`=54845) OR (`entry`=40709 AND `item`=52506) OR
    (`entry`=40717 AND `item`=54856) OR (`entry`=40810 AND `item`=54844) OR (`entry`=40811 AND `item`=54842) OR (`entry`=40811 AND `item`=54843) OR
    (`entry`=40811 AND `item`=54844) OR (`entry`=40841 AND `item`=55123) OR (`entry`=40889 AND `item`=55139) OR (`entry`=40905 AND `item`=55181) OR
    (`entry`=40912 AND `item`=55140) OR (`entry`=40925 AND `item`=52506) OR (`entry`=40958 AND `item`=55160) OR (`entry`=41016 AND `item`=55185) OR
    (`entry`=41017 AND `item`=55188) OR (`entry`=41018 AND `item`=55805) OR (`entry`=41064 AND `item`=55239) OR (`entry`=41076 AND `item`=55196) OR
    (`entry`=41081 AND `item`=55197) OR (`entry`=41082 AND `item`=55199) OR (`entry`=41084 AND `item`=55210) OR (`entry`=41121 AND `item`=2676 ) OR
    (`entry`=41137 AND `item`=55232) OR (`entry`=41145 AND `item`=55234) OR (`entry`=41146 AND `item`=3084 ) OR (`entry`=41151 AND `item`=55988) OR
    (`entry`=41167 AND `item`=55243) OR (`entry`=41185 AND `item`=55280) OR (`entry`=41236 AND `item`=55979) OR (`entry`=41267 AND `item`=10753) OR
    (`entry`=41295 AND `item`=56013) OR (`entry`=41388 AND `item`=56083) OR (`entry`=41390 AND `item`=56088) OR (`entry`=41391 AND `item`=56088) OR
    (`entry`=41409 AND `item`=56081) OR (`entry`=41419 AND `item`=56087) OR (`entry`=41420 AND `item`=56089) OR (`entry`=41437 AND `item`=56140) OR
    (`entry`=41458 AND `item`=56139) OR (`entry`=41477 AND `item`=56167) OR (`entry`=41481 AND `item`=56167) OR (`entry`=41501 AND `item`=56176) OR
    (`entry`=41502 AND `item`=56177) OR (`entry`=41549 AND `item`=56167) OR (`entry`=41569 AND `item`=56183) OR (`entry`=41593 AND `item`=56235) OR
    (`entry`=41601 AND `item`=56254) OR (`entry`=41606 AND `item`=56183) OR (`entry`=41607 AND `item`=56194) OR (`entry`=41608 AND `item`=56194) OR
    (`entry`=41648 AND `item`=56822) OR (`entry`=41657 AND `item`=57096) OR (`entry`=41746 AND `item`=56243) OR (`entry`=41746 AND `item`=56244) OR
    (`entry`=41746 AND `item`=56245) OR (`entry`=41864 AND `item`=56469) OR (`entry`=41922 AND `item`=56568) OR (`entry`=41922 AND `item`=56573) OR
    (`entry`=41923 AND `item`=56568) OR (`entry`=41923 AND `item`=56573) OR (`entry`=41937 AND `item`=56474) OR (`entry`=42184 AND `item`=57987) OR
    (`entry`=42210 AND `item`=52506) OR (`entry`=42221 AND `item`=58202) OR (`entry`=42222 AND `item`=58202) OR (`entry`=42296 AND `item`=57134) OR
    (`entry`=42297 AND `item`=57134) OR (`entry`=42336 AND `item`=57177) OR (`entry`=42337 AND `item`=57178) OR (`entry`=42338 AND `item`=57179) OR
    (`entry`=42475 AND `item`=52506) OR (`entry`=42504 AND `item`=57758) OR (`entry`=42524 AND `item`=58845) OR (`entry`=42527 AND `item`=52506) OR
    (`entry`=42527 AND `item`=58168) OR (`entry`=42592 AND `item`=58082) OR (`entry`=42594 AND `item`=57879) OR (`entry`=42606 AND `item`=58501) OR
    (`entry`=42607 AND `item`=58501) OR (`entry`=42669 AND `item`=58204) OR (`entry`=42677 AND `item`=58117) OR (`entry`=42677 AND `item`=58118) OR
    (`entry`=42711 AND `item`=60767) OR (`entry`=42711 AND `item`=60768) OR (`entry`=42724 AND `item`=58236) OR (`entry`=42766 AND `item`=52506) OR
    (`entry`=42766 AND `item`=65504) OR (`entry`=42780 AND `item`=58168) OR (`entry`=42789 AND `item`=52506) OR (`entry`=42810 AND `item`=52506) OR
    (`entry`=42858 AND `item`=58225) OR (`entry`=42859 AND `item`=57758) OR (`entry`=42877 AND `item`=58241) OR (`entry`=42879 AND `item`=58239) OR
    (`entry`=42919 AND `item`=58779) OR (`entry`=42937 AND `item`=58361) OR (`entry`=43026 AND `item`=52506) OR (`entry`=43050 AND `item`=57990) OR
    (`entry`=43123 AND `item`=52506) OR (`entry`=43123 AND `item`=59062) OR (`entry`=43181 AND `item`=58959) OR (`entry`=43185 AND `item`=58936) OR
    (`entry`=43218 AND `item`=60264) OR (`entry`=43223 AND `item`=4016 ) OR (`entry`=43254 AND `item`=52506) OR (`entry`=43258 AND `item`=52506) OR
    (`entry`=43325 AND `item`=57987) OR (`entry`=43327 AND `item`=58953) OR (`entry`=43329 AND `item`=58954) OR (`entry`=43331 AND `item`=58960) OR
    (`entry`=43339 AND `item`=58959) OR (`entry`=43364 AND `item`=3910 ) OR (`entry`=43367 AND `item`=60767) OR (`entry`=43367 AND `item`=60768) OR
    (`entry`=43368 AND `item`=60767) OR (`entry`=43368 AND `item`=60768) OR (`entry`=43372 AND `item`=60768) OR (`entry`=43374 AND `item`=52506) OR
    (`entry`=43376 AND `item`=59034) OR (`entry`=43377 AND `item`=59035) OR (`entry`=43417 AND `item`=59057) OR (`entry`=43417 AND `item`=59058) OR
    (`entry`=43417 AND `item`=59059) OR (`entry`=43417 AND `item`=59060) OR (`entry`=43454 AND `item`=3910 ) OR (`entry`=43456 AND `item`=59144) OR
    (`entry`=43480 AND `item`=52506) OR (`entry`=43532 AND `item`=59156) OR (`entry`=43542 AND `item`=3910 ) OR (`entry`=43598 AND `item`=59323) OR
    (`entry`=43636 AND `item`=3910 ) OR (`entry`=43704 AND `item`=60989) OR (`entry`=43732 AND `item`=60204) OR (`entry`=43878 AND `item`=65660) OR
    (`entry`=43910 AND `item`=60263) OR (`entry`=43911 AND `item`=60263) OR (`entry`=43912 AND `item`=60263) OR (`entry`=43913 AND `item`=60263) OR
    (`entry`=43992 AND `item`=60383) OR (`entry`=44011 AND `item`=52506) OR (`entry`=44011 AND `item`=60333) OR (`entry`=44016 AND `item`=60334) OR
    (`entry`=44113 AND `item`=60380) OR (`entry`=44116 AND `item`=56013) OR (`entry`=44161 AND `item`=60402) OR (`entry`=44162 AND `item`=60402) OR
    (`entry`=44166 AND `item`=5086 ) OR (`entry`=44170 AND `item`=5030 ) OR (`entry`=44176 AND `item`=60511) OR (`entry`=44178 AND `item`=3897 ) OR
    (`entry`=44178 AND `item`=3910 ) OR (`entry`=44179 AND `item`=3897 ) OR (`entry`=44179 AND `item`=3910 ) OR (`entry`=44182 AND `item`=3910 ) OR
    (`entry`=44198 AND `item`=60404) OR (`entry`=44220 AND `item`=52506) OR (`entry`=44220 AND `item`=60487) OR (`entry`=44221 AND `item`=60383) OR
    (`entry`=44225 AND `item`=56081) OR (`entry`=44226 AND `item`=56083) OR (`entry`=44257 AND `item`=52506) OR (`entry`=44257 AND `item`=65504) OR
    (`entry`=44259 AND `item`=52506) OR (`entry`=44259 AND `item`=65504) OR (`entry`=44292 AND `item`=60511) OR (`entry`=44390 AND `item`=5938 ) OR
    (`entry`=44414 AND `item`=60638) OR (`entry`=44442 AND `item`=60772) OR (`entry`=44473 AND `item`=60851) OR (`entry`=44478 AND `item`=60748) OR
    (`entry`=44479 AND `item`=60747) OR (`entry`=44482 AND `item`=60762) OR (`entry`=44557 AND `item`=52072) OR (`entry`=44620 AND `item`=60754) OR
    (`entry`=44628 AND `item`=60792) OR (`entry`=44635 AND `item`=60755) OR (`entry`=44847 AND `item`=60745) OR (`entry`=44849 AND `item`=60745) OR
    (`entry`=44855 AND `item`=60745) OR (`entry`=45084 AND `item`=52506) OR (`entry`=45099 AND `item`=60837) OR (`entry`=45185 AND `item`=61048) OR
    (`entry`=45190 AND `item`=60860) OR (`entry`=45205 AND `item`=60865) OR (`entry`=45219 AND `item`=60867) OR (`entry`=45227 AND `item`=60883) OR
    (`entry`=45321 AND `item`=63541) OR (`entry`=45358 AND `item`=60981) OR (`entry`=45359 AND `item`=60982) OR (`entry`=45380 AND `item`=60755) OR
    (`entry`=45384 AND `item`=60402) OR (`entry`=45401 AND `item`=60511) OR (`entry`=45402 AND `item`=60754) OR (`entry`=45405 AND `item`=60977) OR
    (`entry`=45443 AND `item`=61387) OR (`entry`=45444 AND `item`=61387) OR (`entry`=45450 AND `item`=60987) OR (`entry`=45450 AND `item`=61387) OR
    (`entry`=45453 AND `item`=61387) OR (`entry`=45477 AND `item`=52506) OR (`entry`=45582 AND `item`=60207) OR (`entry`=45664 AND `item`=61387) OR
    (`entry`=45681 AND `item`=61387) OR (`entry`=45691 AND `item`=61387) OR (`entry`=45692 AND `item`=61387) OR (`entry`=45711 AND `item`=61307) OR
    (`entry`=45728 AND `item`=61310) OR (`entry`=45728 AND `item`=61311) OR (`entry`=45734 AND `item`=61312) OR (`entry`=45743 AND `item`=61387) OR
    (`entry`=45744 AND `item`=61387) OR (`entry`=45755 AND `item`=52506) OR (`entry`=45765 AND `item`=61321) OR (`entry`=45785 AND `item`=60204) OR
    (`entry`=45809 AND `item`=61633) OR (`entry`=45825 AND `item`=62043) OR (`entry`=45851 AND `item`=15447) OR (`entry`=45851 AND `item`=61387) OR
    (`entry`=45855 AND `item`=61510) OR (`entry`=45867 AND `item`=61378) OR (`entry`=45867 AND `item`=61387) OR (`entry`=45868 AND `item`=61378) OR
    (`entry`=45868 AND `item`=61387) OR (`entry`=45896 AND `item`=61505) OR (`entry`=45896 AND `item`=61506) OR (`entry`=45896 AND `item`=61507) OR
    (`entry`=45896 AND `item`=61508) OR (`entry`=45897 AND `item`=61387) OR (`entry`=45905 AND `item`=63081) OR (`entry`=45912 AND `item`=52506) OR
    (`entry`=45915 AND `item`=52506) OR (`entry`=45995 AND `item`=61510) OR (`entry`=46017 AND `item`=61924) OR (`entry`=46017 AND `item`=61925) OR
    (`entry`=46018 AND `item`=61926) OR (`entry`=46018 AND `item`=61927) OR (`entry`=46041 AND `item`=61971) OR (`entry`=46042 AND `item`=61970) OR
    (`entry`=46092 AND `item`=61387) OR (`entry`=46093 AND `item`=61387) OR (`entry`=46094 AND `item`=61387) OR (`entry`=46095 AND `item`=61387) OR
    (`entry`=46096 AND `item`=61387) OR (`entry`=46098 AND `item`=61048) OR (`entry`=46146 AND `item`=62551) OR (`entry`=46153 AND `item`=64320) OR
    (`entry`=46158 AND `item`=62915) OR (`entry`=46162 AND `item`=64317) OR (`entry`=46167 AND `item`=61387) OR (`entry`=46167 AND `item`=62028) OR
    (`entry`=46202 AND `item`=62033) OR (`entry`=46264 AND `item`=62305) OR (`entry`=46310 AND `item`=62332) OR (`entry`=46320 AND `item`=62325) OR
    (`entry`=46327 AND `item`=52506) OR (`entry`=46328 AND `item`=52506) OR (`entry`=46329 AND `item`=52506) OR (`entry`=46340 AND `item`=62280) OR
    (`entry`=46376 AND `item`=62325) OR (`entry`=46377 AND `item`=62325) OR (`entry`=46378 AND `item`=62325) OR (`entry`=46399 AND `item`=62230) OR
    (`entry`=46474 AND `item`=56167) OR (`entry`=46493 AND `item`=62332) OR (`entry`=46507 AND `item`=62803) OR (`entry`=46569 AND `item`=62808) OR
    (`entry`=46580 AND `item`=62331) OR (`entry`=46582 AND `item`=62808) OR (`entry`=46586 AND `item`=62808) OR (`entry`=46587 AND `item`=62399) OR
    (`entry`=46590 AND `item`=62483) OR (`entry`=46597 AND `item`=62808) OR (`entry`=46611 AND `item`=62394) OR (`entry`=46630 AND `item`=62811) OR
    (`entry`=46641 AND `item`=62811) OR (`entry`=46643 AND `item`=62811) OR (`entry`=46693 AND `item`=62396) OR (`entry`=46756 AND `item`=62332) OR
    (`entry`=46772 AND `item`=62485) OR (`entry`=46772 AND `item`=62486) OR (`entry`=46772 AND `item`=62487) OR (`entry`=46772 AND `item`=62488) OR
    (`entry`=46773 AND `item`=62594) OR (`entry`=46773 AND `item`=62595) OR (`entry`=46773 AND `item`=62596) OR (`entry`=46773 AND `item`=62597) OR
    (`entry`=46851 AND `item`=62511) OR (`entry`=46885 AND `item`=62325) OR (`entry`=46910 AND `item`=54609) OR (`entry`=46911 AND `item`=52506) OR
    (`entry`=46920 AND `item`=62483) OR (`entry`=46950 AND `item`=62749) OR (`entry`=46953 AND `item`=62609) OR (`entry`=46963 AND `item`=60876) OR
    (`entry`=46964 AND `item`=60877) OR (`entry`=46964 AND `item`=60882) OR (`entry`=46970 AND `item`=64319) OR (`entry`=46971 AND `item`=64319) OR
    (`entry`=46997 AND `item`=62593) OR (`entry`=47009 AND `item`=61307) OR (`entry`=47014 AND `item`=62483) OR (`entry`=47032 AND `item`=62705) OR
    (`entry`=47053 AND `item`=62714) OR (`entry`=47071 AND `item`=65504) OR (`entry`=47081 AND `item`=52506) OR (`entry`=47130 AND `item`=62921) OR
    (`entry`=47131 AND `item`=60874) OR (`entry`=47134 AND `item`=60874) OR (`entry`=47135 AND `item`=60874) OR (`entry`=47150 AND `item`=52506) OR
    (`entry`=47151 AND `item`=52506) OR (`entry`=47190 AND `item`=62776) OR (`entry`=47202 AND `item`=63541) OR (`entry`=47226 AND `item`=52506) OR
    (`entry`=47226 AND `item`=62796) OR (`entry`=47226 AND `item`=63285) OR (`entry`=47231 AND `item`=60875) OR (`entry`=47232 AND `item`=60875) OR
    (`entry`=47270 AND `item`=62807) OR (`entry`=47271 AND `item`=62806) OR (`entry`=47309 AND `item`=62822) OR (`entry`=47309 AND `item`=62825) OR
    (`entry`=47310 AND `item`=62822) OR (`entry`=47310 AND `item`=62823) OR (`entry`=47311 AND `item`=62822) OR (`entry`=47311 AND `item`=62824) OR
    (`entry`=47388 AND `item`=62911) OR (`entry`=47398 AND `item`=62919) OR (`entry`=47479 AND `item`=62924) OR (`entry`=47484 AND `item`=64386) OR
    (`entry`=47537 AND `item`=63033) OR (`entry`=47544 AND `item`=63143) OR (`entry`=47553 AND `item`=63028) OR (`entry`=47583 AND `item`=63035) OR
    (`entry`=47585 AND `item`=63035) OR (`entry`=47591 AND `item`=63103) OR (`entry`=47630 AND `item`=63035) OR (`entry`=47642 AND `item`=63047) OR
    (`entry`=47687 AND `item`=63279) OR (`entry`=47720 AND `item`=63541) OR (`entry`=47724 AND `item`=63087) OR (`entry`=47726 AND `item`=63541) OR
    (`entry`=47728 AND `item`=52506) OR (`entry`=47728 AND `item`=63089) OR (`entry`=47777 AND `item`=63096) OR (`entry`=47789 AND `item`=63250) OR
    (`entry`=47803 AND `item`=63541) OR (`entry`=47859 AND `item`=63254) OR (`entry`=47861 AND `item`=63254) OR (`entry`=47982 AND `item`=63248) OR
    (`entry`=48015 AND `item`=63286) OR (`entry`=48016 AND `item`=52506) OR (`entry`=48016 AND `item`=63283) OR (`entry`=48017 AND `item`=63281) OR
    (`entry`=48036 AND `item`=63309) OR (`entry`=48080 AND `item`=63330) OR (`entry`=48102 AND `item`=63374) OR (`entry`=48177 AND `item`=62911) OR
    (`entry`=48178 AND `item`=62911) OR (`entry`=48184 AND `item`=64410) OR (`entry`=48239 AND `item`=63541) OR (`entry`=48315 AND `item`=63519) OR
    (`entry`=48344 AND `item`=63687) OR (`entry`=48515 AND `item`=64307) OR (`entry`=48533 AND `item`=52506) OR (`entry`=48533 AND `item`=64404) OR
    (`entry`=48628 AND `item`=64380) OR (`entry`=48678 AND `item`=64463) OR (`entry`=48740 AND `item`=64441) OR (`entry`=48765 AND `item`=64465) OR
    (`entry`=48767 AND `item`=64449) OR (`entry`=48768 AND `item`=64449) OR (`entry`=48952 AND `item`=64587) OR (`entry`=48960 AND `item`=64586) OR
    (`entry`=49161 AND `item`=66052) OR (`entry`=49214 AND `item`=64649) OR (`entry`=49235 AND `item`=12435) OR (`entry`=49235 AND `item`=64664) OR
    (`entry`=49816 AND `item`=65504) OR (`entry`=50250 AND `item`=65903) OR (`entry`=50251 AND `item`=65903) OR (`entry`=51193 AND `item`=63541) OR
    (`entry`=51631 AND `item`=4503 ) OR (`entry`=51633 AND `item`=4503 ) OR (`entry`=51633 AND `item`=4522 ) OR (`entry`=51672 AND `item`=52506) OR
    (`entry`=51675 AND `item`=63541) OR (`entry`=51726 AND `item`=68681) OR (`entry`=52148 AND `item`=69774) OR (`entry`=52219 AND `item`=52506) OR
    (`entry`=52258 AND `item`=69647) OR (`entry`=52269 AND `item`=69647) OR (`entry`=52271 AND `item`=69647) OR (`entry`=52286 AND `item`=69647) OR
    (`entry`=52289 AND `item`=69677) OR (`entry`=52300 AND `item`=52506) OR (`entry`=52300 AND `item`=69678) OR (`entry`=52356 AND `item`=68820) OR
    (`entry`=52357 AND `item`=68820) OR (`entry`=52409 AND `item`=69815) OR (`entry`=52409 AND `item`=71141) OR (`entry`=52498 AND `item`=69815) OR
    (`entry`=52498 AND `item`=71141) OR (`entry`=52503 AND `item`=52506) OR (`entry`=52503 AND `item`=69722) OR (`entry`=52504 AND `item`=69722) OR
    (`entry`=52530 AND `item`=69815) OR (`entry`=52530 AND `item`=71141) OR (`entry`=52558 AND `item`=69815) OR (`entry`=52558 AND `item`=71141) OR
    (`entry`=52571 AND `item`=69815) OR (`entry`=52571 AND `item`=71141) OR (`entry`=52648 AND `item`=69808) OR (`entry`=52791 AND `item`=69679) OR
    (`entry`=52794 AND `item`=52506) OR (`entry`=52816 AND `item`=52506) OR (`entry`=52981 AND `item`=69809) OR (`entry`=53090 AND `item`=69725) OR
    (`entry`=53152 AND `item`=69816) OR (`entry`=53264 AND `item`=52506) OR (`entry`=53264 AND `item`=69678) OR (`entry`=53494 AND `item`=69815) OR
    (`entry`=53494 AND `item`=71141) OR (`entry`=53691 AND `item`=69815) OR (`entry`=53691 AND `item`=71141) OR (`entry`=54371 AND `item`=58111) OR
    (`entry`=54372 AND `item`=58111) OR (`entry`=54373 AND `item`=58111) OR (`entry`=57910 AND `item`=77954); 

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(32985, 44868, -100, 1, 0, 1 , 1),  -- Frenzied Cyclone Bracers
(33041, 44929, -100, 1, 0, 1 , 1),  -- Aetherion's Essence
(33181, 5382 , -100, 1, 0, 1 , 1),  -- Anaya's Pendant
(33419, 5463 , -50 , 1, 0, 1 , 1),  -- Glowing Gem
(33444, 5463 , -50 , 1, 0, 1 , 1),  -- Glowing Gem
(33456, 45079, -100, 1, 0, 1 , 1),  -- Gorick's Stash List
(33458, 45069, -100, 1, 0, 1 , 1),  -- Freshly Cut Wood
(34206, 46147, -100, 1, 0, 1 , 1),  -- Kaldorei Assassin's Head
(34353, 55152, -100, 1, 0, 1 , 1),  -- Warsong Flame Thrower
(34385, 46692, -100, 1, 0, 1 , 1),  -- Elune's Torch
(34398, 46695, -100, 1, 0, 1 , 1),  -- Emerald Scroll
(34503, 5085 , -100, 1, 0, 1 , 2),  -- Quilboar Tusk
(34545, 5085 , -100, 1, 0, 1 , 2),  -- Quilboar Tusk
(34590, 55144, -75 , 1, 0, 1 , 1),  -- Filthy Goblin Technology
(34591, 46768, -100, 1, 0, 1 , 1),  -- Sploder's Head
(34602, 46774, -100, 1, 0, 1 , 1),  -- Heart of Kaliva
(34706, 5078 , -100, 1, 0, 1 , 1),  -- Theramore Medal
(34707, 5078 , -100, 1, 0, 1 , 1),  -- Theramore Medal
(34747, 46834, -100, 1, 0, 1 , 1),  -- Glomp's Booty
(34750, 5084 , -100, 1, 0, 1 , 1),  -- Cap'n Garvey's Head
(34829, 46850, -100, 1, 0, 1 , 1),  -- King Reaperclaw's Horn
(34894, 56040, -100, 1, 0, 1 , 1),  -- Ram Haunch
(34894, 56797, -100, 1, 0, 1 , 1),  -- Stonetalon Ram Horns
(34898, 56223, -75 , 1, 0, 1 , 1),  -- Black Dragon Whelp Filet
(34911, 56224, -50 , 1, 0, 1 , 1),  -- Blazing Heart of Fire
(34969, 56187, -100, 1, 0, 1 , 1),  -- Sentinel's Glaive
(35096, 47038, -90 , 1, 0, 1 , 2),  -- Slab of Venison
(35096, 58949, -90 , 1, 0, 1 , 1),  -- Stag Eye
(35234, 47530, -100, 1, 0, 1 , 1),  -- Stolen Loot
(35312, 47819, -75 , 1, 0, 1 , 1),  -- Crystal Pendant
(35409, 49170, -75 , 1, 0, 1 , 1),  -- Basilisk Flank
(35558, 48780, -100, 1, 0, 1 , 1),  -- Ectosplatter Sample
(35759, 49765, -40 , 1, 0, 1 , 1),  -- Basalt Rockling
(36103, 49424, -100, 1, 0, 1 , 1),  -- Gyrochoppa Keys
(36129, 49424, -100, 1, 0, 1 , 1),  -- Gyrochoppa Keys
(36130, 49174, -100, 1, 0, 1 , 1),  -- Globe of Boiling Water
(36156, 49204, -100, 1, 0, 1 , 1),  -- Secret Rocket Plans
(36304, 49208, -100, 1, 0, 1 , 1),  -- Mutilated Mistwing Carcass
(36353, 49221, -100, 1, 0, 1 , 1),  -- Brendol's Satchel
(36592, 49359, -100, 1, 0, 1 , 1),  -- Attuned Runestone
(36593, 49359, -100, 1, 0, 1 , 1),  -- Attuned Runestone
(36594, 49356, -100, 1, 0, 1 , 1),  -- Amberwind's Journal
(36611, 49364, -75 , 1, 0, 1 , 1),  -- Blackmaw Intelligence
(36614, 49366, -100, 1, 0, 1 , 1),  -- Ambassador's Robes
(36680, 49540, -100, 1, 0, 1 , 1),  -- Grunwald's Head
(36681, 50381, -100, 1, 0, 1 , 1),  -- Shark Parts
(36708, 49535, -100, 1, 0, 1 , 1),  -- Stolen Rifle
(36712, 50473, -100, 1, 0, 1 , 1),  -- Mane of Thornmantle
(36884, 49674, -100, 1, 0, 1 , 1),  -- The Head of Jarrodenus
(37083, 49772, -100, 1, 0, 1 , 1),  -- Terrortooth Hide
(37084, 49772, -100, 1, 0, 1 , 1),  -- Terrortooth Hide
(37092, 49883, -90 , 1, 0, 1 , 1),  -- Squirming Heart
(37093, 49876, -75 , 1, 0, 1 , 1),  -- Writhing Seed
(37157, 49771, -100, 1, 0, 2 , 2),  -- Captain Peake's Eyeballs
(37208, 52305, -75 , 1, 0, 1 , 1),  -- Humming Electrogizard
(37553, 50385, -75 , 1, 0, 1 , 1),  -- Disturbed Earth Fragment
(37556, 49946, -100, 1, 0, 1 , 1),  -- Enormous Kodo Heart
(37560, 49932, -100, 1, 0, 1 , 1),  -- Carved Boar Idol
(37560, 49934, -75 , 1, 0, 1 , 1),  -- Blood Shard Trinket
(37585, 49850, -100, 1, 0, 1 , 1),  -- Theramore Merit Badge
(37660, 49932, -100, 1, 0, 1 , 1),  -- Carved Boar Idol
(37660, 49934, -75 , 1, 0, 1 , 1),  -- Blood Shard Trinket
(37661, 49932, -100, 1, 0, 1 , 1),  -- Carved Boar Idol
(37661, 49934, -75 , 1, 0, 1 , 1),  -- Blood Shard Trinket
(37786, 50219, -100, 1, 0, 1 , 3),  -- Side of Stag Meat
(37924, 50054, -100, 1, 0, 1 , 1),  -- SI:7 Briefings
(37925, 52290, -100, 1, 0, 1 , 1),  -- Keg of Blast-O Powder
(37926, 49947, -100, 1, 0, 1 , 1),  -- Fresh Brain
(38033, 50054, -100, 1, 0, 1 , 1),  -- SI:7 Briefings
(38046, 50222, -100, 1, 0, 1 , 1),  -- Wildmane Cat Pelt
(38329, 50410, -100, 1, 0, 1 , 1),  -- Durrin's Archaeological Findings
(38359, 50437, -75 , 1, 0, 1 , 1),  -- Intact Naga Hide
(38360, 50437, -75 , 1, 0, 1 , 1),  -- Intact Naga Hide
(38663, 52036, -100, 1, 0, 1 , 1),  -- Rageroar's Helm
(38845, 52035, -100, 1, 0, 1 , 1),  -- Fire Gland
(38884, 52046, -100, 1, 0, 1 , 1),  -- Bramblestaff
(38896, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(38909, 52072, -90 , 1, 0, 1 , 1),  -- Darkest Mojo
(38916, 52284, -100, 1, 0, 1 , 1),  -- Earthen Jewel
(39004, 4888 , -90 , 1, 0, 1 , 1),  -- Crawler Mucus
(39004, 52080, -100, 1, 0, 1 , 1),  -- Fresh Crawler Meat
(39061, 52281, -100, 1, 0, 1 , 1),  -- Meatface's Locked Chest
(39072, 50018, -100, 1, 0, 1 , 1),  -- Naj'tess' Orb of Corruption
(39141, 52346, -100, 1, 0, 1 , 1),  -- Commander Arrington's Head
(39142, 52347, -100, 1, 0, 1 , 1),  -- Darkblade Cyn's Head
(39143, 52349, -100, 1, 0, 1 , 1),  -- Alexi Silenthowl's Head
(39193, 52483, -75 , 1, 0, 1 , 1),  -- Kaja'Cola Zero-One
(39193, 52484, -75 , 1, 0, 1 , 1),  -- Kaja'Cola Zero-One
(39194, 52481, -15 , 1, 0, 1 , 1),  -- Blastshadow's Soulstone
(39354, 52530, -75 , 1, 0, 1 , 1),  -- Spare Shredder Parts
(39363, 52531, -50 , 1, 0, 1 , 1),  -- Still-Beating Heart
(39370, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(39373, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(39414, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(39415, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(39418, 54611, -50 , 1, 0, 1 , 1),  -- Sambino's Air Valve
(39426, 52559, -100, 1, 0, 1 , 1),  -- Fickle Heart
(39445, 52658, -90 , 1, 0, 1 , 1),  -- Polluted Incense
(39452, 60615, -100, 1, 0, 25, 40), -- Durotar Crocolisk Tooth
(39619, 52685, -100, 1, 0, 1 , 1),  -- Twilight Recruitment Papers
(39658, 52708, -100, 1, 0, 1 , 1),  -- Charred Basilisk Meat
(39844, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(39873, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(39896, 18947, -90 , 1, 0, 1 , 1),  -- Feral Scar Yeti Hide
(39918, 53073, -75 , 1, 0, 1 , 1),  -- Clacksnap Tail
(39964, 53054, -100, 1, 0, 1 , 1),  -- Horde Chest Key
(39994, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(40004, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(40021, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(40023, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(40033, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(40051, 53099, -100, 1, 0, 1 , 1),  -- Head of Skessesh
(40059, 53136, -90 , 1, 0, 1 , 1),  -- Soul Essence
(40066, 53102, -90 , 1, 0, 1 , 1),  -- Bileberry
(40107, 53454, -100, 1, 0, 1 , 1),  -- Black Heart of Thol'embaar
(40170, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(40193, 53642, -90 , 1, 0, 1 , 1),  -- Infected Stag Antler
(40224, 8973 , -75 , 1, 0, 1 , 1),  -- Thick Yeti Hide
(40229, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(40272, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(40273, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(40282, 54344, -100, 1, 0, 1 , 1),  -- Corroded Key
(40319, 66927, -100, 1, 0, 1 , 1),  -- Missive to Cho'gall
(40403, 52708, -100, 1, 0, 1 , 1),  -- Charred Basilisk Meat
(40403, 54610, -100, 1, 0, 1 , 1),  -- Spiked Basilisk Hide
(40449, 54821, -50 , 1, 0, 1 , 1),  -- Pirate's Crowbar
(40464, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(40466, 54640, -100, 1, 0, 1 , 1),  -- Gilblingle's Map
(40581, 54855, -100, 1, 0, 1 , 1),  -- Gargantapid's Poison Gland
(40632, 54829, -90 , 1, 0, 1 , 3),  -- Gold Filling
(40635, 54829, -90 , 1, 0, 1 , 3),  -- Gold Filling
(40648, 52069, -100, 1, 0, 1 , 1),  -- Sealed Sang'thraze
(40656, 54856, -90 , 1, 0, 1 , 1),  -- Duneclaw Stinger
(40677, 54844, -100, 1, 0, 1 , 1),  -- Stormwind Shield
(40677, 54958, -100, 1, 0, 1 , 1),  -- Stormwind Spear
(40685, 54845, -100, 1, 0, 1 , 1),  -- Succulent Crab Meat
(40709, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(40717, 54856, -90 , 1, 0, 1 , 1),  -- Duneclaw Stinger
(40810, 54844, -100, 1, 0, 1 , 1),  -- Stormwind Shield
(40811, 54842, -90 , 1, 0, 1 , 1),  -- Stormwind Helm
(40811, 54843, -90 , 1, 0, 1 , 1),  -- Stormwind Breastplate
(40811, 54844, -100, 1, 0, 1 , 1),  -- Stormwind Shield
(40841, 55123, -100, 1, 0, 1 , 1),  -- Smoldering Core
(40889, 55139, -75 , 1, 0, 1 , 1),  -- Fiasco's Stray Parts
(40905, 55181, -100, 1, 0, 1 , 1),  -- Illegible Orc Letter
(40912, 55140, -100, 1, 0, 1 , 1),  -- Snapjaw Grouper Meat
(40925, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(40958, 55160, -100, 1, 0, 1 , 1),  -- Rusted Cage Key
(41016, 55185, -100, 1, 0, 1 , 10), -- Pilfered Cannonball
(41017, 55188, -100, 1, 0, 1 , 1),  -- Medallion Fragment
(41018, 55805, -100, 1, 0, 1 , 1),  -- The Pewter Pounder
(41064, 55239, -100, 1, 0, 1 , 1),  -- Cragjaw's Huge Tooth
(41076, 55196, -100, 1, 0, 1 , 1),  -- Evil Dolly's Heart
(41081, 55197, -100, 1, 0, 1 , 1),  -- Seadog Fajardo's Lungs
(41082, 55199, -100, 1, 0, 1 , 1),  -- Lilly Landlubber's Liver
(41084, 55210, -100, 1, 0, 1 , 1),  -- Ancient Feather
(41121, 2676 , -75 , 1, 0, 1 , 1),  -- Shimmerweed
(41137, 55232, -100, 1, 0, 1 , 1),  -- Threshadon Chunk
(41145, 55234, -25 , 1, 0, 1 , 1),  -- Dumpy Level
(41146, 3084 , -100, 1, 0, 1 , 1),  -- Gyromechanic Gear
(41151, 55988, -100, 1, 0, 1 , 1),  -- Glowerglare's Beard
(41167, 55243, -100, 1, 0, 1 , 1),  -- Floodsurge Core
(41185, 55280, -100, 1, 0, 1 , 1),  -- Deepmoss Venom Sac
(41236, 55979, -100, 1, 0, 1 , 1),  -- The Sacred Flame
(41267, 10753, -100, 1, 0, 1 , 1),  -- Amulet of Grol
(41295, 56013, -75 , 1, 0, 1 , 1),  -- Meaty Crawler Claw
(41388, 56083, -100, 1, 0, 1 , 3),  -- Fossilized Bone
(41390, 56088, -90 , 1, 0, 1 , 1),  -- Ironforge Ingot
(41391, 56088, -90 , 1, 0, 1 , 1),  -- Ironforge Ingot
(41409, 56081, -100, 1, 0, 1 , 1),  -- Trapper's Key
(41419, 56087, -100, 1, 0, 1 , 1),  -- Marshy Crocolisk Hide
(41420, 56089, -100, 1, 0, 1 , 1),  -- Horrorjaw's Hide
(41437, 56140, -100, 1, 0, 1 , 1),  -- Goblin Pump Controller
(41458, 56139, -100, 1, 0, 1 , 1),  -- Longhorn's Horn
(41477, 56167, -75 , 1, 0, 1 , 1),  -- Wiggleweed Sprout
(41481, 56167, -75 , 1, 0, 1 , 1),  -- Wiggleweed Sprout
(41501, 56176, -30 , 1, 0, 1 , 1),  -- Warden's Arrow
(41502, 56177, -100, 1, 0, 1 , 1),  -- Glyph of Opening
(41549, 56167, -75 , 1, 0, 1 , 1),  -- Wiggleweed Sprout
(41569, 56183, -75 , 1, 0, 1 , 1),  -- Coil of Kvaldir Rope
(41593, 56235, -40 , 1, 0, 1 , 1),  -- Deepfin Plunder
(41601, 56254, -100, 1, 0, 1 , 1),  -- Merciless Head
(41606, 56183, -75 , 1, 0, 1 , 1),  -- Coil of Kvaldir Rope
(41607, 56194, -75 , 1, 0, 1 , 1),  -- Mysterious Pearl
(41608, 56194, -75 , 1, 0, 1 , 1),  -- Mysterious Pearl
(41648, 56822, -100, 1, 0, 1 , 1),  -- The Brain of the Unfathomable
(41657, 57096, -75 , 1, 0, 1 , 1),  -- Runestone of Binding
(41746, 56243, -75 , 1, 0, 1 , 1),  -- Orgrimmar Axe
(41746, 56244, -75 , 1, 0, 1 , 1),  -- Orgrimmar Helm
(41746, 56245, -75 , 1, 0, 1 , 1),  -- Orgrimmar Breastplate
(41864, 56469, -100, 1, 0, 1 , 1),  -- Alliance Attack Plans
(41922, 56568, -75 , 1, 0, 1 , 1),  -- Underlight Phosphora
(41922, 56573, -75 , 1, 0, 1 , 1),  -- Glow-Juice
(41923, 56568, -75 , 1, 0, 1 , 1),  -- Underlight Phosphora
(41923, 56573, -75 , 1, 0, 1 , 1),  -- Glow-Juice
(41937, 56474, -75 , 1, 0, 1 , 1),  -- Orders from Base Camp
(42184, 57987, -100, 1, 0, 1 , 1),  -- Recovered Possession
(42210, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(42221, 58202, -100, 1, 0, 1 , 1),  -- Stolen Powder Keg
(42222, 58202, -100, 1, 0, 1 , 1),  -- Stolen Powder Keg
(42296, 57134, -100, 1, 0, 1 , 2),  -- Intact Shadowsworn Spell Focus
(42297, 57134, -100, 1, 0, 1 , 2),  -- Intact Shadowsworn Spell Focus
(42336, 57177, -75 , 1, 0, 1 , 1),  -- Tainted Hide
(42337, 57178, -100, 1, 0, 1 , 3),  -- Nightstalker Leg
(42338, 57179, -50 , 1, 0, 1 , 1),  -- Screecher Brain
(42475, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(42504, 57758, -100, 1, 0, 1 , 1),  -- Swine Belly
(42524, 58845, -75 , 1, 0, 1 , 1),  -- Chalky Crystal Formation
(42527, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(42527, 58168, -100, 1, 0, 1 , 1),  -- Irestone Core
(42592, 58082, -100, 1, 0, 1 , 1),  -- Direglob Sample
(42594, 57879, -100, 1, 0, 1 , 1),  -- Horde Infantry Rations
(42606, 58501, -75 , 1, 0, 1 , 1),  -- Quartzite Resin
(42607, 58501, -75 , 1, 0, 1 , 1),  -- Quartzite Resin
(42669, 58204, -100, 1, 0, 1 , 1),  -- Chasm Ooze
(42677, 58117, -100, 1, 0, 1 , 1),  -- Red Bandana
(42677, 58118, -100, 1, 0, 1 , 1),  -- Red Bandana
(42711, 60767, -10 , 1, 0, 1 , 1),  -- Bag of Verlok Miracle-Grow
(42711, 60768, -100, 1, 0, 1 , 1),  -- Sprinkle of Verlok Miracle-Grow
(42724, 58236, -100, 1, 0, 1 , 1),  -- Umboda's Head
(42766, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(42766, 65504, -75 , 1, 0, 1 , 1),  -- Deep Alabaster Crystal
(42780, 58168, -100, 1, 0, 1 , 1),  -- Irestone Core
(42789, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(42810, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(42858, 58225, -100, 1, 0, 1 , 1),  -- Braddok's Big Brain
(42859, 57758, -100, 1, 0, 1 , 1),  -- Swine Belly
(42877, 58241, -100, 1, 0, 1 , 1),  -- Tablet of Shadra
(42879, 58239, -90 , 1, 0, 1 , 1),  -- Shadra-Spawn Venom Sample
(42919, 58779, -100, 1, 0, 1 , 1),  -- Shell of Shadra
(42937, 58361, -100, 1, 0, 1 , 1),  -- Blackrock Orc Weapon
(43026, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(43050, 57990, -25 , 1, 0, 1 , 1),  -- Green Hills of Stranglethorn - Page 14
(43123, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(43123, 59062, -100, 1, 0, 1 , 1),  -- Blood of Neltharion
(43181, 58959, -100, 1, 0, 1 , 1),  -- Petrified Stone Bat
(43185, 58936, -100, 1, 0, 1 , 1),  -- Blackrock Orc Missive
(43218, 60264, -100, 1, 0, 1 , 1),  -- Twilight Orders
(43223, 4016 , -75 , 1, 0, 1 , 1),  -- Zanzil's Mixture
(43254, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(43258, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(43325, 57987, -100, 1, 0, 1 , 1),  -- Recovered Possession
(43327, 58953, -100, 1, 0, 1 , 1),  -- Keeshan's Bow
(43329, 58954, -100, 1, 0, 1 , 1),  -- Keeshan's Survival Knife
(43331, 58960, -100, 1, 0, 1 , 1),  -- Golden Stonefish
(43339, 58959, -100, 1, 0, 1 , 1),  -- Petrified Stone Bat
(43364, 3910 , -75 , 1, 0, 2 , 3),  -- Snuff
(43367, 60767, -10 , 1, 0, 1 , 1),  -- Bag of Verlok Miracle-Grow
(43367, 60768, -100, 1, 0, 1 , 1),  -- Sprinkle of Verlok Miracle-Grow
(43368, 60767, -40 , 1, 0, 1 , 1),  -- Bag of Verlok Miracle-Grow
(43368, 60768, -100, 1, 0, 1 , 1),  -- Sprinkle of Verlok Miracle-Grow
(43372, 60768, -100, 1, 0, 1 , 1),  -- Sprinkle of Verlok Miracle-Grow
(43374, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(43376, 59034, -100, 1, 0, 1 , 1),  -- Fitztittle's Ratcheting Torque Wrench
(43377, 59035, -100, 1, 0, 1 , 1),  -- Ephram's Jeweled Mirror
(43417, 59057, -75 , 1, 0, 1 , 1),  -- Poobah's Tiara
(43417, 59058, -75 , 1, 0, 1 , 1),  -- Poobah's Scepter
(43417, 59059, -75 , 1, 0, 1 , 1),  -- Poobah's Slippers
(43417, 59060, -50 , 1, 0, 1 , 1),  -- Poobah's Diary
(43454, 3910 , -75 , 1, 0, 2 , 3),  -- Snuff
(43456, 59144, -100, 1, 0, 1 , 1),  -- The Earthinator's Cudgel
(43480, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(43532, 59156, -100, 1, 0, 1 , 1),  -- Muckdweller Gland
(43542, 3910 , -75 , 1, 0, 2 , 3),  -- Snuff
(43598, 59323, -100, 1, 0, 1 , 1),  -- Stonework Mallet
(43636, 3910 , -75 , 1, 0, 2 , 3),  -- Snuff
(43704, 60989, -100, 1, 0, 1 , 1),  -- Wolf Skirt Steak
(43732, 60204, -100, 1, 0, 1 , 1),  -- Corpseweed
(43878, 65660, -100, 1, 0, 1 , 1),  -- Grand Vizier Ertan's Heart
(43910, 60263, -75 , 1, 0, 1 , 1),  -- Whispering Blue Stone
(43911, 60263, -75 , 1, 0, 1 , 1),  -- Whispering Blue Stone
(43912, 60263, -75 , 1, 0, 1 , 1),  -- Whispering Blue Stone
(43913, 60263, -75 , 1, 0, 1 , 1),  -- Whispering Blue Stone
(43992, 60383, -75 , 1, 0, 1 , 1),  -- Twilight Snare
(44011, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(44011, 60333, -90 , 1, 0, 1 , 1),  -- Whirlpool Core
(44016, 60334, -90 , 1, 0, 1 , 1),  -- Black Bear Brain
(44113, 60380, -100, 1, 0, 1 , 1),  -- Ironjaw Humour
(44116, 56013, -75 , 1, 0, 1 , 1),  -- Meaty Crawler Claw
(44161, 60402, -100, 1, 0, 1 , 1),  -- Mosshide Ear
(44162, 60402, -100, 1, 0, 1 , 1),  -- Mosshide Ear
(44166, 5086 , -90 , 1, 0, 1 , 1),  -- Zhevra Hooves
(44170, 5030 , -90 , 1, 0, 1 , 1),  -- Centaur Bracers
(44176, 60511, -75 , 1, 0, 1 , 1),  -- Murloc Scent Gland
(44178, 3897 , -100, 1, 0, 1 , 1),  -- Dizzy's Eye
(44178, 3910 , -75 , 1, 0, 2 , 3),  -- Snuff
(44179, 3897 , -100, 1, 0, 1 , 1),  -- Dizzy's Eye
(44179, 3910 , -75 , 1, 0, 2 , 3),  -- Snuff
(44182, 3910 , -75 , 1, 0, 2 , 3),  -- Snuff
(44198, 60404, -100, 1, 0, 1 , 1),  -- Foreman Sharpsneer's Head
(44220, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(44220, 60487, -100, 1, 0, 1 , 1),  -- Elemental Ore
(44221, 60383, -75 , 1, 0, 1 , 1),  -- Twilight Snare
(44225, 56081, -100, 1, 0, 1 , 1),  -- Trapper's Key
(44226, 56083, -100, 1, 0, 1 , 3),  -- Fossilized Bone
(44257, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(44257, 65504, -75 , 1, 0, 1 , 1),  -- Deep Alabaster Crystal
(44259, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(44259, 65504, -75 , 1, 0, 1 , 1),  -- Deep Alabaster Crystal
(44292, 60511, -75 , 1, 0, 1 , 1),  -- Murloc Scent Gland
(44390, 5938 , -100, 1, 0, 1 , 1),  -- Pristine Crawler Leg
(44414, 60638, -100, 1, 0, 1 , 1),  -- Durak's Head
(44442, 60772, -100, 1, 0, 1 , 1),  -- Cult Orders
(44473, 60851, -75 , 1, 0, 1 , 1),  -- Side of Bear Meat
(44478, 60748, -100, 1, 0, 1 , 1),  -- Redpine Club
(44479, 60747, -100, 1, 0, 1 , 1),  -- Redpine Stave
(44482, 60762, -100, 1, 0, 1 , 1),  -- Hulking Plaguebear Sample
(44557, 52072, -90 , 1, 0, 1 , 1),  -- Darkest Mojo
(44620, 60754, -75 , 1, 0, 1 , 1),  -- Glassy Hornet Wing
(44628, 60792, -75 , 1, 0, 1 , 1),  -- Pristine Flight Feather
(44635, 60755, -100, 1, 0, 1 , 1),  -- Fluffy Fox Tail
(44847, 60745, -50 , 1, 0, 1 , 1),  -- Masters' Gate Plans
(44849, 60745, -50 , 1, 0, 1 , 1),  -- Masters' Gate Plans
(44855, 60745, -50 , 1, 0, 1 , 1),  -- Masters' Gate Plans
(45084, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(45099, 60837, -100, 1, 0, 1 , 1),  -- The Burning Heart
(45185, 61048, -90 , 1, 0, 1 , 1),  -- Abused Shredder Parts
(45190, 60860, -75 , 1, 0, 1 , 1),  -- Ornate Tablet Fragment
(45205, 60865, -100, 1, 0, 1 , 1),  -- Sultan's Staff
(45219, 60867, -100, 1, 0, 1 , 1),  -- Smithers' Logbook
(45227, 60883, -100, 1, 0, 1 , 1),  -- Broodqueen Pedipalp
(45321, 63541, -100, 1, 0, 1 , 1),  -- Meat Scrap
(45358, 60981, -100, 1, 0, 1 , 1),  -- Fleshburner Heart
(45359, 60982, -75 , 1, 0, 1 , 1),  -- Pyreburn Oil
(45380, 60755, -100, 1, 0, 1 , 1),  -- Fluffy Fox Tail
(45384, 60402, -100, 1, 0, 1 , 1),  -- Mosshide Ear
(45401, 60511, -75 , 1, 0, 1 , 1),  -- Murloc Scent Gland
(45402, 60754, -75 , 1, 0, 1 , 1),  -- Glassy Hornet Wing
(45405, 60977, -100, 1, 0, 1 , 1),  -- Orders from High Command
(45443, 61387, -25 , 1, 0, 1 , 1),  -- Hidden Stash
(45444, 61387, -25 , 1, 0, 1 , 1),  -- Hidden Stash
(45450, 60987, -100, 1, 0, 1 , 1),  -- Joseph's Hunting Blade
(45450, 61387, -25 , 1, 0, 1 , 1),  -- Hidden Stash
(45453, 61387, -25 , 1, 0, 1 , 1),  -- Hidden Stash
(45477, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(45582, 60207, -100, 1, 0, 1 , 1),  -- Widow Venom Sac
(45664, 61387, -25 , 1, 0, 1 , 1),  -- Hidden Stash
(45681, 61387, -25 , 1, 0, 1 , 1),  -- Hidden Stash
(45691, 61387, -25 , 1, 0, 1 , 1),  -- Hidden Stash
(45692, 61387, -25 , 1, 0, 1 , 1),  -- Hidden Stash
(45711, 61307, -75 , 1, 0, 1 , 1),  -- Servitor Core
(45728, 61310, -100, 1, 0, 1 , 1),  -- Arcane Remnant
(45728, 61311, -100, 1, 0, 1 , 1),  -- Arcane Remnant
(45734, 61312, -100, 1, 0, 1 , 1),  -- Dalaran Archmage's Signet Ring
(45743, 61387, -25 , 1, 0, 1 , 1),  -- Hidden Stash
(45744, 61387, -25 , 1, 0, 1 , 1),  -- Hidden Stash
(45755, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(45765, 61321, -100, 1, 0, 1 , 1),  -- Piece of Rope
(45785, 60204, -100, 1, 0, 1 , 1),  -- Corpseweed
(45809, 61633, -75 , 1, 0, 1 , 1),  -- Intact Swampshore Tail
(45825, 62043, -100, 1, 0, 1 , 1),  -- Jumbo Swampstrider Drumstick
(45851, 15447, -90 , 1, 0, 1 , 1),  -- Living Rot
(45851, 61387, -25 , 1, 0, 1 , 1),  -- Hidden Stash
(45855, 61510, -50 , 1, 0, 1 , 1),  -- 7th Legion Battle Plan
(45867, 61378, -100, 1, 0, 1 , 1),  -- The Baroness' Missive
(45867, 61387, -25 , 1, 0, 1 , 1),  -- Hidden Stash
(45868, 61378, -100, 1, 0, 1 , 1),  -- The Baroness' Missive
(45868, 61387, -25 , 1, 0, 1 , 1),  -- Hidden Stash
(45896, 61505, -100, 1, 0, 1 , 1),  -- Partially Digested Head
(45896, 61506, -50 , 1, 0, 1 , 1),  -- Dempsey's Torso
(45896, 61507, -50 , 1, 0, 1 , 1),  -- Dempsey's Appendages
(45896, 61508, -50 , 1, 0, 1 , 1),  -- Dempsey's Giblets
(45897, 61387, -25 , 1, 0, 1 , 1),  -- Hidden Stash
(45905, 63081, -75 , 1, 0, 1 , 1),  -- Relic of the Sun King
(45912, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(45915, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(45995, 61510, -50 , 1, 0, 1 , 1),  -- 7th Legion Battle Plan
(46017, 61924, -100, 1, 0, 1 , 1),  -- Za's Head
(46017, 61925, -100, 1, 0, 1 , 1),  -- Brox's Head
(46018, 61926, -100, 1, 0, 1 , 1),  -- Beeble's Head
(46018, 61927, -100, 1, 0, 1 , 1),  -- Phod's Head
(46041, 61971, -100, 1, 0, 1 , 1),  -- Stone of the Sun
(46042, 61970, -100, 1, 0, 1 , 1),  -- Stone of the Moon
(46092, 61387, -25 , 1, 0, 1 , 1),  -- Hidden Stash
(46093, 61387, -25 , 1, 0, 1 , 1),  -- Hidden Stash
(46094, 61387, -25 , 1, 0, 1 , 1),  -- Hidden Stash
(46095, 61387, -25 , 1, 0, 1 , 1),  -- Hidden Stash
(46096, 61387, -25 , 1, 0, 1 , 1),  -- Hidden Stash
(46098, 61048, -90 , 1, 0, 1 , 1),  -- Abused Shredder Parts
(46146, 62551, -100, 1, 0, 1 , 1),  -- Intact Stagalbog Serpent Heart
(46153, 64320, -90 , 1, 0, 1 , 1),  -- Worg Rib
(46158, 62915, -100, 1, 0, 1 , 1),  -- Fresh Gryphon Carcass
(46162, 64317, -90 , 1, 0, 1 , 1),  -- Pristine Owl Feather
(46167, 61387, -25 , 1, 0, 1 , 1),  -- Hidden Stash
(46167, 62028, -100, 1, 0, 1 , 1),  -- Browman's Wrappings
(46202, 62033, -100, 1, 0, 1 , 1),  -- Dark Assassin's Pendant
(46264, 62305, -100, 1, 0, 1 , 1),  -- Lord Overheat's Fiery Core
(46310, 62332, -100, 1, 0, 1 , 1),  -- Dragonmaw Insignia
(46320, 62325, -100, 1, 0, 1 , 1),  -- Wildhammer Insignia
(46327, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(46328, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(46329, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(46340, 62280, -100, 1, 0, 1 , 1),  -- Vir'Naal Delta Map
(46376, 62325, -100, 1, 0, 1 , 1),  -- Wildhammer Insignia
(46377, 62325, -100, 1, 0, 1 , 1),  -- Wildhammer Insignia
(46378, 62325, -100, 1, 0, 1 , 1),  -- Wildhammer Insignia
(46399, 62230, -100, 1, 0, 1 , 1),  -- The Elementium Axe
(46474, 56167, -75 , 1, 0, 1 , 1),  -- Wiggleweed Sprout
(46493, 62332, -100, 1, 0, 1 , 1),  -- Dragonmaw Insignia
(46507, 62803, -100, 1, 0, 1 , 1),  -- Sticky Silk Gland
(46569, 62808, -100, 1, 0, 1 , 1),  -- Cursed Femur
(46580, 62331, -75 , 1, 0, 1 , 1),  -- Elementium Shard
(46582, 62808, -100, 1, 0, 1 , 1),  -- Cursed Femur
(46586, 62808, -100, 1, 0, 1 , 1),  -- Cursed Femur
(46587, 62399, -100, 1, 0, 1 , 1),  -- Core Access Codes
(46590, 62483, -100, 1, 0, 1 , 1),  -- A.I.D.A. Communicator
(46597, 62808, -100, 1, 0, 1 , 1),  -- Cursed Femur
(46611, 62394, -100, 1, 0, 1 , 1),  -- Fire Portal Controller
(46630, 62811, -100, 1, 0, 1 , 3),  -- Shipyard Lumber
(46641, 62811, -100, 1, 0, 1 , 3),  -- Shipyard Lumber
(46643, 62811, -100, 1, 0, 1 , 3),  -- Shipyard Lumber
(46693, 62396, -100, 1, 0, 1 , 1),  -- Instructor's Rod
(46756, 62332, -100, 1, 0, 1 , 1),  -- Dragonmaw Insignia
(46772, 62485, -90 , 1, 0, 1 , 1),  -- Broken Chalice
(46772, 62486, -75 , 1, 0, 1 , 1),  -- Dusty Vase
(46772, 62487, -75 , 1, 0, 1 , 1),  -- Earthen Hieroglyph
(46772, 62488, -50 , 1, 0, 1 , 1),  -- Trogg Tool
(46773, 62594, -90 , 1, 0, 1 , 1),  -- Broken Chalice
(46773, 62595, -75 , 1, 0, 1 , 1),  -- Dusty Vase
(46773, 62596, -75 , 1, 0, 1 , 1),  -- Earthen Hieroglyph
(46773, 62597, -50 , 1, 0, 1 , 1),  -- Trogg Tool
(46851, 62511, -50 , 1, 0, 1 , 1),  -- Dragonmaw Weapon
(46885, 62325, -100, 1, 0, 1 , 1),  -- Wildhammer Insignia
(46910, 54609, -90 , 1, 0, 1 , 1),  -- Core Hound Entrails
(46911, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(46920, 62483, -100, 1, 0, 1 , 1),  -- A.I.D.A. Communicator
(46950, 62749, -100, 1, 0, 1 , 1),  -- Smoky Crystal
(46953, 62609, -100, 1, 0, 1 , 1),  -- Purespring Mote
(46963, 60876, -100, 1, 0, 1 , 1),  -- Walden's Elixirs
(46964, 60877, -100, 1, 0, 1 , 1),  -- Godfrey's Crystal Scope
(46964, 60882, -100, 1, 0, 1 , 1),  -- Tenebrous Orb
(46970, 64319, -90 , 1, 0, 1 , 1),  -- Fresh Venison
(46971, 64319, -90 , 1, 0, 1 , 1),  -- Fresh Venison
(46997, 62593, -100, 1, 0, 1 , 1),  -- Invigorated Silt
(47009, 61307, -75 , 1, 0, 1 , 1),  -- Servitor Core
(47014, 62483, -100, 1, 0, 1 , 1),  -- A.I.D.A. Communicator
(47032, 62705, -100, 1, 0, 1 , 1),  -- Lens of the Sun
(47053, 62714, -100, 1, 0, 1 , 1),  -- Duskfang's Hide
(47071, 65504, -75 , 1, 0, 1 , 1),  -- Deep Alabaster Crystal
(47081, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(47130, 62921, -100, 1, 0, 1 , 3),  -- Rusty Rifle
(47131, 60874, -100, 1, 0, 1 , 1),  -- Deathless Sinew
(47134, 60874, -100, 1, 0, 1 , 1),  -- Deathless Sinew
(47135, 60874, -100, 1, 0, 1 , 1),  -- Deathless Sinew
(47150, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(47151, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(47190, 62776, -75 , 1, 0, 1 , 1),  -- Desert Coyote Pelt
(47202, 63541, -100, 1, 0, 1 , 1),  -- Meat Scrap
(47226, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(47226, 62796, -75 , 1, 0, 1 , 1),  -- Black Diamond Heart
(47226, 63285, -90 , 1, 0, 1 , 1),  -- Twisted Elementium Loop
(47231, 60875, -100, 1, 0, 1 , 1),  -- Ghostly Essence
(47232, 60875, -100, 1, 0, 1 , 1),  -- Ghostly Essence
(47270, 62807, -100, 1, 0, 1 , 1),  -- Dark Iron Memo
(47271, 62806, -100, 1, 0, 1 , 1),  -- Dark Ember
(47309, 62822, -100, 1, 0, 1 , 1),  -- Twilight Collar
(47309, 62825, -100, 1, 0, 1 , 1),  -- Kiyuubi's Spherule
(47310, 62822, -100, 1, 0, 1 , 1),  -- Twilight Collar
(47310, 62823, -100, 1, 0, 1 , 1),  -- Letherio's Spherule
(47311, 62822, -100, 1, 0, 1 , 1),  -- Twilight Collar
(47311, 62824, -100, 1, 0, 1 , 1),  -- Finister's Spherule
(47388, 62911, -90 , 1, 0, 1 , 1),  -- Scoop of Silithid Goo
(47398, 62919, -100, 1, 0, 1 , 1),  -- Claw of Tichondrius
(47479, 62924, -100, 1, 0, 1 , 1),  -- Trapper Net
(47484, 64386, -100, 1, 0, 1 , 1),  -- Yetimus' Twisted Horn
(47537, 63033, -100, 1, 0, 1 , 1),  -- Archmage Galus' Staff
(47544, 63143, -100, 1, 0, 1 , 1),  -- Svarnos' Cursed Collar
(47553, 63028, -100, 1, 0, 1 , 1),  -- Rasha'krak's Bracers of Binding
(47583, 63035, -100, 1, 0, 1 , 1),  -- Twilight's Hammer Armor
(47585, 63035, -100, 1, 0, 1 , 1),  -- Twilight's Hammer Armor
(47591, 63103, -100, 1, 0, 1 , 1),  -- Crocolisk Hide
(47630, 63035, -100, 1, 0, 1 , 1),  -- Twilight's Hammer Armor
(47642, 63047, -100, 1, 0, 3 , 5),  -- Rustberg Seabass
(47687, 63279, -100, 1, 0, 1 , 1),  -- Kitty's Eartag
(47720, 63541, -100, 1, 0, 1 , 1),  -- Meat Scrap
(47724, 63087, -90 , 1, 0, 1 , 1),  -- Twilight Garment Scrap
(47726, 63541, -100, 1, 0, 1 , 1),  -- Meat Scrap
(47728, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(47728, 63089, -90 , 1, 0, 1 , 1),  -- Breath of the Vortex
(47777, 63096, -100, 1, 0, 1 , 1),  -- The Doomstone
(47789, 63250, -100, 1, 0, 1 , 1),  -- The Battle for Hillsbrad
(47803, 63541, -100, 1, 0, 1 , 1),  -- Meat Scrap
(47859, 63254, -100, 1, 0, 1 , 1),  -- Flesh Sample
(47861, 63254, -100, 1, 0, 1 , 1),  -- Flesh Sample
(47982, 63248, -75 , 1, 0, 1 , 1),  -- Fresh Sailor Uniform
(48015, 63286, -100, 1, 0, 1 , 1),  -- Magmalord Falthazar's Head
(48016, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(48016, 63283, -75 , 1, 0, 1 , 1),  -- Molten Fury
(48017, 63281, -50 , 1, 0, 1 , 1),  -- Lydon's Cage Key
(48036, 63309, -100, 1, 0, 1 , 1),  -- Warden's Keys
(48080, 63330, -100, 1, 0, 1 , 1),  -- Head of Warden Stillwater
(48102, 63374, -100, 1, 0, 1 , 1),  -- Bahrum's Pants
(48177, 62911, -95 , 1, 0, 1 , 1),  -- Scoop of Silithid Goo
(48178, 62911, -90 , 1, 0, 1 , 1),  -- Scoop of Silithid Goo
(48184, 64410, -100, 1, 0, 1 , 1),  -- Juicy Stag Meat
(48239, 63541, -100, 1, 0, 1 , 1),  -- Meat Scrap
(48315, 63519, -100, 1, 0, 1 , 1),  -- Crude Tarball
(48344, 63687, -100, 1, 0, 1 , 1),  -- Kroshius' Infernal Core
(48515, 64307, -100, 1, 0, 1 , 1),  -- Alliance Battle Plans
(48533, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(48533, 64404, -100, 1, 0, 1 , 1),  -- Ruby Crystal Cluster
(48628, 64380, -100, 1, 0, 1 , 1),  -- Beating Yeti Heart
(48678, 64463, -100, 1, 0, 1 , 1),  -- Shard of the Spiritspeaker
(48740, 64441, -100, 1, 0, 1 , 1),  -- Memory of Zin-Malor
(48765, 64465, -100, 1, 0, 1 , 1),  -- Rimepelt's Heart
(48767, 64449, -75 , 1, 0, 1 , 1),  -- Suspicious Green Sludge
(48768, 64449, -75 , 1, 0, 1 , 1),  -- Suspicious Green Sludge
(48952, 64587, -100, 1, 0, 1 , 1),  -- Fresh-Cut Frostwood
(48960, 64586, -100, 1, 0, 1 , 1),  -- Prime Rubble Chunk
(49161, 66052, -75 , 1, 0, 1 , 1),  -- Mana-Addled Brain
(49214, 64649, -100, 1, 0, 1 , 1),  -- The Cypher of Keset
(49235, 12435, -90 , 1, 0, 1 , 1),  -- Ice Thistle E'ko
(49235, 64664, -100, 1, 0, 1 , 1),  -- Icewhomp's Pristine Horns
(49816, 65504, -75 , 1, 0, 1 , 1),  -- Deep Alabaster Crystal
(50250, 65903, -100, 1, 0, 1 , 1),  -- Winterwater
(50251, 65903, -100, 1, 0, 2 , 2),  -- Winterwater
(51193, 63541, -100, 1, 0, 1 , 1),  -- Meat Scrap
(51631, 4503 , -75 , 1, 0, 1 , 1),  -- Witherbark Tusk
(51633, 4503 , -75 , 1, 0, 1 , 1),  -- Witherbark Tusk
(51633, 4522 , -75 , 1, 0, 1 , 1),  -- Witherbark Medicine Pouch
(51672, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(51675, 63541, -100, 1, 0, 1 , 1),  -- Meat Scrap
(51726, 68681, -75 , 1, 0, 1 , 1),  -- Roc Gut
(52148, 69774, -100, 1, 0, 1 , 1),  -- Zul'Gurub Stone
(52219, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(52258, 69647, -100, 1, 0, 1 , 1),  -- Mysterious Gurubashi Bijou
(52269, 69647, -100, 1, 0, 1 , 1),  -- Mysterious Gurubashi Bijou
(52271, 69647, -100, 1, 0, 1 , 1),  -- Mysterious Gurubashi Bijou
(52286, 69647, -100, 1, 0, 1 , 1),  -- Mysterious Gurubashi Bijou
(52289, 69677, -100, 1, 0, 1 , 1),  -- Sulfur-Laced Wrapping
(52300, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(52300, 69678, -100, 1, 0, 1 , 1),  -- Flame-Wreathed Heart
(52356, 68820, -75 , 1, 0, 1 , 1),  -- Sputtervalve's Blueprints
(52357, 68820, -75 , 1, 0, 1 , 1),  -- Sputtervalve's Blueprints
(52409, 69815, -100, 1, 0, 18, 55), -- Seething Cinder
(52409, 71141, -90 , 1, 0, 1 , 3),  -- Eternal Ember
(52498, 69815, -100, 1, 0, 18, 66), -- Seething Cinder
(52498, 71141, -90 , 1, 0, 1 , 3),  -- Eternal Ember
(52503, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(52503, 69722, -100, 1, 0, 1 , 1),  -- Embergris
(52504, 69722, -100, 1, 0, 1 , 1),  -- Embergris
(52530, 69815, -100, 1, 0, 18, 66), -- Seething Cinder
(52530, 71141, -90 , 1, 0, 1 , 3),  -- Eternal Ember
(52558, 69815, -100, 1, 0, 18, 66), -- Seething Cinder
(52558, 71141, -90 , 1, 0, 1 , 3),  -- Eternal Ember
(52571, 69815, -100, 1, 0, 18, 66), -- Seething Cinder
(52571, 71141, -90 , 1, 0, 1 , 3),  -- Eternal Ember
(52648, 69808, -100, 1, 0, 1 , 1),  -- Flame Venom
(52791, 69679, -100, 1, 0, 7 , 25), -- Flamewaker Scale
(52794, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(52816, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(52981, 69809, -100, 1, 0, 1 , 1),  -- Searing Web Fluid
(53090, 69725, -95 , 1, 0, 1 , 1),  -- Magmolia
(53152, 69816, -100, 1, 0, 1 , 1),  -- Houndbone Ash
(53264, 52506, -100, 1, 0, 1 , 1),  -- Elemental Goo
(53264, 69678, -100, 1, 0, 1 , 1),  -- Flame-Wreathed Heart
(53494, 69815, -100, 1, 0, 18, 66), -- Seething Cinder
(53494, 71141, -90 , 1, 0, 1 , 3),  -- Eternal Ember
(53691, 69815, -100, 1, 0, 18, 66), -- Seething Cinder
(53691, 71141, -90 , 1, 0, 1 , 3),  -- Eternal Ember
(54371, 58111, -50 , 1, 0, 1 , 1),  -- Gnoll Attack Orders
(54372, 58111, -50 , 1, 0, 1 , 1),  -- Gnoll Attack Orders
(54373, 58111, -50 , 1, 0, 1 , 1),  -- Gnoll Attack Orders
(57910, 77954, -100, 1, 0, 1 , 1); -- Vial of Black Dragonsblood

UPDATE `creature_template` SET `lootid`=`entry` WHERE `lootid`=0 AND `entry` IN
    (32985, 33041, 33181, 33419, 33444, 33456, 33458, 34206, 34353, 34385,
    34398, 34503, 34545, 34590, 34591, 34602, 34706, 34707, 34747, 34750,
    34829, 34894, 34898, 34911, 34969, 35096, 35234, 35312, 35409, 35558,
    35759, 36103, 36129, 36130, 36156, 36304, 36353, 36592, 36593, 36594,
    36611, 36614, 36680, 36681, 36708, 36712, 36884, 37083, 37084, 37092,
    37093, 37157, 37208, 37553, 37556, 37560, 37585, 37660, 37661, 37786,
    37924, 37925, 37926, 38033, 38046, 38329, 38359, 38360, 38663, 38845,
    38884, 38896, 38909, 38916, 39004, 39061, 39072, 39141, 39142, 39143,
    39193, 39194, 39354, 39363, 39370, 39373, 39414, 39415, 39418, 39426,
    39445, 39452, 39619, 39658, 39844, 39873, 39896, 39918, 39964, 39994,
    40004, 40021, 40023, 40033, 40051, 40059, 40066, 40107, 40170, 40193,
    40224, 40229, 40272, 40273, 40282, 40319, 40403, 40449, 40464, 40466,
    40581, 40632, 40635, 40648, 40656, 40677, 40685, 40709, 40717, 40810,
    40811, 40841, 40889, 40905, 40912, 40925, 40958, 41016, 41017, 41018,
    41064, 41076, 41081, 41082, 41084, 41121, 41137, 41145, 41146, 41151,
    41167, 41185, 41236, 41267, 41295, 41388, 41390, 41391, 41409, 41419,
    41420, 41437, 41458, 41477, 41481, 41501, 41502, 41549, 41569, 41593,
    41601, 41606, 41607, 41608, 41648, 41657, 41746, 41864, 41922, 41923,
    41937, 42184, 42210, 42221, 42222, 42296, 42297, 42336, 42337, 42338,
    42475, 42504, 42524, 42527, 42592, 42594, 42606, 42607, 42669, 42677,
    42711, 42724, 42766, 42780, 42789, 42810, 42858, 42859, 42877, 42879,
    42919, 42937, 43026, 43050, 43123, 43181, 43185, 43218, 43223, 43254,
    43258, 43325, 43327, 43329, 43331, 43339, 43364, 43367, 43368, 43372,
    43374, 43376, 43377, 43417, 43454, 43456, 43480, 43532, 43542, 43598,
    43636, 43704, 43732, 43878, 43910, 43911, 43912, 43913, 43992, 44011,
    44016, 44113, 44116, 44161, 44162, 44166, 44170, 44176, 44178, 44179,
    44182, 44198, 44220, 44221, 44225, 44226, 44257, 44259, 44292, 44390,
    44414, 44442, 44473, 44478, 44479, 44482, 44557, 44620, 44628, 44635,
    44847, 44849, 44855, 45084, 45099, 45185, 45190, 45205, 45219, 45227,
    45321, 45358, 45359, 45380, 45384, 45401, 45402, 45405, 45443, 45444,
    45450, 45453, 45477, 45582, 45664, 45681, 45691, 45692, 45711, 45728,
    45734, 45743, 45744, 45755, 45765, 45785, 45809, 45825, 45851, 45855,
    45867, 45868, 45896, 45897, 45905, 45912, 45915, 45995, 46017, 46018,
    46041, 46042, 46092, 46093, 46094, 46095, 46096, 46098, 46146, 46153,
    46158, 46162, 46167, 46202, 46264, 46310, 46320, 46327, 46328, 46329,
    46340, 46376, 46377, 46378, 46399, 46474, 46493, 46507, 46569, 46580,
    46582, 46586, 46587, 46590, 46597, 46611, 46630, 46641, 46643, 46693,
    46756, 46772, 46773, 46851, 46885, 46910, 46911, 46920, 46950, 46953,
    46963, 46964, 46970, 46971, 46997, 47009, 47014, 47032, 47053, 47071,
    47081, 47130, 47131, 47134, 47135, 47150, 47151, 47190, 47202, 47226,
    47231, 47232, 47270, 47271, 47309, 47310, 47311, 47388, 47398, 47479,
    47484, 47537, 47544, 47553, 47583, 47585, 47591, 47630, 47642, 47687,
    47720, 47724, 47726, 47728, 47777, 47789, 47803, 47859, 47861, 47982,
    48015, 48016, 48017, 48036, 48080, 48102, 48177, 48178, 48184, 48239,
    48315, 48344, 48515, 48533, 48628, 48678, 48740, 48765, 48767, 48768,
    48952, 48960, 49161, 49214, 49235, 49816, 50250, 50251, 51193, 51631,
    51633, 51672, 51675, 51726, 52148, 52219, 52258, 52269, 52271, 52286,
    52289, 52300, 52356, 52357, 52409, 52498, 52503, 52504, 52530, 52558,
    52571, 52648, 52791, 52794, 52816, 52981, 53090, 53152, 53264, 53494,
    53691, 54371, 54372, 54373, 57910);

	
	





























