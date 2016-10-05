DELETE FROM `smart_scripts` WHERE `entryorguid`=28503 AND `source_type`=0 AND `id`>4;
DELETE FROM `smart_scripts` WHERE `entryorguid`=2850300 AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=-98865 AND `source_type`=0;
UPDATE `creature_template` SET `spell1`=54135, `spell2`=54132, `spell3`=54136 WHERE  `entry`=28931;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(28503, 0, 5, 6, 62, 0, 100, 0, 9731, 0, 0, 0, 64, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Overlord Drakuru - On Gossip Option 0 Selected - Store Target'),
(28503, 0, 6, 7, 61, 0, 100, 0, 0, 0, 0, 0, 85, 52863, 2, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 'Overlord Drakuru - On Gossip Option 0 Selected - Cast Drakuru Betrayal Teleport'),
(28503, 0, 7, 8, 61, 0, 100, 0, 0, 0, 0, 0, 12, 28998, 1, 600000, 0, 0, 0, 8, 0, 0, 0, 6175.246, -2017.655, 590.9613, 2.984513, 'Overlord Drakuru - On Gossip Option 0 Selected - Summon Drakuru');

DELETE FROM `spell_target_position` WHERE `id` IN(52863,57553);
INSERT INTO `spell_target_position` (`id`, `effIndex`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES 
(52863, 0, 571, 6161.15, -2015.36, 590.878, 6.196), -- Drakuru Betrayal Teleport
(57553, 0, 571, 5875.43, -1981.37, 234.671, 0); -- Escape Voltarus

DELETE FROM `creature_template_addon` WHERE `entry`=28998;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `auras`) VALUES
(28998, 0, 0x0, 0x1, '58837 54104'); -- 28998 - 58837, 54104

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`IN(-52010,54089);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(-52010, '-51966', 0,'On Remove Scourge Disguise Expiring - Also Remove Scourge Disguise'),
(54089, '52010', '1', 'On Hit Drop Disguise - Remove Scourge Disguise'); 

DELETE FROM `creature_text` WHERE `entry` =28998;
DELETE FROM `creature_text` WHERE `entry` =28498 AND `groupid`>6;

INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(28998, 0, 0, 'Behold, mon! We be creatin'' da greatest Scourge army ever seen!', 12, 0, 100, 396, 0, 14023, 'Overlord Drakuru'),
(28998, 1, 0, 'These be da first of many! We shall sweep across Zul''Drak like da wind....', 12, 0, 100, 396, 0, 14024, 'Overlord Drakuru'),
(28998, 2, 0, 'What treachery is this?! You be payin'' for this deceit with your life, mon!', 12, 0, 100, 0, 0, 14025, 'Overlord Drakuru'),
(28998, 3, 0, 'The Scepter of Domination glows brightly! Use it now!', 41, 0, 100, 0, 0, 0, 'Overlord Drakuru'),
(28998, 4, 0, 'How could dis be? Da Lich King said he be havin'' great plans for you, mon...', 14, 0, 100, 0, 0, 14027, 'Overlord Drakuru'),
(28998, 4, 1, 'Ya done turned your back on destiny, mon. Now you gunna die!', 14, 0, 100, 0, 0, 14029, 'Overlord Drakuru'),
(28998, 4, 2, 'Fool! Ya coulda been havin'' great power, mon!', 14, 0, 100, 0, 0, 14026, 'Overlord Drakuru'),
(28998, 4, 3, 'Your betrayal not gunna be slowin'' me down none, mon.', 14, 0, 100, 0, 0, 14030, 'Overlord Drakuru'),
(28998, 4, 4, 'I shoulda known not to be trustin'' nobody!', 14, 0, 100, 0, 0, 14028, 'Overlord Drakuru'),
(28998, 4, 5, 'I never needed ya, mon. I can crush Zul''Drak without ya!', 14, 0, 100, 0, 0, 14031, 'Overlord Drakuru'),
(28998, 5, 0, 'ENOUGH!', 14, 0, 100, 22, 0, 14020, 'Overlord Drakuru'),
(28998, 6, 0, 'Dis foolish treachery has cost ya your destiny!', 14, 0, 100, 396, 0, 14021, 'Overlord Drakuru'),
(28998, 7, 0, 'Master, dis mortal scum be double-crossin'' us. Dey must be made to suffer!', 12, 0, 100, 396, 0, 14022, 'Overlord Drakuru'),
(28998, 8, 0, 'Disguise Failing! Avoid Scourge Contact!', 41, 0, 100, 0, 0, 0, 'Overlord Drakuru'),
(28498, 7, 0, 'You have failed me, Drakuru!', 12, 0, 100, 396, 0, 14762, 'The Lich King'),
(28498, 8, 0, 'It is you who should suffer. Be content that your death is a quick one....', 12, 0, 100, 397, 0, 14763, 'The Lich King'),
(28498, 9, 0, 'As for you...', 12, 0, 100, 397, 0, 14764, 'The Lich King'),
(28498, 10, 0, 'I spare your insignificant life as a reward for this amusing betrayal. There may yet be a shred of potential in you.', 12, 0, 100, 396, 0, 14765, 'The Lich King'),
(28498, 11, 0, 'Be warned...', 12, 0, 100, 396, 0, 14766, 'The Lich King'),
(28498, 12, 0, 'When next we meet I shall require much more to justify your life.', 12, 0, 100, 396, 0, 14767, 'The Lich King');

UPDATE `smart_scripts` SET `event_param2`=28498 WHERE  `entryorguid`=28498 AND `source_type`=0 AND `id` IN(1,3);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry`=28498;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, 28498, 0, 0, 23, 1, 4196, 0, 0, 0, 0, 0, '', 'The Lich King - Only Run SAI in Drak Tharon Keep'),
(22, 6, 28498, 0, 0, 23, 1, 4314, 0, 0, 0, 0, 0, '', 'The Lich King - Only Run SAI in Voltarus');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`IN(54250,54105);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(13, 1, 54250, 0, 0, 31, 0, 3, 28960, 0, 0, 0, 0, '', 'Drakurus Skull Missile targets Totally Generic Bunny'),
(13, 1, 54105, 0, 0, 31, 0, 4, 0, 0, 0, 0, 0, '', 'Blight Fog Targets Player'),
(13, 1, 54105, 0, 1, 31, 0, 3, 28931, 0, 0, 0, 0, '', 'Blight Fog Targets Blightblood Troll');

UPDATE `creature_template` SET `ainame`='SmartAI', `scriptname`='' WHERE `entry` IN(28931,28998,28960,29100);
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE  `entry`=202357;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN(2899800,2899801,2849801,2899802) AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`IN(28998,28931,28960,29100) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`IN(202357) AND `source_type`=1;

DELETE FROM `smart_scripts` WHERE `entryorguid`=28498 AND `source_type`=0 AND `id`>4;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(28960, 0, 0, 1, 8, 0, 100, 0, 54250, 0, 0, 0, 11, 54253, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Totally Generic Bunny (JSB) - On Spell hit (Drakurus Skull Missile) - Cast Spawn Drakurus Skull'),
(28960, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 50, 202357, 120, 0, 0, 0, 0, 8, 0, 0, 0, 6185.989, -2029.698, 590.8779, 0, 'Totally Generic Bunny (JSB) - On Spell hit (Drakurus Skull Missile) - Spawn Drakurus Last Wish'),
(28960, 0, 2, 0, 38, 0, 100, 0, 1, 1, 0, 0, 11, 51807, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Totally Generic Bunny (JSB) - On Data Set 1 1 - Cast Athas Portal'),
(28960, 0, 3, 0, 38, 0, 100, 0, 2, 2, 0, 0, 28, 51807, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Totally Generic Bunny (JSB) - On Data Set 2 2 - Remove Aura Athas Portal'),
(29100, 0, 0, 0, 38, 0, 100, 0, 1, 1, 0, 0, 11, 51347, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Totally Generic Bunny x8.0 (JSB) - On Data Set 1 1 - Cast Teleport Visual Only'),
(29100, 0, 1, 0, 38, 0, 100, 0, 2, 2, 0, 0, 11, 53104, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Totally Generic Bunny x8.0 (JSB) - On Data Set 2 2 - Cast Scourge Spotlight'),
(29100, 0, 2, 0, 38, 0, 100, 0, 3, 3, 0, 0, 28, 53104, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Totally Generic Bunny x8.0 (JSB) - On Data Set 3 3 - Remove Aura Scourge Spotlight'),
(202357, 1, 0, 0, 62, 0, 100, 0, 11091, 0, 0, 0, 85, 57553, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Drakurus Last Wish - On Gossip Select - Invoker Cast Escape Voltarus'),
(28998, 0, 0, 0, 54, 0, 100, 1, 0, 0, 0, 0, 80, 2899800, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Overlord Drakuru - On Just Summoned Run Script'),
(28998, 0, 1, 0, 7, 0, 100, 0, 0, 0, 0, 0, 19, 256, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Overlord Drakuru - On Evade - Set Unit Flags'),
(28998, 0, 2, 3, 4, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Overlord Drakuru - On Agro - Disable Combat Movement'),
(28998, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 2, 2, 0, 0, 0, 0, 9, 29100, 0, 200, 0, 0, 0, 0, 'Overlord Drakuru - On Agro - Set Data'),
(28998, 0, 4, 0, 9, 0, 100, 0, 10, 100, 3000, 7000, 11, 54113, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Overlord Drakuru - On Range - Cast Shadow Bolt'),
(28998, 0, 5, 0, 0, 0, 100, 0, 5000, 10000, 15000, 35000, 11, 54087, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'Overlord Drakuru - IC - Cast Throw Blight Crystal'),
(28998, 0, 6, 0, 0, 0, 100, 0, 15000, 25000, 20000, 35000, 1, 4, 0, 0, 0, 0, 0, 21, 100, 0, 0, 0, 0, 0, 0, 'Overlord Drakuru - IC - Say'),
(28998, 0, 7, 0, 2, 0, 100, 1, 0, 10, 0, 0, 80, 2899801, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Overlord Drakuru - On Less than 10% HP - Run script 2'),
(28998, 0, 8, 0, 38, 0, 100, 0, 1, 1, 0, 0, 80, 2899802, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Overlord Drakuru - On Data Set - Run Script 3'),
(28998, 0, 9, 10, 1, 0, 100, 0, 90000, 90000, 0, 0, 11, 61492, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Overlord Drakuru - OOC - Cast Despawn Blightblood'),
(28998, 0, 10, 11, 61, 0, 100, 0, 0, 0, 0, 0, 45, 3, 3, 0, 0, 0, 0, 9, 29100, 0, 200, 0, 0, 0, 0, 'Overlord Drakuru - OOC - Set Data 3 3 on Totally Generic Bunny (JSB)'),
(28998, 0, 11, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Overlord Drakuru - OOC - Despawn'),
(28998, 0, 12, 0, 6, 0, 100, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Overlord Drakuru - On Death - Despawn after 2 seconds'),
(28931, 0, 0, 0, 38, 0, 100, 0, 1, 1, 0, 0, 19, 256, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Blightblood Troll - On Data Set 1 1 - Set Unit Flags'),
(28931, 0, 1, 0, 7, 0, 100, 0, 0, 0, 0, 0, 19, 256, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Blightblood Troll - On Evade - Set Unit Flags'),
(28931, 0, 2, 0, 8, 0, 100, 0, 61492, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Blightblood Troll - On Spellhit (Despawn Blightblood) - Despawn'),
(28931, 0, 3, 0, 54, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Blightblood Troll - On Spellhit (Despawn Blightblood) - Despawn'),
(28931, 0, 4, 0, 4, 0, 100, 1, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Blightblood Troll - On Agro - Set Phase 2'),
(28931, 0, 5, 0, 8, 0, 100, 1, 53103, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Blightblood Troll - On Spellhit (Charm Blightblood Troll) - Set Phase 2'),
(28931, 0, 6, 0, 0, 2, 100, 1, 0, 0, 0, 0, 45, 3, 3, 0, 0, 0, 0, 19, 29100, 10, 0, 0, 0, 0, 0, 'Blightblood Troll - IC (Phase 2) - Set Data 3 3 on Totally Generic Bunny (JSB)'),
(28931, 0, 7, 0, 1, 2, 100, 1, 0, 0, 0, 0, 45, 3, 3, 0, 0, 0, 0, 19, 29100, 10, 0, 0, 0, 0, 0, 'Blightblood Troll - OOC (Phase 2) - Set Data 3 3 on Totally Generic Bunny (JSB)'),
(28498, 0, 5, 0, 54, 0, 100, 0, 0, 0, 0, 0, 53, 0, 2849800, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'The Lich King - On Just Summoned - Start Waypoint'),
(28498, 0, 6, 0, 40, 0, 100, 0, 4, 2849800, 0, 0, 1, 7, 0, 0, 0, 0, 0, 19, 28998, 0, 0, 0, 0, 0, 0, 'The Lich King - Reached WP4 - Say'),
(28498, 0, 7, 0, 40, 0, 100, 0, 8, 2849800, 0, 0, 80, 2849801, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'The Lich King - Reached WP8 - Run Script'),
(28498, 0, 8, 9, 40, 0, 100, 0, 4, 2849801, 0, 0, 45, 2, 2, 0, 0, 0, 0, 10, 98914, 28960, 0, 0, 0, 0, 0, 'The Lich King - Reached WP4 (Path 2) - Set Data'),
(28498, 0, 9, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'The Lich King - Reached WP4 (Path 2) - Despawn'),
(2899800, 9, 0, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Overlord Drakuru - Script - Say'),
(2899800, 9, 1, 0, 0, 0, 100, 0, 4500, 4500, 0, 0, 45, 1, 1, 0, 0, 0, 0, 9, 29100, 0, 200, 0, 0, 0, 0, 'Overlord Drakuru - Script - Say'),
(2899800, 9, 2, 0, 0, 0, 100, 0, 500, 500, 0, 0, 12, 28931, 1, 600000, 0, 0, 0, 8, 0, 0, 0, 6184.146, -1970.17, 586.8419, 4.590216, 'Overlord Drakuru - Script - Summon Blightblood Troll 1'),
(2899800, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 28931, 1, 600000, 0, 0, 0, 8, 0, 0, 0, 6222.855, -2026.631, 586.8419, 3.001966, 'Overlord Drakuru - Script - Summon Blightblood Troll 2'),
(2899800, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 28931, 1, 600000, 0, 0, 0, 8, 0, 0, 0, 6127.512, -2008.651, 586.8419, 6.161012, 'Overlord Drakuru - Script - Summon Blightblood Troll 3'),
(2899800, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 28931, 1, 600000, 0, 0, 0, 8, 0, 0, 0, 6166.278, -2065.312, 586.8419, 1.448623, 'Overlord Drakuru - Script - Summon Blightblood Troll 4'),
(2899800, 9, 6, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Overlord Drakuru - Script - Say'),
(2899800, 9, 7, 0, 0, 0, 100, 0, 500, 500, 0, 0, 1, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Overlord Drakuru - Script - Say'),
(2899800, 9, 8, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 54089, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Overlord Drakuru - Script - Cast Drop Disguise'),
(2899800, 9, 9, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Overlord Drakuru - Script - Remove Scourge Disguise from Target'),
(2899800, 9, 10, 0, 0, 0, 100, 0, 0, 0, 0, 0, 19, 256, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Overlord Drakuru - Script - Set Unit Flags'),
(2899800, 9, 11, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 9, 28931, 0, 200, 0, 0, 0, 0, 'Overlord Drakuru - Script - Set Data on Blightblood Troll'),
(2899800, 9, 12, 0, 0, 0, 100, 0, 0, 0, 0, 0, 2, 974, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Overlord Drakuru - Script - Set Faction'),
(2899800, 9, 13, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Overlord Drakuru - Script - Say'),
(2849801, 9, 0, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 1, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'The Lich King - Script 2 - Say'),
(2849801, 9, 1, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 1, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'The Lich King - Script 2 - Say'),
(2849801, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 54236, 0, 0, 0, 0, 0, 19, 28998, 0, 0, 0, 0, 0, 0, 'The Lich King - Script 2 - Cast Touch of Death'),
(2849801, 9, 3, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 45, 1, 1, 0, 0, 0, 0, 19, 28998, 0, 0, 0, 0, 0, 0, 'The Lich King - Script 2 - Set Orientation'),
(2849801, 9, 4, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 21, 100, 0, 0, 0, 0, 0, 0, 'The Lich King - Script 2 - Set Orientation'),
(2849801, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 9, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'The Lich King - Script 2 - Say'),
(2849801, 9, 6, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 1, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'The Lich King - Script 2 - Say'),
(2849801, 9, 7, 0, 0, 0, 100, 0, 12000, 12000, 0, 0, 1, 11, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'The Lich King - Script 2 - Say'),
(2849801, 9, 8, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 1, 12, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'The Lich King - Script 2 - Say'),
(2849801, 9, 9, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 53, 0, 2849801, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'The Lich King - Script 2 - Start WP Path 2'),
(2899802, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 54248, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Overlord Drakuru - Script 3 - Cast Drakurus Death'),
(2899802, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 54250, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Overlord Drakuru - Script 3 - Cast Drakurus Skull Missile'),
(2899802, 9, 2, 0, 0, 0, 100, 0, 1500, 1500, 0, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Overlord Drakuru - Script 3 - Die'),
(2899801, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 102, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Overlord Drakuru - Script 2 - Set HP Regen off'),
(2899801, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Overlord Drakuru - Script 2 - Set Phase 0'),
(2899801, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 2, 2082, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Overlord Drakuru - Script 2 - Set Faction'),
(2899801, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Overlord Drakuru - Script 2 - Evade'),
(2899801, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Overlord Drakuru - Script 2 - Say'),
(2899801, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 61492, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Overlord Drakuru - Script 2 - Cast Despawn Blightblood'),
(2899801, 9, 6, 0, 0, 0, 100, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 21, 50, 0, 0, 0, 0, 0, 0, 'Overlord Drakuru - Script 2 - Set Orientation'),
(2899801, 9, 7, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 1, 6, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Overlord Drakuru - Script 2 - Say'),
(2899801, 9, 8, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 45, 1, 1, 0, 0, 0, 0, 10, 98914, 28960, 0, 0, 0, 0, 0, 'Overlord Drakuru - Script 2 - Set Data'),
(2899801, 9, 9, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 12, 28498, 1, 90000, 0, 0, 0, 8, 0, 0, 0, 6141.839, -2011.344, 590.3961,6.040418, 'Overlord Drakuru - Script 2 - Spawn The Lich King'),
(2899801, 9, 10, 0, 0, 0, 100, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 19, 28498, 0, 0, 0, 0, 0, 0, 'Overlord Drakuru - Script 2 - Set Orientation');

DELETE FROM `waypoints` WHERE `entry` IN(2849800,2849801);

INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(2849800, 1,6139.436, -2010.837, 589.1911, 'The Lich King'),
(2849800, 2,6140.423, -2010.994, 589.1911, 'The Lich King'),
(2849800, 3,6142.035, -2011.393, 590.5623, 'The Lich King'),
(2849800, 4,6143.037, -2011.641, 590.8799, 'The Lich King'),
(2849800, 5,6145.518, -2012.255, 590.8799, 'The Lich King'),
(2849800, 6,6152.936, -2014.092, 590.8787, 'The Lich King'),
(2849800, 7,6164.27, -2016.898, 590.8779, 'The Lich King'),
(2849800, 8,6164.27, -2016.898, 590.8779, 'The Lich King'),
(2849801, 1,6153.504, -2014.085, 591.119, 'The Lich King'),
(2849801, 2,6145.754, -2012.335, 591.119, 'The Lich King'),
(2849801, 3,6143.254, -2011.835, 591.119, 'The Lich King'),
(2849801, 4,6142.254, -2011.585, 590.869, 'The Lich King');


DELETE FROM `creature` WHERE `id`=5806;

UPDATE `creature_template` SET `ainame`='SmartAI', `scriptname`='' WHERE `entry` =4057;
DELETE FROM `smart_scripts` WHERE `entryorguid` =4057 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4057, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 11, 7993, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Son of Cenarius - On Spawn - Cast Summon Treant Ally (Self)');


SET @CGUID := 74528;

DELETE FROM `creature` WHERE  `guid` BETWEEN @CGUID AND @CGUID+10;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID+0, 28332, 571, 1, 1, 5711.057, 645.7639, 672.0823, 0, 120, 0, 0),  -- top
(@CGUID+1, 28332, 571, 1, 1, 5713.228, 646.6321, 653.1444, 0, 120, 0, 0), 
(@CGUID+2, 28332, 571, 1, 1, 5713.016, 648.0272, 657.1592, 0, 120, 0, 0), 
(@CGUID+3, 28332, 571, 1, 1, 5710.699, 648.6166, 656.5358, 0, 120, 0, 0), 
(@CGUID+4, 28332, 571, 1, 1, 5711.029, 645.7101, 653.7773, 0, 120, 0, 0), 
(@CGUID+5, 28332, 571, 1, 1, 5712.544, 644.6033, 656.4701, 0, 120, 0, 0), 
(@CGUID+6, 28332, 571, 1, 1, 5709.351, 644.943, 655.8727, 0, 120, 0, 0), 
(@CGUID+7, 28332, 571, 1, 1, 5711.693, 645.9358, 737.1865, 0, 120, 0, 0), 
(@CGUID+8, 28332, 571, 1, 1, 5711.447, 646.1441, 761.046, 0, 120, 0, 0), 
(@CGUID+9, 28332, 571, 1, 1, 5711.718, 645.9705, 796.1944, 0, 120, 0, 0), 
(@CGUID+10, 28332, 571, 1, 1, 5711.647, 645.8472, 856.7622, 0, 120, 0, 0); 

UPDATE `creature_template` SET `ainame`='SmartAI', `scriptname`='' WHERE `entry` IN(34044,16128,28332,30116);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN(34044,16128,28332,30116) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN(-@CGUID-0,-@CGUID-1,-@CGUID-2,-@CGUID-3,-@CGUID-4,-@CGUID-5,-@CGUID-6,-@CGUID-7,-@CGUID-8,-@CGUID-9,-@CGUID-10) AND `source_type`=0;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN(1612800,1612801,1612802,2833200,3011600) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(30116, 0, 0, 0, 38, 0, 100, 0, 1, 1, 0, 0, 80, 3011600, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Archmage Aethas Sunreaver <Kirin Tor> - On Data Set - Run Script'), -- On retail Rhonin teleports back to original position since on tc teleport does not work for npcs this script is to respawn rhonin otherwise takes a long time to respawn.

(16128, 0, 0, 5, 20, 0, 100, 0, 13631, 0, 0, 0, 80, 1612800, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rhonin - On Quest Reward (All Is Well That Ends Well) - Run Script'),
(16128, 0, 1, 5, 20, 0, 100, 0, 13819, 0, 0, 0, 80, 1612800, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rhonin - On Quest Reward (Heroic: All Is Well That Ends Well) - Run Script'),
(16128, 0, 2, 0, 38, 0, 100, 0, 1, 1, 0, 0, 80, 1612801, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rhonin - On Data Set 1 1 - Run Script 2'),
(16128, 0, 3, 0, 40, 0, 100, 0, 11, 16128, 0, 0, 80, 1612802, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rhonin - On Reached WP11 - Run Script 3'),
(16128, 0, 4, 5, 38, 0, 100, 0, 6, 6, 0, 0, 80, 1612800, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rhonin - On Quest Reward (All Is Well That Ends Well) - Run Script'),
(16128, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 19, 30116, 0, 0, 0, 0, 0, 0, 'Rhonin - Link - Set Data to Archmage Aethas Sunreaver <Kirin Tor>'), -- To trigger respawn script
(34044, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 53, 0, 34044, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Brann Bronzebeard - On On Spawn - Start WP'),
(34044, 0, 1, 2, 40, 0, 100, 0, 11, 34044, 0, 0, 54, 4000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Brann Bronzebeard - On Reached WP13 - Pause WP'),
(34044, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Brann Bronzebeard - On Reached WP13 - Say Line 1'),
(34044, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 19, 16128, 0, 0, 0, 0, 0, 0, 'Brann Bronzebeard - On Reached WP13 - Set Data On Rhonin'),
(34044, 0, 4, 0, 38, 0, 100, 0, 1, 1, 0, 0, 41, 5000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Brann Bronzebeard - On Data Set - Despawn'),
(-@CGUID-1, 0, 0, 0, 38, 0, 100, 0, 32, 32, 0, 0, 11, 64367, 0, 0, 0, 0, 0, 9, 28332, 20, 200, 0, 0, 0, 0, 'Generic Trigger LAB (Large AOI) - On Data Set - Cast Algalon Event Beam'),
(-@CGUID-2, 0, 0, 0, 38, 0, 100, 0, 32, 32, 0, 0, 11, 64367, 0, 0, 0, 0, 0, 9, 28332, 20, 200, 0, 0, 0, 0, 'Generic Trigger LAB (Large AOI) - On Data Set - Cast Algalon Event Beam'),
(-@CGUID-3, 0, 0, 0, 38, 0, 100, 0, 32, 32, 0, 0, 11, 64367, 0, 0, 0, 0, 0, 9, 28332, 20, 200, 0, 0, 0, 0, 'Generic Trigger LAB (Large AOI) - On Data Set - Cast Algalon Event Beam'),
(-@CGUID-4, 0, 0, 0, 38, 0, 100, 0, 32, 32, 0, 0, 11, 64367, 0, 0, 0, 0, 0, 9, 28332, 20, 200, 0, 0, 0, 0, 'Generic Trigger LAB (Large AOI) - On Data Set - Cast Algalon Event Beam'),
(-@CGUID-5, 0, 0, 0, 38, 0, 100, 0, 32, 32, 0, 0, 11, 64367, 0, 0, 0, 0, 0, 9, 28332, 20, 200, 0, 0, 0, 0, 'Generic Trigger LAB (Large AOI) - On Data Set - Cast Algalon Event Beam'),
(-@CGUID-6, 0, 0, 0, 38, 0, 100, 0, 32, 32, 0, 0, 11, 64367, 0, 0, 0, 0, 0, 9, 28332, 20, 200, 0, 0, 0, 0, 'Generic Trigger LAB (Large AOI) - On Data Set - Cast Algalon Event Beam'),
(-@CGUID-0, 0, 0, 0, 38, 0, 100, 0, 30, 30, 0, 0, 11, 64580, 2, 0, 0, 0, 0, 10, @CGUID+7, 28332, 0, 0, 0, 0, 0, 'Generic Trigger LAB (Large AOI) - On Data Set - Cast Reply-Code Alpha (Phase 2)'),
(-@CGUID-7, 0, 0, 0, 38, 0, 100, 0, 30, 30, 0, 0, 11, 64580, 2, 0, 0, 0, 0, 10, @CGUID+8, 28332, 0, 0, 0, 0, 0, 'Generic Trigger LAB (Large AOI) - On Data Set - Cast Reply-Code Alpha (Phase 2)'),
(-@CGUID-8, 0, 0, 0, 38, 0, 100, 0, 30, 30, 0, 0, 11, 64580, 2, 0, 0, 0, 0, 10, @CGUID+9, 28332, 0, 0, 0, 0, 0, 'Generic Trigger LAB (Large AOI) - On Data Set - Cast Reply-Code Alpha (Phase 2)'),
(-@CGUID-9, 0, 0, 0, 38, 0, 100, 0, 30, 30, 0, 0, 11, 64580, 2, 0, 0, 0, 0, 10, @CGUID+10, 28332, 0, 0, 0, 0, 0, 'Generic Trigger LAB (Large AOI) - On Data Set - Cast Reply-Code Alpha (Phase 2)'),
(-@CGUID-10, 0, 0, 0, 38, 0, 100, 0, 29, 29, 0, 0, 11, 64581, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Generic Trigger LAB (Large AOI) - On Data Set - Cast Reply-Code Alpha (Phase 2)'),
(-@CGUID-10, 0, 1, 0, 38, 0, 100, 0, 31, 31, 0, 0, 11, 64510, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Generic Trigger LAB (Large AOI) - On Data Set - Cast Reply-Code Alpha (Phase 2)'),
(-@CGUID-0, 0, 1, 0, 38, 0, 100, 0, 28, 28, 0, 0, 80, 2833200, 2, 0, 0, 0, 0, 9, 28332, 20, 200, 0, 0, 0, 0, 'Generic Trigger LAB (Large AOI) - On Data Set - Run Script'),
(-@CGUID-1, 0, 1, 0, 38, 0, 100, 0, 28, 28, 0, 0, 80, 2833200, 2, 0, 0, 0, 0, 9, 28332, 20, 200, 0, 0, 0, 0, 'Generic Trigger LAB (Large AOI) - On Data Set - Run Script'),
(-@CGUID-2, 0, 1, 0, 38, 0, 100, 0, 28, 28, 0, 0, 80, 2833200, 2, 0, 0, 0, 0, 9, 28332, 20, 200, 0, 0, 0, 0, 'Generic Trigger LAB (Large AOI) - On Data Set - Run Script'),
(-@CGUID-3, 0, 1, 0, 38, 0, 100, 0, 28, 28, 0, 0, 80, 2833200, 2, 0, 0, 0, 0, 9, 28332, 20, 200, 0, 0, 0, 0, 'Generic Trigger LAB (Large AOI) - On Data Set - Run Script'),
(-@CGUID-4, 0, 1, 0, 38, 0, 100, 0, 28, 28, 0, 0, 80, 2833200, 2, 0, 0, 0, 0, 9, 28332, 20, 200, 0, 0, 0, 0, 'Generic Trigger LAB (Large AOI) - On Data Set - Run Script'),
(-@CGUID-5, 0, 1, 0, 38, 0, 100, 0, 28, 28, 0, 0, 80, 2833200, 2, 0, 0, 0, 0, 9, 28332, 20, 200, 0, 0, 0, 0, 'Generic Trigger LAB (Large AOI) - On Data Set - Run Script'),
(-@CGUID-6, 0, 1, 0, 38, 0, 100, 0, 28, 28, 0, 0, 80, 2833200, 2, 0, 0, 0, 0, 9, 28332, 20, 200, 0, 0, 0, 0, 'Generic Trigger LAB (Large AOI) - On Data Set - Run Script'),
(-@CGUID-7, 0, 1, 0, 38, 0, 100, 0, 28, 28, 0, 0, 80, 2833200, 2, 0, 0, 0, 0, 9, 28332, 20, 200, 0, 0, 0, 0, 'Generic Trigger LAB (Large AOI) - On Data Set - Run Script'),
(-@CGUID-8, 0, 1, 0, 38, 0, 100, 0, 28, 28, 0, 0, 80, 2833200, 2, 0, 0, 0, 0, 9, 28332, 20, 200, 0, 0, 0, 0, 'Generic Trigger LAB (Large AOI) - On Data Set - Run Script'),
(-@CGUID-9, 0, 1, 0, 38, 0, 100, 0, 28, 28, 0, 0, 80, 2833200, 2, 0, 0, 0, 0, 9, 28332, 20, 200, 0, 0, 0, 0, 'Generic Trigger LAB (Large AOI) - On Data Set - Run Script'),
(-@CGUID-10, 0, 2, 0, 38, 0, 100, 0, 28, 28, 0, 0, 80, 2833200, 2, 0, 0, 0, 0, 9, 28332, 20, 200, 0, 0, 0, 0, 'Generic Trigger LAB (Large AOI) - On Data Set - Run Script'),
(3011600, 9, 0, 0, 0, 0, 100, 0, 205000, 205000, 0, 0, 70, 0, 0, 0, 0, 0, 0, 10, 95366, 16128, 0, 0, 0, 0, 0, 'Archmage Aethas Sunreaver <Kirin Tor> - Script - Respawn Rhonin'),
(2833200, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 28, 64367, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Generic Trigger LAB - Script - Remove aura'),
(2833200, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 28, 64510, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Generic Trigger LAB - Script - Remove aura'),
(2833200, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 28, 64580, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Generic Trigger LAB - Script - Remove aura'),
(1612800, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rhonin - Script - Set NPC Flags'),
(1612800, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 34044, 1, 300000, 0, 0, 0, 8, 0, 0, 0, 5800.296, 822.4527, 668.519, 4.812811, 'Rhonin - Script - Summon Brann Bronzebeard'),
(1612800, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 'Rhonin - Script - Say Line 1'),
(1612801, 9, 0, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 53, 0, 16128, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rhonin - Script 2 - Start WP'),
(1612802, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 32, 32, 0, 0, 0, 0, 10, @CGUID+1, 28332, 0, 0, 0, 0, 0, 'Rhonin - Script 3 - Set Data on Generic Trigger LAB (Large AOI)'),
(1612802, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 32, 32, 0, 0, 0, 0, 10, @CGUID+2, 28332, 0, 0, 0, 0, 0, 'Rhonin - Script 3 - Set Data on Generic Trigger LAB (Large AOI)'),
(1612802, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 32, 32, 0, 0, 0, 0, 10, @CGUID+3, 28332, 0, 0, 0, 0, 0, 'Rhonin - Script 3 - Set Data on Generic Trigger LAB (Large AOI)'),
(1612802, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 32, 32, 0, 0, 0, 0, 10, @CGUID+4, 28332, 0, 0, 0, 0, 0, 'Rhonin - Script 3 - Set Data on Generic Trigger LAB (Large AOI)'),
(1612802, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 32, 32, 0, 0, 0, 0, 10, @CGUID+5, 28332, 0, 0, 0, 0, 0, 'Rhonin - Script 3 - Set Data on Generic Trigger LAB (Large AOI)'),
(1612802, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 32, 32, 0, 0, 0, 0, 10, @CGUID+6, 28332, 0, 0, 0, 0, 0, 'Rhonin - Script 3 - Set Data on Generic Trigger LAB (Large AOI)'),
(1612802, 9, 6, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 30, 30, 0, 0, 0, 0, 10, @CGUID+0, 28332, 0, 0, 0, 0, 0, 'Rhonin - Script 3 - Set Data on Generic Trigger LAB (Large AOI)'),
(1612802, 9, 7, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 30, 30, 0, 0, 0, 0, 10, @CGUID+7, 28332, 0, 0, 0, 0, 0, 'Rhonin - Script 3 - Set Data on Generic Trigger LAB (Large AOI)'),
(1612802, 9, 8, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 30, 30, 0, 0, 0, 0, 10, @CGUID+8, 28332, 0, 0, 0, 0, 0, 'Rhonin - Script 3 - Set Data on Generic Trigger LAB (Large AOI)'),
(1612802, 9, 9, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 30, 30, 0, 0, 0, 0, 10, @CGUID+9, 28332, 0, 0, 0, 0, 0, 'Rhonin - Script 3 - Set Data on Generic Trigger LAB (Large AOI)'),
(1612802, 9, 10, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 31, 31, 0, 0, 0, 0, 10, @CGUID+10, 28332, 0, 0, 0, 0, 0, 'Rhonin - Script 3 - Set Data on Generic Trigger LAB (Large AOI)'),
(1612802, 9, 11, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rhonin - Script 3 - Say Line 2'),
(1612802, 9, 12, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rhonin - Script 3 - Say Line 3'),
(1612802, 9, 13, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rhonin - Script 3 - Say Line 3'),
(1612802, 9, 14, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rhonin - Script 3 - Say Line 3'),
(1612802, 9, 15, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 1, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rhonin - Script 3 - Say Line 3'),
(1612802, 9, 16, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 1, 6, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rhonin - Script 3 - Say Line 3'),
(1612802, 9, 17, 0, 0, 0, 100, 0, 14000, 14000, 0, 0, 1, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rhonin - Script 3 - Say Line 3'),
(1612802, 9, 18, 0, 0, 0, 100, 0, 60000, 60000, 0, 0, 45, 29, 29, 0, 0, 0, 0, 10, @CGUID+10, 28332, 0, 0, 0, 0, 0, 'Rhonin - Script 3 - Set Data on Generic Trigger LAB (Large AOI)'),
(1612802, 9, 19, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 28, 28, 0, 0, 0, 0, 10, @CGUID+0, 28332, 0, 0, 0, 0, 0, 'Rhonin - Script 3 - Set Data on Generic Trigger LAB (Large AOI)'),
(1612802, 9, 20, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 28, 28, 0, 0, 0, 0, 10, @CGUID+1, 28332, 0, 0, 0, 0, 0, 'Rhonin - Script 3 - Set Data on Generic Trigger LAB (Large AOI)'),
(1612802, 9, 21, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 28, 28, 0, 0, 0, 0, 10, @CGUID+2, 28332, 0, 0, 0, 0, 0, 'Rhonin - Script 3 - Set Data on Generic Trigger LAB (Large AOI)'),
(1612802, 9, 22, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 28, 28, 0, 0, 0, 0, 10, @CGUID+3, 28332, 0, 0, 0, 0, 0, 'Rhonin - Script 3 - Set Data on Generic Trigger LAB (Large AOI)'),
(1612802, 9, 23, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 28, 28, 0, 0, 0, 0, 10, @CGUID+4, 28332, 0, 0, 0, 0, 0, 'Rhonin - Script 3 - Set Data on Generic Trigger LAB (Large AOI)'),
(1612802, 9, 24, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 28, 28, 0, 0, 0, 0, 10, @CGUID+5, 28332, 0, 0, 0, 0, 0, 'Rhonin - Script 3 - Set Data on Generic Trigger LAB (Large AOI)'),
(1612802, 9, 25, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 28, 28, 0, 0, 0, 0, 10, @CGUID+6, 28332, 0, 0, 0, 0, 0, 'Rhonin - Script 3 - Set Data on Generic Trigger LAB (Large AOI)'),
(1612802, 9, 26, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 28, 28, 0, 0, 0, 0, 10, @CGUID+7, 28332, 0, 0, 0, 0, 0, 'Rhonin - Script 3 - Set Data on Generic Trigger LAB (Large AOI)'),
(1612802, 9, 27, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 28, 28, 0, 0, 0, 0, 10, @CGUID+8, 28332, 0, 0, 0, 0, 0, 'Rhonin - Script 3 - Set Data on Generic Trigger LAB (Large AOI)'),
(1612802, 9, 28, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 28, 28, 0, 0, 0, 0, 10, @CGUID+9, 28332, 0, 0, 0, 0, 0, 'Rhonin - Script 3 - Set Data on Generic Trigger LAB (Large AOI)'),
(1612802, 9, 29, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 28, 28, 0, 0, 0, 0, 10, @CGUID+10, 28332, 0, 0, 0, 0, 0, 'Rhonin - Script 3 - Set Data on Generic Trigger LAB (Large AOI)'),
(1612802, 9, 30, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 45, 1, 1, 0, 0, 0, 0, 19, 34044, 0, 0, 0, 0, 0, 0, 'Rhonin - Script 3 - Set Data on Brann Bronzebeard'),
(1612802, 9, 31, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 11, 51347, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rhonin - Script 3 - Set Data on Brann Bronzebeard'),
(1612802, 9, 32, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rhonin - Script 3 - Despawn');



DELETE FROM `creature_text` WHERE `entry` IN(34044,16128);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(34044, 0, 0, 'Just in time. Let''s see this thing off, then.', 12, 0, 100, 0, 0, 15826, 'Brann Bronzebeard'),
(16128, 0, 0, 'We received Brann''s message, and we have begun preparations.', 12, 0, 100, 1, 0, 15649, 'Rhonin'),
(16128, 1, 0, 'Citizens of Dalaran! Raise your eyes to the skies and observe!', 14, 0, 100, 0, 0, 15650, 'Rhonin'),
(16128, 2, 0, 'Today our world''s destruction has been averted in defiance of our very makers!', 14, 0, 100, 0, 0, 15651, 'Rhonin'),
(16128, 3, 0, 'Algalon the Observer, herald of the titans, has been defeated by our brave comrades in the depths of the titan city of Ulduar.', 14, 0, 100, 0, 0, 15652, 'Rhonin'),
(16128, 4, 0, 'Algalon was sent here to judge the fate of our world.', 14, 0, 100, 0, 0, 15653, 'Rhonin'),
(16128, 5, 0, 'He found a planet whose races had deviated from the titans'' blueprints. A planet where not everything had gone according to plan.', 14, 0, 100, 0, 0, 15654, 'Rhonin'),
(16128, 6, 0, 'Cold logic deemed our world not worth saving. Cold logic, however, does not account for the power of free will. It''s up to each of us to prove this is a world worth saving.', 14, 0, 100, 0, 0, 15655, 'Rhonin'),
(16128, 7, 0, 'That our lives... our lives are worth living.', 14, 0, 100, 0, 0, 15656, 'Rhonin');

DELETE FROM `waypoints` WHERE `entry` IN(34044,16128);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(34044,1, 5799.257, 822.8445, 668.8303,'Brann Bronzebeard'),
(34044,2, 5800.257, 822.8445, 668.8303,'Brann Bronzebeard'),
(34044,3, 5800.367, 821.7542, 667.9642,'Brann Bronzebeard'),
(34044,4, 5800.662, 818.8298, 666.119,'Brann Bronzebeard'),
(34044,5, 5801.204, 813.4578, 662.2362,'Brann Bronzebeard'),
(34044,6, 5801.204, 813.4578, 662.2362,'Brann Bronzebeard'),
(34044,7, 5801.473, 813.3398, 662.5571,'Brann Bronzebeard'),
(34044,8, 5801.478, 811.0238, 662.2334,'Brann Bronzebeard'),
(34044,9, 5801.978, 807.0238, 662.2334,'Brann Bronzebeard'),
(34044,10, 5801.978, 806.2738, 662.2334,'Brann Bronzebeard'),
(34044,11, 5800.728, 802.5238, 662.2334,'Brann Bronzebeard'), -- Say 1
(34044,12, 5799.999, 799.77, 662.1868,'Brann Bronzebeard'),
(34044,13, 5798.749, 789.02, 662.1868,'Brann Bronzebeard'),
(34044,14, 5798.749, 787.77, 662.1868,'Brann Bronzebeard'),
(34044,15, 5798.499, 786.52, 662.1868,'Brann Bronzebeard'),
(34044,16, 5798.366, 786.4135, 662.1921,'Brann Bronzebeard'),
(34044,17, 5798.116, 784.4135, 662.1921,'Brann Bronzebeard'),
(34044,18, 5797.866, 783.6635, 662.6921,'Brann Bronzebeard'),
(34044,19, 5797.866, 779.4135, 662.6921,'Brann Bronzebeard'),
(34044,20, 5797.866, 775.6635, 661.9421,'Brann Bronzebeard'),
(34044,21, 5797.866, 774.6635, 661.6921,'Brann Bronzebeard'),
(34044,22, 5797.628, 774.3326, 661.3541,'Brann Bronzebeard'),
(34044,23, 5797.378, 772.5826, 661.3541,'Brann Bronzebeard'),
(34044,24, 5797.378, 772.0826, 661.3541,'Brann Bronzebeard'),
(34044,25, 5796.628, 766.8326, 661.6041,'Brann Bronzebeard'),
(34044,26, 5796.378, 761.8326, 658.3541,'Brann Bronzebeard'),
(34044,27, 5795.75, 756.938, 654.6126,'Brann Bronzebeard'),
(34044,28, 5795.75, 754.438, 652.8626,'Brann Bronzebeard'),
(34044,29, 5795.75, 745.438, 646.8626,'Brann Bronzebeard'),
(34044,30, 5795.75, 737.188, 640.8626,'Brann Bronzebeard'),
(34044,31, 5795.75, 736.188, 640.6126,'Brann Bronzebeard'),
(34044,32, 5795.629, 732.4694, 640.3873,'Brann Bronzebeard'),
(34044,33, 5795.379, 731.2194, 640.3873,'Brann Bronzebeard'),
(34044,34, 5794.879, 722.7194, 640.6373,'Brann Bronzebeard'),
(34044,35, 5794.379, 720.2194, 640.6373,'Brann Bronzebeard'),
(34044,36, 5794.141, 719.7362, 641.0156,'Brann Bronzebeard'),
(34044,37, 5794.141, 719.4862, 641.0156,'Brann Bronzebeard'),
(34044,38, 5793.391, 718.2362, 641.0156,'Brann Bronzebeard'),
(34044,39, 5792.141, 716.7362, 641.0156,'Brann Bronzebeard'),
(34044,40, 5788.391, 710.9862, 641.5156,'Brann Bronzebeard'),
(34044,41, 5784.409, 705.4751, 642.0784,'Brann Bronzebeard'),
(34044,42, 5780.409, 699.9751, 642.3284,'Brann Bronzebeard'),
(34044,43, 5778.909, 697.9751, 642.5784,'Brann Bronzebeard'),
(34044,44, 5778.659, 697.4751, 642.5784,'Brann Bronzebeard'),
(34044,45, 5773.409, 690.4751, 642.8284,'Brann Bronzebeard'),
(34044,46, 5772.659, 689.2251, 642.8284,'Brann Bronzebeard'),
(34044,47, 5772.451, 688.9385, 643.1041,'Brann Bronzebeard'),
(34044,48, 5769.951, 685.9385, 643.1041,'Brann Bronzebeard'),
(34044,49, 5767.951, 683.4385, 643.1041,'Brann Bronzebeard'),
(34044,50, 5761.951, 676.6885, 642.8541,'Brann Bronzebeard'),
(34044,51, 5758.701, 672.6885, 643.1041,'Brann Bronzebeard'),
(34044,52, 5757.701, 671.9385, 643.1041,'Brann Bronzebeard'),
(34044,53, 5756.951, 670.9385, 643.1041,'Brann Bronzebeard'),
(34044,54, 5755.701, 669.4385, 643.1041,'Brann Bronzebeard'),
(34044,55, 5754.951, 668.6885, 643.3541,'Brann Bronzebeard'),
(34044,56, 5750.951, 663.9385, 643.6041,'Brann Bronzebeard'),
(34044,57, 5750.721, 663.7521, 643.809,'Brann Bronzebeard'),
(34044,58, 5750.221, 663.2521, 643.809,'Brann Bronzebeard'),
(34044,59, 5745.221, 659.0021, 644.559,'Brann Bronzebeard'),
(34044,60, 5740.221, 654.7521, 645.559,'Brann Bronzebeard'),
(34044,61, 5740.14, 654.6359, 645.801,'Brann Bronzebeard'),
(34044,62, 5736.89, 651.8859, 646.051,'Brann Bronzebeard'),
(34044,63, 5734.89, 651.1359, 646.301,'Brann Bronzebeard'),
(34044,64, 5731.39, 649.8859, 646.801,'Brann Bronzebeard'),
(16128,1,  5797.603, 793.3063, 662.1119,'Rhonin'),
(16128,2,  5796.103, 777.5563, 662.3619,'Rhonin'),
(16128,3,  5794.603, 767.0563, 661.6119,'Rhonin'),
(16128,4,  5793.103, 753.0563, 651.8619,'Rhonin'),
(16128,5,  5790.603, 736.8063, 640.6119,'Rhonin'),
(16128,6,  5786.353, 717.5563, 641.1119,'Rhonin'),
(16128,7,  5773.603, 702.0563, 642.1119,'Rhonin'),
(16128,8,  5759.103, 683.5563, 642.6119,'Rhonin'),
(16128,9,  5746.853, 669.0563, 644.3619,'Rhonin'),
(16128,10,  5736.353, 658.8063, 645.8619,'Rhonin'),
(16128,11,  5727.353, 653.8063, 646.8619,'Rhonin');


DELETE FROM `creature_text` WHERE `entry`=27683;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(27683, 0, 0, 'I''ve lived here and kept this shrine with the blessing of the Alexstrasza for longer than I can remember.  In its darkest hour, I''ve failed... I fell at the feet of that damned death knight...  Bloodbane.', 12, 0, 100, 0, 0, 0, 'Remnant of Dahlia Suntouch'),
(27683, 1, 0, 'Dahlia spits on the ground at the thought of the name.', 16, 0, 100, 0, 0, 0, 'Remnant of Dahlia Suntouch'),
(27683, 2, 0, 'The Lich King is stretching his hand far now... fearlessly treading on the most sacred lands of all of the flights.  He intends to force us to action.', 12, 0, 100, 0, 0, 0, 'Remnant of Dahlia Suntouch'),
(27683, 3, 0, 'My time is done... I offered myself to Alexstrasza in life, but I have nothing left to offer in death.  She will need a new keeper for her shrine.', 12, 0, 100, 0, 0, 0, 'Remnant of Dahlia Suntouch'),
(27683, 4, 0, 'And thank you... thank you for freeing me from the shackles of the damned.  You are a hero... I know you will go on to great deeds.', 12, 0, 100, 0, 0, 0, 'Remnant of Dahlia Suntouch'),
(27683, 5, 0, 'The Remnant of Dahlia Suntouch fades away...', 16, 0, 100, 0, 0, 0, 'Remnant of Dahlia Suntouch');

DELETE FROM `waypoints` WHERE `entry` IN(27683);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(27683,1, 3711.944, 938.4294, 55.09203,'Remnant of Dahlia Suntouch'),
(27683,2, 3711.274, 937.6862, 55.09203,'Remnant of Dahlia Suntouch'),
(27683,3, 3722.171, 943.1833, 54.70838,'Remnant of Dahlia Suntouch'),
(27683,4, 3723.844, 944.0275, 53.94967,'Remnant of Dahlia Suntouch'),
(27683,5, 3725.486, 944.8557, 54.00668,'Remnant of Dahlia Suntouch'),
(27683,6, 3729.952, 947.1088, 53.98567,'Remnant of Dahlia Suntouch'),
(27683,7, 3733.333, 948.8146, 53.49077,'Remnant of Dahlia Suntouch'),
(27683,8, 3737.499, 950.9161, 53.46587,'Remnant of Dahlia Suntouch'),
(27683,9, 3737.499, 950.9161, 53.46587,'Remnant of Dahlia Suntouch'),
(27683,10, 3736.349, 956.1506, 53.60175,'Remnant of Dahlia Suntouch');

UPDATE `creature_template` SET `ainame`='SmartAI', `scriptname`='' WHERE `entry` =27683;
DELETE FROM `smart_scripts` WHERE `entryorguid` =27683 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` =27680 AND `source_type`=0 AND `id`=12;

DELETE FROM `smart_scripts` WHERE `entryorguid` =2768300 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(27683, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 53, 0, 27683, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Remnant of Dahlia Suntouch - On Just Summoned - Start WP'),
(27683, 0, 1, 2, 40, 0, 100, 0, 9, 27683, 0, 0, 54, 25000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Remnant of Dahlia Suntouch - On Reached WP9 - Pause WP'),
(27683, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 80, 2768300, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Remnant of Dahlia Suntouch - On Reached WP9 - Run Script'),
(27680, 0, 12, 0, 6, 0, 100, 0, 0, 0, 0, 0, 12, 27683, 1, 60000, 0, 0, 0, 8, 0, 0, 0, 3712.014, 938.0595, 55.06598, 0.4672305, 'Dahlia Suntouch - On Death - Summon Remnant of Dahlia Suntouch'),
(2768300, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Remnant of Dahlia Suntouch - Script - Say Line 1'),
(2768300, 9, 1, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Remnant of Dahlia Suntouch - Script - Say Line 2'),
(2768300, 9, 2, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Remnant of Dahlia Suntouch - Script - Say Line 3'),
(2768300, 9, 3, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Remnant of Dahlia Suntouch - Script - Say Line 4'),
(2768300, 9, 4, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Remnant of Dahlia Suntouch - Script - Say Line 5'),
(2768300, 9, 5, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 1, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Remnant of Dahlia Suntouch - Script - Say Line 6'),
(2768300, 9, 6, 0, 0, 0, 100, 0, 500, 500, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Remnant of Dahlia Suntouch - Despawn - Say Line 6');


DELETE FROM `creature_text` WHERE `entry` IN(23782,24126,27248,27250,27349);

INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(24126, 0, 0, 'Excellent.  What''s the lowdown?  Do we have a bodycount?', 12, 0, 100, 11, 0, 0, 'Apothecary Lysander'),
(24126, 1, 0, 'Well, spit it out!  What''s the bad news?', 12, 0, 100, 1, 0, 0, 'Apothecary Lysander'),
(24126, 2, 0, 'Severe stomach pain?', 12, 0, 100, 5, 0, 0, 'Apothecary Lysander'),
(24126, 3, 0, 'SEVERE STOMACH PAIN?', 14, 0, 100, 15, 0, 0, 'Apothecary Lysander'),
(24126, 4, 0, 'We are the Royal Apothecary Society!  Inducing belly aches is not part of our job description!', 12, 0, 100, 0, 0, 0, 'Apothecary Lysander'),
(24126, 5, 0, 'Am I surrounded by amateurs?  I want a full analysis of the new strain by tomorrow morning!  Get on it, Ravien!', 12, 0, 100, 25, 0, 0, 'Apothecary Lysander'),
(24126, 6, 0, 'We were making progress with our plague in Undercity.  All of a sudden our strains keep failing!', 12, 0, 100, 5, 0, 0, 'Apothecary Lysander'),
(24126, 6, 1, 'The last ten strains from Undercity... all of them worthless!', 12, 0, 100, 5, 0, 0, 'Apothecary Lysander'),
(24126, 6, 2, 'I cannot work under these conditions!  We need a viable strain!', 12, 0, 100, 5, 0, 0, 'Apothecary Lysander'),
(23782, 0, 0, 'Reports from the test on the enemy fleet have come in, sir!', 12, 0, 100, 1, 0, 0, 'Apothecary Ravien'),
(23782, 1, 0, 'Well... the good news is we forced the reinforcements to turn back.', 12, 0, 100, 6, 0, 0, 'Apothecary Ravien'),
(23782, 2, 0, 'The plague was not quite... fatal.  However, reports of harmful effects include nausea, loss of equilibrium and severe stomach pain.', 12, 0, 100, 274, 0, 0, 'Apothecary Ravien'),
(23782, 3, 0, 'Yes, sir!', 12, 0, 100, 273, 0, 0, 'Apothecary Ravien'),
(27349, 0, 0, 'The %s moans but seems otherwise unaffected by the blight.', 16, 0, 100, 0, 0, 0, 'Scarlet Onslaught Prisoner'),
(27250, 0, 0, 'Huh?', 12, 0, 100, 6, 0, 0, 'Junior Apothecary Schlemiel'),
(27250, 1, 0, 'But... I followed your instructions precisely! Sorry?', 12, 0, 100, 6, 0, 0, 'Junior Apothecary Schlemiel'),
(27250, 2, 0, 'Eep!', 12, 0, 100, 34, 0, 1368, 'Junior Apothecary Schlemiel'),
(27248, 0, 0, 'Schlemiel!', 12, 0, 100, 5, 0, 0, 'Apothecary Vicky Levine'),
(27248, 1, 0, 'Apparently you flubbed this batch of blight. What do you have to say for yourself?', 12, 0, 100, 5, 0, 0, 'Apothecary Vicky Levine'),
(27248, 2, 0, 'Sorry? SORRY?! Here''s sorry for you!', 12, 0, 100, 5, 0, 0, 'Apothecary Vicky Levine'),
(27248, 3, 0, 'Oops. I guess it IS working! That''s odd.', 12, 0, 100, 6, 0, 0, 'Apothecary Vicky Levine'),
(27248, 4, 0, 'I''m gonna need a cleanup and a new assistant over here!', 12, 0, 100, 5, 0, 0, 'Apothecary Vicky Levine');

UPDATE `creature_template` SET `ainame`='SmartAI', `scriptname`='' WHERE `entry` IN(23782,24126,27248,27250);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN(23782,24126,27248,27250) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN(2412600,2412601,2724800) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(24126, 0, 0, 0, 20, 0, 100, 0, 11170, 0, 0, 0, 80, 2412600, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Apothecary Lysander - On Quest Reward - Run Script 1'),
(24126, 0, 1, 0, 38, 0, 100, 0, 1, 1, 0, 0, 80, 2412601, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Apothecary Lysander - On Data Set - Run Script 2'),
(24126, 0, 2, 3, 38, 0, 100, 0, 2, 2, 0, 0, 81, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Apothecary Lysander - On Data Set - Set NPC Flags'),
(24126, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Apothecary Lysander - On Data Set - Set Phase 1'),
(24126, 0, 4, 0, 25, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Apothecary Lysander - On Reset - Set Phase 1'),
(24126, 0, 5, 0, 1, 1, 100, 0, 0, 30000, 30000, 90000, 1, 6, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Apothecary Lysander - OOC (Phase 1) - Say'),
(23782, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 53, 0, 23782, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Apothecary Ravien - On Just Summoned - Start WP'),
(23782, 0, 1, 2, 40, 0, 100, 0, 6, 23782, 0, 0, 54, 60000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Apothecary Ravien - On Reached WP6 - Pause WP'),
(23782, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 19, 24126, 0, 0, 0, 0, 0, 0, 'Apothecary Ravien - On Reached WP6 - Set Orientation'),
(23782, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 19, 24126, 0, 0, 0, 0, 0, 0, 'Apothecary Ravien - On Reached WP6 - Set Data on Apothecary Lysander'),
(23782, 0, 4, 0, 40, 0, 100, 0, 7, 23782, 0, 0, 45, 2, 2, 0, 0, 0, 0, 19,24126, 0, 0, 0, 0, 0, 0, 'Apothecary Ravien - On Reached WP7 - Set Data on Apothecary Lysander'),
(23782, 0, 5, 0, 40, 0, 100, 0,18, 23782, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1,0, 0, 0, 0, 0, 0, 0, 'Apothecary Ravien - On Reached WP18 - Despawn'),
(27250, 0, 0, 1, 8, 0, 100, 0,48201, 0, 0, 0, 11, 48196, 0, 0, 0, 0, 0, 1,0, 0, 0, 0, 0, 0, 0, 'Junior Apothecary Schlemiel - On Spellhit (Throw Blight) - Cast Blighted'),
(27250, 0, 1, 2, 61, 0, 100, 0,0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1,0, 0, 0, 0, 0, 0, 0, 'Junior Apothecary Schlemiel - On Spellhit (Throw Blight) - Set Phase 1'),
(27250, 0, 2, 0, 61, 0, 100, 0,0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1,0, 0, 0, 0, 0, 0, 0, 'Junior Apothecary Schlemiel - On Spellhit (Throw Blight) - Say Line 3'),
(27250, 0, 3, 0, 1, 1, 100, 0,5000, 5000, 0, 0, 37, 0, 0, 0, 0, 0, 0, 1,0, 0, 0, 0, 0, 0, 0, 'Junior Apothecary Schlemiel - OOC (Phase 1) - Die'),
(27248, 0, 0, 0, 20, 0, 100, 0, 12206, 0, 0, 0, 80, 2724800, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Apothecary Vicky Levine - On Quest Reward - Run Script'),
(2724800, 9,0,0,0,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Apothecary Vicky Levine - Script - Set NPC Flags'),
(2724800, 9,1,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,19,27250,0,0,0, 0, 0, 0,'Apothecary Vicky Levine - Script - Set Orientation'),
(2724800, 9,2,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Apothecary Vicky Levine - Script - Say Line 1'),
(2724800, 9,3,0,0,0,100,0,6000,6000,0,0,1,0,0,0,0,0,0,19,27250,0,0,0, 0, 0, 0,'Apothecary Vicky Levine - Script - Say Line 1 (Junior Apothecary Schlemiel)'),
(2724800, 9,4,0,0,0,100,0,6000,6000,0,0,1,1,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Apothecary Vicky Levine - Script - Say Line 2'),
(2724800, 9,5,0,0,0,100,0,6000,6000,0,0,1,1,0,0,0,0,0,19,27250,0,0,0, 0, 0, 0,'Apothecary Vicky Levine - Script - Say Line 2 (Junior Apothecary Schlemiel)'),
(2724800, 9,6,0,0,0,100,0,6000,6000,0,0,1,2,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Apothecary Vicky Levine - Script - Say Line 3'),
(2724800, 9,7,0,0,0,100,0,0,0,0,0,11,48201,0,0,0,0,0,19,27250,0,0,0, 0, 0, 0,'Apothecary Vicky Levine - Script - Cast Throw Blight'),
(2724800, 9,8,0,0,0,100,0,7000,7000,0,0,1,3,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Apothecary Vicky Levine - Script - Say Line 4'),
(2724800, 9,9,0,0,0,100,0,6000,6000,0,0,1,4,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Apothecary Vicky Levine - Script - Say Line 5'),
(2724800, 9,10,0,0,0,100,0,0,0,0,0,81,2,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Apothecary Vicky Levine - Script - Set NPC Flags'),
(2412600, 9,0,0,0,0,100,0,0,0,0,0,12,23782,1,90000,0,0,0,8,0,0,0,1965.131, -6126.74, 25.61264, 3.271674,'Apothecary Lysander - Script 1 - Spawn Apothecary Ravien'),
(2412600, 9,1,0,0,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Apothecary Lysander - Script 1 - Set NPC Flags'),
(2412600, 9,2,0,0,0,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Apothecary Lysander - Script 1 - Set Phase 0'),
(2412601, 9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,19,23782,0,0,0, 0, 0, 0,'Apothecary Lysander - Script 2 - Say Line 1 (Apothecary Ravien)'),
(2412601, 9,1,0,0,0,100,0,6000,6000,0,0,1,0,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Apothecary Lysander - Script 2 - Say Line 1'),
(2412601, 9,2,0,0,0,100,0,6000,6000,0,0,1,1,0,0,0,0,0,19,23782,0,0,0, 0, 0, 0,'Apothecary Lysander - Script 2 - Say Line 2 (Apothecary Ravien)'),
(2412601, 9,3,0,0,0,100,0,6000,6000,0,0,1,1,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Apothecary Lysander - Script 2 - Say Line 2'),
(2412601, 9,4,0,0,0,100,0,6000,6000,0,0,1,2,0,0,0,0,0,19,23782,0,0,0, 0, 0, 0,'Apothecary Lysander - Script 2 - Say Line 3 (Apothecary Ravien)'),
(2412601, 9,5,0,0,0,100,0,6000,6000,0,0,1,2,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Apothecary Lysander - Script 2 - Say Line 3'),
(2412601, 9,6,0,0,0,100,0,6000,6000,0,0,1,3,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Apothecary Lysander - Script 2 - Say Line 4'),
(2412601, 9,7,0,0,0,100,0,6000,6000,0,0,1,4,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Apothecary Lysander - Script 2 - Say Line 5'),
(2412601, 9,8,0,0,0,100,0,6000,6000,0,0,1,5,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Apothecary Lysander - Script 2 - Say Line 6'),
(2412601, 9,9,0,0,0,100,0,6000,6000,0,0,1,3,0,0,0,0,0,19,23782,0,0,0, 0, 0, 0,'Apothecary Lysander - Script 2 - Say Line 4 (Apothecary Ravien)');

UPDATE `smart_scripts` SET `event_flags`=0 WHERE  `entryorguid`=27349 AND `source_type`=0 AND `id`=0 AND `link`=1;
UPDATE `smart_scripts` SET `link`=0, `event_flags`=0, `action_type`=1,`comment`='Scarlet Onslaught Prisoner - On Spellhit \'Flask of Blight\' - Say' WHERE  `entryorguid`=27349 AND `source_type`=0 AND `id`=1 AND `link`=2;

DELETE FROM `waypoints` WHERE `entry` IN(23782);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(23782,1, 1950.98, -6131.159, 24.8696,'Apothecary Ravien'),
(23782,2, 1946.992, -6136.564, 24.37891,'Apothecary Ravien'),
(23782,3, 1946.492, -6139.314, 24.37891,'Apothecary Ravien'),
(23782,4, 1946.492, -6140.314, 24.37891,'Apothecary Ravien'),
(23782,5, 1946.492, -6141.314, 24.37891,'Apothecary Ravien'),
(23782,6, 1946.492, -6142.564, 24.37891,'Apothecary Ravien'), -- Event
(23782,7, 1946.487, -6142.437, 24.39008,'Apothecary Ravien'),
(23782,8, 1946.487, -6141.437, 24.39008,'Apothecary Ravien'),
(23782,9, 1946.487, -6140.437, 24.39008,'Apothecary Ravien'),
(23782,10, 1946.487, -6139.437, 24.39008,'Apothecary Ravien'),
(23782,11, 1947.237, -6137.437, 24.39008,'Apothecary Ravien'),
(23782,12, 1947.051, -6137.372, 24.81357,'Apothecary Ravien'),
(23782,13, 1948.301, -6134.372, 24.81357,'Apothecary Ravien'),
(23782,14, 1950.301, -6133.622, 25.06357,'Apothecary Ravien'),
(23782,15, 1954.051, -6129.622, 25.06357,'Apothecary Ravien'),
(23782,16, 1958.301, -6127.122, 25.56357,'Apothecary Ravien'),
(23782,17, 1958.692, -6127.187, 25.5125,'Apothecary Ravien'),
(23782,18, 1960.692, -6127.187, 26.0125,'Apothecary Ravien'); -- Despawn


-- Remove bad gossip linking (linking to same gossip menu option)
UPDATE `gossip_menu_option` SET `action_menu_id`=0 WHERE  `menu_id`=8036 AND `id`=0;
UPDATE `creature_template` SET `flags_extra`=0 WHERE  `entry`=20218;

DELETE FROM `creature` WHERE  `id`=21267; -- Delete mana beasts as these are duplicated as are summoned by sunfury nethermancer and permament spawn also exists so these are duplicated.

UPDATE `creature_template` SET `gossip_menu_id`=8046 WHERE  `entry`=20397;
UPDATE `creature_template` SET `gossip_menu_id`=8041 WHERE  `entry`=19831;
UPDATE `creature_template` SET `gossip_menu_id`=8040 WHERE  `entry`=19830;


DELETE FROM `gossip_menu` WHERE `entry`IN(8036,8113,8115,8116,8046,8045,8041,8042,8040,8039);
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(8036, 10045), 
(8036, 9922), 
(8113, 10045), 
(8113, 9922), 
(8115, 10045), 
(8115, 9922), 
(8116, 10045),
(8116, 9922),
(8046, 9931), -- 20397
(8045, 9934), -- 20397
(8041, 9929), -- 19831
(8042, 9930), -- 19831
(8040, 9926), -- 19830
(8039, 9927); -- 19830

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN(35016,35176);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(13, 1, 35016, 0, 0, 31, 0, 3, 20226, 0, 0, 0, 0, '', 'Interrupt Shutdown only hits Netherstorm Repair Target'),
(13, 1, 35176, 0, 0, 31, 0, 3, 20226, 0, 0, 0, 0, '', 'Interrupt Shutdown only hits Netherstorm Repair Target');

DELETE FROM `gossip_menu_option` WHERE `menu_id` IN(8036, 8113,8115,8116,8046,8041,8040);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES 

(8036, 0, 0, '<Begin emergency shutdown.>',  1, 1, 0, 0, 0, 0, ''), 
(8113, 0, 0, '<Begin emergency shutdown.>',  1, 1, 0, 0, 0, 0, ''), 
(8115, 0, 0, '<Begin emergency shutdown.>',  1, 1, 0, 0, 0, 0, ''), 
(8116, 0, 0, '<Begin emergency shutdown.>',  1, 1, 0, 0, 0, 0, ''),
(8046, 0, 0, 'Where did this technology come from?',  1, 1, 8045, 0, 0, 0, ''),
(8041, 0, 0, 'Who attacked Manaforge Duro?',  1, 1, 8042, 0, 0, 0, ''),
(8040, 0, 0, 'Ultris?',  1, 1, 8039, 0, 0, 0, '');



DELETE FROM `creature_text` WHERE  `entry`IN(20209,20417,20418,20440) AND `groupid`=5;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES 
(20209, 5, 0, 'Manaforge shutdown aborted.  Resuming manaforge activity.', 16, 0, 100, 0, 0, 0, 'manaforge_control fail'),
(20417, 5, 0, 'Manaforge shutdown aborted.  Resuming manaforge activity.', 16, 0, 100, 0, 0, 0, 'manaforge_control fail'),
(20418, 5, 0, 'Manaforge shutdown aborted.  Resuming manaforge activity.', 16, 0, 100, 0, 0, 0, 'manaforge_control fail'),
(20440, 5, 0, 'Manaforge shutdown aborted.  Resuming manaforge activity.', 16, 0, 100, 0, 0, 0, 'manaforge_control fail');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`IN(14,15) AND `SourceGroup` IN(8036,8113,8115,8116);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 8036, 0, 0, 0, 9, 0, 10299, 0, 0, 0, 0, 0, '', 'Show gossip option if player has quest marked as taken'),
(15, 8036, 0, 0, 0, 2, 0, 29366, 1, 0, 0, 0, 0, '', 'Only show gossip option if Player Has got B''naar Access Crystal'),
(15, 8036, 0, 0, 1, 9, 0, 10329, 0, 0, 0, 0, 0, '', 'Show gossip option if player has quest marked as taken'),
(15, 8036, 0, 0, 1, 2, 0, 29366, 1, 0, 0, 0, 0, '', 'Only show gossip option if Player Has got B''naar Access Crystal'),
(15, 8113, 0, 0, 0, 9, 0, 10330, 0, 0, 0, 0, 0, '', 'Show gossip option if player has quest marked as taken'),
(15, 8113, 0, 0, 0, 2, 0, 29396, 1, 0, 0, 0, 0, '', 'Only show gossip option if Player Has got Coruu Access Crystal'),
(15, 8113, 0, 0, 1, 9, 0, 10321, 0, 0, 0, 0, 0, '', 'Show gossip option if player has quest marked as taken'),
(15, 8113, 0, 0, 1, 2, 0, 29396, 1, 0, 0, 0, 0, '', 'Only show gossip option if Player Has got Coruu Access Crystal'),
(15, 8115, 0, 0, 0, 9, 0, 10338, 0, 0, 0, 0, 0, '', 'Show gossip option if player has quest marked as taken'),
(15, 8115, 0, 0, 0, 2, 0, 29397, 1, 0, 0, 0, 0, '', 'Only show gossip option if Player Has got Duru Access Crystal'),
(15, 8115, 0, 0, 1, 9, 0, 10322, 0, 0, 0, 0, 0, '', 'Show gossip option if player has quest marked as taken'),
(15, 8115, 0, 0, 1, 2, 0, 29397, 1, 0, 0, 0, 0, '', 'Only show gossip option if Player Has got Duru Access Crystal'),
(15, 8116, 0, 0, 0, 9, 0, 10365, 0, 0, 0, 0, 0, '', 'Show gossip option if player has quest marked as taken'),
(15, 8116, 0, 0, 0, 2, 0, 29411, 1, 0, 0, 0, 0, '', 'Only show gossip option if Player Has got Ara Access Crystal'),
(15, 8116, 0, 0, 1, 9, 0, 10323, 0, 0, 0, 0, 0, '', 'Show gossip option if player has quest marked as taken'),
(15, 8116, 0, 0, 1, 2, 0, 29411, 1, 0, 0, 0, 0, '', 'Only show gossip option if Player Has got Ara Access Crystal'),

(14, 8036, 9922, 0, 0, 2, 0, 29366, 1, 0, 1, 0, 0, '', 'Only show npc text if Player does not have B''naar Access Crystal'),
(14, 8113, 9922, 0, 0, 2, 0, 29396, 1, 0, 1, 0, 0, '', 'Only show npc text if Player does not have Coruu Access Crystal'),
(14, 8115, 9922, 0, 0, 2, 0, 29397, 1, 0, 1, 0, 0, '', 'Only show npc text if Player does not have Duru Access Crystal'),
(14, 8116, 9922, 0, 0, 2, 0, 29411, 1, 0, 1, 0, 0, '', 'Onlyshow npc text if Player does not have Ara Access Crystal'),
(14, 8036, 10045, 0, 0, 2, 0, 29366, 1, 0, 0, 0, 0, '', 'Only show npc text if Player has B''naar Access Crystal'),
(14, 8113, 10045, 0, 0, 2, 0, 29396, 1, 0, 0, 0, 0, '', 'Only show npc text if Player has Coruu Access Crystal'),
(14, 8115, 10045, 0, 0, 2, 0, 29397, 1, 0, 0, 0, 0, '', 'Only show npc text if Player has Duru Access Crystal'),
(14, 8116, 10045, 0, 0, 2, 0, 29411, 1, 0, 0, 0, 0, '', 'Onlyshow npc text if Player has Ara Access Crystal');

UPDATE `gameobject_template` SET `AIName`= 'SmartGameObjectAI',`ScriptName`= '' WHERE  `entry`IN(183770,183956,184311,184312);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN(183770,183956,184311,184312) and `source_type`=1;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN(18377000,18395600,18431100,18431200) and `source_type`=9;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(183770,1,0,1,62,0,100,0,8036,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,'B''naar Control Console - On Gossip Option Select - Store Target List'),
(183770,1,1,2,61,0,100,0,0,0,0,0,12,20209,1,120000,0,0,0,8,0,0,0,2918.95, 4189.98, 161.88, 0.34,'B''naar Control Console - Linked with previous event - Summon B''naar Control Console'),
(183770,1,2,3,61,0,100,0,0,0,0,0,100,1,0,0,0,0,0,19,20209,0,0,0,0,0,0,'B''naar Control Console - Linked with previous event - Send Targetlist to B''naar Control Console'),
(183770,1,3,4,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'B''naar Control Console - Linked with previous event - Close Gossip'),
(183770,1,4,0,61,0,100,0,0,0,0,0,80,18377000,2,0,0,0,0,1,0,0,0,0,0,0,0,'B''naar Control Console - Linked with previous event - Run Script'),
(183770,1,5,6,38,0,100,0,1,1,2000,2000,104,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'B''naar Control Console - On Data Set - Fail Quest'),
(183770,1,6,7,61,0,100,0,0,0,0,0,1,5,0,0,0,0,0,19,20209,0,0,0,0,0,0,'B''naar Control Console - On Data Set - Say'),
(183770,1,7,8,61,0,100,0,0,0,0,0,45,7,7,0,0,0,0,19,20209,0,0,0,0,0,0,'Ara Control Console - On Data Set - Set Data'),
(183770,1,8,0,61,0,100,0,0,0,0,0,78,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'B''naar Control Console - On Data Set - Reset Scripts'),
(18377000,9,0,0,0,0,100,0,0,0,0,0,104,16,0,0,0,0,0,1,0,0,0,0,0,0,0,'B''naar Control Console - Linked with previous event - Run Script'),
(18377000,9,1,0,0,0,100,0,1000,1000,0,0,45,1,1,0,0,0,0,19,20209,0,0,0,0,0,0,'B''naar Control Console - Script - Set Data B''naar Control Console'),
(18377000,9,2,0,0,0,100,0,0,0,0,0,45,2,2,0,0,0,0,19,20209,0,0,0,0,0,0,'B''naar Control Console Script - Set Data B''naar Control Console'),
(18377000,9,3,0,0,0,100,0,29000,29000,0,0,45,2,2,0,0,0,0,19,20209,0,0,0,0,0,0,'B''naar Control Console Script - Set Data B''naar Control Console'),
(18377000,9,4,0,0,0,100,0,30000,30000,0,0,45,3,3,0,0,0,0,19,20209,0,0,0,0,0,0,'B''naar Control Console Script - Set Data B''naar Control Console'),
(18377000,9,5,0,0,0,100,0,0,0,0,0,45,2,2,0,0,0,0,19,20209,0,0,0,0,0,0,'B''naar Control Console Script - Set Data B''naar Control Console'),
(18377000,9,6,0,0,0,100,0,30000,30000,0,0,45,4,4,0,0,0,0,19,20209,0,0,0,0,0,0,'B''naar Control Console Script - Set Data B''naar Control Console'),
(18377000,9,7,0,0,0,100,0,20000,20000,0,0,45,5,5,0,0,0,0,19,20209,0,0,0,0,0,0,'B''naar Control Console Script - Set Data B''naar Control Console'),
(18377000,9,8,0,0,0,100,0,10000,10000,0,0,45,6,6,0,0,0,0,19,20209,0,0,0,0,0,0,'B''naar Control Console Script - Set Data B''naar Control Console'),
(18377000,9,9,0,0,0,100,0,0,0,0,0,45,8,8,0,0,0,0,19,20209,0,0,0,0,0,0,'B''naar Control Console Script - Set Data B''naar Control Console'),
(18377000,9,10,0,0,0,100,0,0,0,0,0,104,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'B''naar Control Console Script - Set Flags'),
(183956,1,0,1,62,0,100,0,8113,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,'Coruu Control Console - On Gossip Option Select - Store Target List'),
(183956,1,1,2,61,0,100,0,0,0,0,0,12,20417,1,120000,0,0,0,8,0,0,0,2426.77, 2750.38, 133.24, 2.14,'Coruu Control Console - Linked with previous event - Summon Coruu Control Console'),
(183956,1,2,3,61,0,100,0,0,0,0,0,100,1,0,0,0,0,0,19,20417,0,0,0,0,0,0,'Coruu Control Console - Linked with previous event - Send Targetlist to Coruu Control Console'),
(183956,1,3,4,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Coruu Control Console - Linked with previous event - Close Gossip'),
(183956,1,4,0,61,0,100,0,0,0,0,0,80,18395600,2,0,0,0,0,1,0,0,0,0,0,0,0,'Coruu Control Console - Linked with previous event - Run Script'),
(183956,1,5,6,38,0,100,0,1,1,2000,2000,104,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Coruu Control Console - On Data Set - Fail Quest'),
(183956,1,6,7,61,0,100,0,0,0,0,0,1,5,0,0,0,0,0,19,20417,0,0,0,0,0,0,'Coruu Control Console - On Data Set - Say'),
(183956,1,7,8,61,0,100,0,0,0,0,0,45,7,7,0,0,0,0,19,20417,0,0,0,0,0,0,'Coruu Control Console - On Data Set - Set Data'),
(183956,1,8,0,61,0,100,0,0,0,0,0,78,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Coruu Control Console - On Data Set - Reset Scripts'),
(18395600,9,0,0,0,0,100,0,0,0,0,0,104,16,0,0,0,0,0,1,0,0,0,0,0,0,0,'Coruu Control Console - Linked with previous event - Run Script'),
(18395600,9,1,0,0,0,100,0,1000,1000,0,0,45,1,1,0,0,0,0,19,20417,0,0,0,0,0,0,'Coruu Control Console - Script - Set Data Coruu Control Console'),
(18395600,9,2,0,0,0,100,0,0,0,0,0,45,2,2,0,0,0,0,19,20417,0,0,0,0,0,0,'Coruu Control Console Script - Set Data Coruu Control Console'),
(18395600,9,3,0,0,0,100,0,19000,19000,0,0,45,2,2,0,0,0,0,19,20417,0,0,0,0,0,0,'Coruu Control Console Script - Set Data Coruu Control Console'),
(18395600,9,4,0,0,0,100,0,20000,20000,0,0,45,2,2,0,0,0,0,19,20417,0,0,0,0,0,0,'Coruu Control Console Script - Set Data Coruu Control Console'),
(18395600,9,5,0,0,0,100,0,20000,20000,0,0,45,2,2,0,0,0,0,19,20417,0,0,0,0,0,0,'Coruu Control Console Script - Set Data Coruu Control Console'),
(18395600,9,6,0,0,0,100,0,0,0,0,0,45,3,3,0,0,0,0,19,20417,0,0,0,0,0,0,'Coruu Control Console Script - Set Data Coruu Control Console'),
(18395600,9,8,0,0,0,100,0,20000,20000,0,0,45,2,2,0,0,0,0,19,20417,0,0,0,0,0,0,'Coruu Control Console Script - Set Data Coruu Control Console'),
(18395600,9,9,0,0,0,100,0,10000,10000,0,0,45,4,4,0,0,0,0,19,20417,0,0,0,0,0,0,'Coruu Control Console Script - Set Data Coruu Control Console'),
(18395600,9,10,0,0,0,100,0,10000,10000,0,0,45,8,8,0,0,0,0,19,20417,0,0,0,0,0,0,'Coruu Control Console Script - Set Data Coruu Control Console'),
(18395600,9,11,0,0,0,100,0,10000,10000,0,0,45,5,5,0,0,0,0,19,20417,0,0,0,0,0,0,'Coruu Control Console Script - Set Data Coruu Control Console'),
(18395600,9,12,0,0,0,100,0,10000,10000,0,0,45,6,6,0,0,0,0,19,20417,0,0,0,0,0,0,'Coruu Control Console Script - Set Data Coruu Control Console'),
(18395600,9,13,0,0,0,100,0,0,0,0,0,45,8,8,0,0,0,0,19,20417,0,0,0,0,0,0,'Coruu Control Console Script - Set Data Coruu Control Console'),
(18395600,9,14,0,0,0,100,0,0,0,0,0,104,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Coruu Control Console Script - Set Flags'),
(184311,1,0,1,62,0,100,0,8115,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,'Duru Control Console - On Gossip Option Select - Store Target List'),
(184311,1,1,2,61,0,100,0,0,0,0,0,12,20418,1,120000,0,0,0,8,0,0,0,2976.48, 2183.29, 163.20, 1.85,'Duru Control Console - Linked with previous event - Summon Duru Control Console'),
(184311,1,2,3,61,0,100,0,0,0,0,0,100,1,0,0,0,0,0,19,20418,0,0,0,0,0,0,'Duru Control Console - Linked with previous event - Send Targetlist to Duru Control Console'),
(184311,1,3,4,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Duru Control Console - Linked with previous event - Close Gossip'),
(184311,1,4,0,61,0,100,0,0,0,0,0,80,18431100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Duru Control Console - Linked with previous event - Run Script'),
(184311,1,5,6,38,0,100,0,1,1,2000,2000,104,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Duru Control Console - On Data Set - Fail Quest'),
(184311,1,6,7,61,0,100,0,0,0,0,0,1,5,0,0,0,0,0,19,20418,0,0,0,0,0,0,'Duru Control Console - On Data Set - Say'),
(184311,1,7,8,61,0,100,0,0,0,0,0,45,7,7,0,0,0,0,19,20418,0,0,0,0,0,0,'Duru Control Console - On Data Set - Set Data'),
(184311,1,8,9,61,0,100,0,0,0,0,0,78,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Duru Control Console - On Data Set - Reset Scripts'),
(18431100,9,0,0,0,0,100,0,0,0,0,0,104,16,0,0,0,0,0,1,0,0,0,0,0,0,0,'Duru Control Console - Linked with previous event - Run Script'),
(18431100,9,1,0,0,0,100,0,1000,1000,0,0,45,1,1,0,0,0,0,19,20418,0,0,0,0,0,0,'Duru Control Console - Script - Set Data Duru Control Console'),
(18431100,9,2,0,0,0,100,0,0,0,0,0,45,2,2,0,0,0,0,19,20418,0,0,0,0,0,0,'Duru Control Console Script - Set Data Duru Control Console'),
(18431100,9,3,0,0,0,100,0,14000,14000,0,0,45,2,2,0,0,0,0,19,20418,0,0,0,0,0,0,'Duru Control Console Script - Set Data Duru Control Console'),
(18431100,9,4,0,0,0,100,0,15000,15000,0,0,45,2,2,0,0,0,0,19,20418,0,0,0,0,0,0,'Duru Control Console Script - Set Data Duru Control Console'),
(18431100,9,5,0,0,0,100,0,15000,15000,0,0,45,2,2,0,0,0,0,19,20418,0,0,0,0,0,0,'Duru Control Console Script - Set Data Duru Control Console'),
(18431100,9,6,0,0,0,100,0,15000,15000,0,0,45,3,3,0,0,0,0,19,20418,0,0,0,0,0,0,'Duru Control Console Script - Set Data Duru Control Console'),
(18431100,9,7,0,0,0,100,0,0,0,0,0,45,2,2,0,0,0,0,19,20418,0,0,0,0,0,0,'Duru Control Console Script - Set Data Duru Control Console'),
(18431100,9,8,0,0,0,100,0,15000,15000,0,0,45,2,2,0,0,0,0,19,20418,0,0,0,0,0,0,'Duru Control Console Script - Set Data Duru Control Console'),
(18431100,9,9,0,0,0,100,0,15000,15000,0,0,45,2,2,0,0,0,0,19,20418,0,0,0,0,0,0,'Duru Control Console Script - Set Data Duru Control Console'),
(18431100,9,10,0,0,0,100,0,15000,15000,0,0,45,4,4,0,0,0,0,19,20418,0,0,0,0,0,0,'Duru Control Console Script - Set Data Duru Control Console'),
(18431100,9,11,0,0,0,100,0,5000,5000,0,0,45,5,5,0,0,0,0,19,20418,0,0,0,0,0,0,'Duru Control Console Script - Set Data Duru Control Console'),
(18431100,9,12,0,0,0,100,0,10000,10000,0,0,45,6,6,0,0,0,0,19,20418,0,0,0,0,0,0,'Duru Control Console Script - Set Data Duru Control Console'),
(18431100,9,13,0,0,0,100,0,0,0,0,0,45,8,8,0,0,0,0,19,20418,0,0,0,0,0,0,'Duru Control Console Script - Set Data Duru Control Console'),
(18431100,9,14,0,0,0,100,0,0,0,0,0,104,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Duru Control Console Script - Set Flags'),
(184312,1,0,1,62,0,100,0,8116,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,'Ara Control Console - On Gossip Option Select - Store Target List'),
(184312,1,1,2,61,0,100,0,0,0,0,0,12,20440,1,120000,0,0,0,8,0,0,0,4013.71, 4028.76, 192.10, 1.25,'Ara Control Console - Linked with previous event - Summon Ara Control Console'),
(184312,1,2,3,61,0,100,0,0,0,0,0,100,1,0,0,0,0,0,19,20440,0,0,0,0,0,0,'Ara Control Console - Linked with previous event - Send Targetlist to Ara Control Console'),
(184312,1,3,4,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Ara Control Console - Linked with previous event - Close Gossip'),
(184312,1,4,0,61,0,100,0,0,0,0,0,80,18431200,2,0,0,0,0,1,0,0,0,0,0,0,0,'Ara Control Console - Linked with previous event - Run Script'),
(184312,1,5,6,38,0,100,0,1,1,2000,2000,104,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ara Control Console - On Data Set - Fail Quest'),
(184312,1,6,7,61,0,100,0,0,0,0,0,1,5,0,0,0,0,0,19,20440,0,0,0,0,0,0,'Ara Control Console - On Data Set - Say'),
(184312,1,7,8,61,0,100,0,0,0,0,0,45,7,7,0,0,0,0,19,20440,0,0,0,0,0,0,'Ara Control Console - On Data Set - Set Data'),
(184312,1,0,0,61,0,100,0,0,0,0,0,78,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ara Control Console - On Data Set - Reset Scripts'),
(18431200,9,0,0,0,0,100,0,0,0,0,0,104,16,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ara Control Console - Linked with previous event - Run Script'),
(18431200,9,1,0,0,0,100,0,1000,1000,0,0,45,1,1,0,0,0,0,19,20440,0,0,0,0,0,0,'Ara Control Console - Script - Set Data Ara Control Console'),
(18431200,9,2,0,0,0,100,0,0,0,0,0,45,2,2,0,0,0,0,19,20440,0,0,0,0,0,0,'Ara Control Console Script - Set Data Ara Control Console'),
(18431200,9,3,0,0,0,100,0,14000,14000,0,0,45,2,2,0,0,0,0,19,20440,0,0,0,0,0,0,'Ara Control Console Script - Set Data Ara Control Console'),
(18431200,9,4,0,0,0,100,0,15000,15000,0,0,45,2,2,0,0,0,0,19,20440,0,0,0,0,0,0,'Ara Control Console Script - Set Data Ara Control Console'),
(18431200,9,5,0,0,0,100,0,15000,15000,0,0,45,2,2,0,0,0,0,19,20440,0,0,0,0,0,0,'Ara Control Console Script - Set Data Ara Control Console'),
(18431200,9,6,0,0,0,100,0,15000,15000,0,0,45,3,3,0,0,0,0,19,20440,0,0,0,0,0,0,'Ara Control Console Script - Set Data Ara Control Console'),
(18431200,9,7,0,0,0,100,0,0,0,0,0,45,2,2,0,0,0,0,19,20440,0,0,0,0,0,0,'Ara Control Console Script - Set Data Ara Control Console'),
(18431200,9,8,0,0,0,100,0,15000,15000,0,0,45,2,2,0,0,0,0,19,20440,0,0,0,0,0,0,'Ara Control Console Script - Set Data Ara Control Console'),
(18431200,9,9,0,0,0,100,0,15000,15000,0,0,45,2,2,0,0,0,0,19,20440,0,0,0,0,0,0,'Ara Control Console Script - Set Data Ara Control Console'),
(18431200,9,10,0,0,0,100,0,15000,15000,0,0,45,4,4,0,0,0,0,19,20440,0,0,0,0,0,0,'Ara Control Console Script - Set Data Ara Control Console'),
(18431200,9,11,0,0,0,100,0,5000,5000,0,0,45,5,5,0,0,0,0,19,20440,0,0,0,0,0,0,'Ara Control Console Script - Set Data Ara Control Console'),
(18431200,9,12,0,0,0,100,0,10000,10000,0,0,45,6,6,0,0,0,0,19,20440,0,0,0,0,0,0,'Ara Control Console Script - Set Data Ara Control Console'),
(18431200,9,13,0,0,0,100,0,0,0,0,0,45,8,8,0,0,0,0,19,20440,0,0,0,0,0,0,'Ara Control Console Script - Set Data Ara Control Console'),
(18431200,9,14,0,0,0,100,0,0,0,0,0,104,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ara Control Console Script - Set Flags');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry`IN(183770,183956,184311,184312);

UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`= '' WHERE  `entry` IN(20209,20218, 20226, 20417,20418, 20436, 20440, 20438, 20439, 20460);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN(20209,20218,20226,20417, 20418, 20436, 20440, 20438, 20439, 20460) and `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN(2020900, 2020901,2041700,2041800,2044000,2044001,2022600,2022601,2022602,2022603,2021800,2021801,2021802,2021803,2021804,2021804,2021805,2043900,2043901,2021806) and `source_type`=9;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(20209, 0,0,0,38,0,100,0,1,1,0,0,1,0,0,0,0,0,0,12,1,0,0,0,0,0,0,'B''naar Control Console - On Data Set 1 1 - Say'),
(20209, 0,1,0,38,0,100,0,2,2,0,0,87,2020900,2020901,0,0,0,0,1,0,0,0,0, 0, 0, 0,'B''naar Control Console - On Data Set 2 2 - Run Randomscript'),
(20209, 0,2,0,38,0,100,0,3,3,0,0,1,1,0,0,0,0,0,12,1,0,0,0,0,0,0,'B''naar Control Console - On Data Set 3 3 - Say'),
(20209, 0,3,4,38,0,100,0,4,4,0,0,1,2,0,0,0,0,0,12,1,0,0,0,0,0,0,'B''naar Control Console - On Data Set 4 4 - Say'),
(20209, 0,4,5,61,0,100,0,0,0,0,0,12,20218,1,120000,1,0,0,8,0,0,0,2946.52, 4201.42, 163.47, 3.54,'B''naar Control Console - Linked with Previous Event - Summon Sunfury Technician'),
(20209, 0,5,6,61,0,100,0,0,0,0,0,100,1,0,0,0,0,0,9,20218,0,200,0, 0, 0, 0,'B''naar Control Console - Linked with Previous Event - Send Target list to Sunfury Technician'),
(20209, 0,6,0,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,9,20218,0,200,0, 0, 0, 0,'B''naar Control Console - Linked with Previous Event - Set Data to to Sunfury Technician'),
(20209, 0,7,0,38,0,100,0,5,5,0,0,1,3,0,0,0,0,0,12,1,0,0,0,0,0,0,'B''naar Control Console - On Data Set 5 5 - Say'),
(20209, 0,8,10,38,0,100,0,6,6,0,0,1,4,0,0,0,0,0,12,1,0,0,0,0,0,0,'B''naar Control Console - On Data Set 6 6 - Say'),
(20209, 0,9,0,38,0,100,0,7,7,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'B''naar Control Console - On Data Set 7 7 - Despawn'),
(20209, 0,10,0,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,20226,0,0,0,0,0,0,'B''naar Control Console - On Data Set 6 6 - Set Data Manaforge Visual Trigger'),
(20209 ,0,11,12,38,0,100,0,8,8,0,0,33,20209,0,0,0,0,0,12,1,0,0,0,0,0,0,'B''naar Control Console Script - Give Kill Credit'),
(20209 ,0,12,13,61,0,100,0,0,0,0,0,15,10299,0,0,0,0,0,12,1,0,0,0,0,0,0,'B''naar Control Console Script - Give Kill Credit'),
(20209 ,0,13,0,61,0,100,0,0,0,0,0,15,10329,0,0,0,0,0,12,1,0,0,0,0,0,0,'B''naar Control Console Script - Give Kill Credit'),
(2020900, 9,0,0,0,0,100,0,0,0,0,0,12,20218,1,120000,1,0,0,8,0,0,0,2927.36, 4212.97, 164.00, 4.94,'B''naar Control Console - Script 1 - Summon Sunfury Technician'),
(2020900, 9,1,0,0,0,100,0,0,0,0,0,100,1,0,0,0,0,0,9,20218,0,200,0, 0, 0, 0,'B''naar Control Console - Script 1 - Send Target list to Sunfury Technician'),
(2020900, 9,2,0,0,0,100,0,0,0,0,0,45,1,1,0,0,0,0,9,20218,0,200,0, 0, 0, 0,'B''naar Control Console - Script 1 - Set Data to to Sunfury Technician'),
(2020901, 9,0,0,0,0,100,0,0,0,0,0,12,20218,1,120000,1,0,0,8,0,0,0,2933.68, 4162.55, 164.00, 1.60,'B''naar Control Console - Script 2 - Summon Sunfury Technician'),
(2020901, 9,1,0,0,0,100,0,0,0,0,0,100,1,0,0,0,0,0,9,20218,0,200,0, 0, 0, 0,'B''naar Control Console - Script 2 - Send Target list to Sunfury Technician'),
(2020901, 9,2,0,0,0,100,0,0,0,0,0,45,1,1,0,0,0,0,9,20218,0,200,0, 0, 0, 0,'B''naar Control Console - Script 2 - Set Data to to Sunfury Technician'),
(20417, 0,0,0,38,0,100,0,1,1,0,0,1,0,0,0,0,0,0,12,1,0,0,0,0,0,0,'Coruu Control Console - On Data Set 1 1 - Say'),
(20417, 0,1,0,38,0,100,0,2,2,0,0,80,2041700,2,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Coruu Control Console - On Data Set 2 2 - Run Script'),
(20417, 0,2,0,38,0,100,0,3,3,0,0,1,1,0,0,0,0,0,12,1,0,0,0,0,0,0,'Coruu Control Console - On Data Set 3 3 - Say'),
(20417, 0,3,0,38,0,100,0,4,4,0,0,1,2,0,0,0,0,0,12,1,0,0,0,0,0,0,'Coruu Control Console - On Data Set 4 4 - Say'),
(20417, 0,4,5,38,0,100,0,8,8,0,0,12,20218,1,120000,1,0,0,8,0,0,0,2453.88, 2737.85, 133.27, 2.59,'Coruu Control Console - Linked with Previous Event - Summon Sunfury Technician'),
(20417, 0,5,6,61,0,100,0,0,0,0,0,12,20218,1,120000,1,0,0,8,0,0,0,2441.62, 2735.32, 134.49, 1.97,'Coruu Control Console - Linked with Previous Event - Summon Sunfury Technician'),
(20417, 0,6,7,61,0,100,0,0,0,0,0,12,20218,1,120000,1,0,0,8,0,0,0,2450.73, 2754.50, 134.49, 3.29,'Coruu Control Console - Linked with Previous Event - Summon Sunfury Technician'),
(20417, 0,7,8,61,0,100,0,0,0,0,0,100,1,0,0,0,0,0,9,20218,0,200,0, 0, 0, 0,'Coruu Control Console - Linked with Previous Event - Send Target list to Sunfury Technician'),
(20417, 0,8,0,61,0,100,0,0,0,0,0,45,2,2,0,0,0,0,9,20218,0,200,0, 0, 0, 0,'Coruu Control Console - Linked with Previous Event - Set Data to to Sunfury Technician'),
(20417, 0,9,0,38,0,100,0,5,5,0,0,1,3,0,0,0,0,0,12,1,0,0,0,0,0,0,'Coruu Control Console - On Data Set 5 5 - Say'),
(20417, 0,10,12,38,0,100,0,6,6,0,0,1,4,0,0,0,0,0,12,1,0,0,0,0,0,0,'Coruu Control Console - On Data Set 6 6 - Say'),
(20417, 0,11,0,38,0,100,0,7,7,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Coruu Control Console - On Data Set 7 7 - Despawn'),
(20417, 0,12,0,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,20226,0,0,0,0,0,0,'Coruu Control Console - On Data Set 6 6 - Set Data Manaforge Visual Trigger'),
(20417 ,0,13,14,38,0,100,0,8,8,0,0,33,20417,0,0,0,0,0,12,1,0,0,0,0,0,0,'Coruu Control Console Script - Give Kill Credit'),
(20417 ,0,14,15,61,0,100,0,0,0,0,0,15,10330,0,0,0,0,0,12,1,0,0,0,0,0,0,'Coru Control Console Script - Give Kill Credit'),
(20417 ,0,13,0,61,0,100,0,0,0,0,0,15,10321,0,0,0,0,0,12,1,0,0,0,0,0,0,'Coru Control Console Script - Give Kill Credit'),
(2041700, 9,0,0,0,0,100,0,0,0,0,0,12,20218,1,120000,1,0,0,8,0,0,0,2445.21, 2765.26, 134.49, 3.93,'Coruu Control Console - Script - Summon Sunfury Technician'),
(2041700, 9,1,0,0,0,100,0,0,0,0,0,12,20218,1,120000,1,0,0,8,0,0,0,2429.86, 2731.85, 134.53, 1.31,'Coruu Control Console - Script - Summon Sunfury Technician'),
(2041700, 9,2,0,0,0,100,0,0,0,0,0,100,1,0,0,0,0,0,9,20218,0,200,0, 0, 0, 0,'Coruu Control Console - Script - Send Target list to Sunfury Technician'),
(2041700, 9,3,0,0,0,100,0,0,0,0,0,45,2,2,0,0,0,0,9,20218,0,200,0, 0, 0, 0,'Coruu Control Console - Script - Set Data to to Sunfury Technician'),
(20418, 0,0,0,38,0,100,0,1,1,0,0,1,0,0,0,0,0,0,12,1,0,0,0,0,0,0,'Duru Control Console - On Data Set 1 1 - Say'),
(20418, 0,1,0,38,0,100,0,2,2,0,0,80,2041800,2,0,0,0,0,1,0,0,0,0,0,0,0,'Duru Control Console - On Data Set 2 2 - Run Script'),
(20418, 0,2,0,38,0,100,0,3,3,0,0,1,1,0,0,0,0,0,12,1,0,0,0,0,0,0,'Duru Control Console - On Data Set 3 3 - Say'),
(20418, 0,3,4,38,0,100,0,4,4,0,0,1,2,0,0,0,0,0,12,1,0,0,0,0,0,0,'Duru Control Console - On Data Set 4 4 - Say'),
(20418, 0,4,5,61,0,100,0,0,0,0,0,12,20218,1,120000,1,0,0,8,0,0,0,2956.18, 2202.85, 165.32, 5.45,'Duru Control Console - Linked with Previous Event - Summon Sunfury Technician'),
(20418, 0,5,6,61,0,100,0,0,0,0,0,12,20218,1,120000,1,0,0,8,0,0,0,2975.30, 2211.50, 165.32, 4.55,'Duru Control Console - Linked with Previous Event - Summon Sunfury Technician'),
(20418, 0,6,7,61,0,100,0,0,0,0,0,12,20436,1,120000,1,0,0,8,0,0,0,2965.02, 2217.45, 164.16, 4.96,'Duru Control Console - Linked with Previous Event - Summon Sunfury Protector'),
(20418, 0,7,8,61,0,100,0,0,0,0,0,100,1,0,0,0,0,0,9,20218,0,200,0, 0, 0, 0,'Duru Control Console - Linked with Previous Event - Send Target list to Sunfury Technician'),
(20418, 0,8,9,61,0,100,0,0,0,0,0,100,1,0,0,0,0,0,9,20436,0,200,0, 0, 0, 0,'Duru Control Console - Linked with Previous Event - Send Target list to Sunfury Protector'),
(20418, 0,9,10,61,0,100,0,0,0,0,0,45,3,3,0,0,0,0,9,20218,0,200,0, 0, 0, 0,'Duru Control Console - Linked with Previous Event - Set Data to to Sunfury Technician'),
(20418, 0,10,0,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,9,20436,0,200,0, 0, 0, 0,'Duru Control Console - Linked with Previous Event - Set Data to to Sunfury Protector'),
(20418, 0,11,0,38,0,100,0,5,5,0,0,1,3,0,0,0,0,0,12,1,0,0,0,0,0,0,'Duru Control Console - On Data Set 5 5 - Say'),
(20418, 0,12,14,38,0,100,0,6,6,0,0,1,4,0,0,0,0,0,12,1,0,0,0,0,0,0,'Duru Control Console - On Data Set 6 6 - Say'),
(20418, 0,13,0,38,0,100,0,7,7,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Duru Control Console - On Data Set 7 7 - Despawn'),
(20418, 0,14,0,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,20226,0,0,0,0,0,0,'Duru Control Console - On Data Set 6 6 - Set Data Manaforge Visual Trigger'),
(20418 ,0,15,16,38,0,100,0,8,8,0,0,33,20418,0,0,0,0,0,12,1,0,0,0,0,0,0,'Duru Control Console Script - Give Kill Credit'),
(20418 ,0,16,17,61,0,100,0,0,0,0,0,15,10338,0,0,0,0,0,12,1,0,0,0,0,0,0,'Duru Control Console Script - Give Kill Credit'),
(20418 ,0,17,0,61,0,100,0,0,0,0,0,15,10322,0,0,0,0,0,12,1,0,0,0,0,0,0,'Duru Control Console Script - Give Kill Credit'),
(2041800, 9,0,0,0,0,100,0,2,2,0,0,12,20218,1,120000,1,0,0,8,0,0,0,2986.80, 2205.36, 165.37, 3.74,'Duru Control Console - Script - Summon Sunfury Technician'),
(2041800, 9,1,0,0,0,100,0,0,0,0,0,12,20218,1,120000,1,0,0,8,0,0,0,2952.91, 2191.20, 165.32, 0.22,'Duru Control Console - Script - Summon Sunfury Technician'),
(2041800, 9,2,0,0,0,100,0,0,0,0,0,100,1,0,0,0,0,0,9,20218,0,200,0, 0, 0, 0,'Duru Control Console - Script - Send Target list to Sunfury Technician'),
(2041800, 9,3,0,0,0,100,0,0,0,0,0,45,3,3,0,0,0,0,9,20218,0,200,0, 0, 0, 0,'Duru Control Console - Script - Set Data to to Sunfury Technician'),
(20440, 0,0,0,38,0,100,0,1,1,0,0,1,0,0,0,0,0,0,12,1,0,0,0,0,0,0,'Ara Control Console - On Data Set 1 1 - Say'),
(20440, 0,1,0,38,0,100,0,2,2,0,0,87,2044000,2044001,0,0,0,0,1,0,0,0,0,0,0,0,'Ara Control Console - On Data Set 2 2 - Run Random Script'),
(20440, 0,2,0,38,0,100,0,3,3,0,0,1,1,0,0,0,0,0,12,1,0,0,0,0,0,0,'Ara Control Console - On Data Set 3 3 - Say'),
(20440, 0,3,4,38,0,100,0,4,4,0,0,1,2,0,0,0,0,0,12,1,0,0,0,0,0,0,'Ara Control Console - On Data Set 4 4 - Say'),
(20440, 0,4,5,61,0,100,0,0,0,0,0,12,20439,1,120000,1,0,0,8,0,0,0,3994.51, 4020.46, 192.18, 0.91,'Ara Control Console - Linked with Previous Event - Summon Ara Engineer'),
(20440, 0,5,6,61,0,100,0,0,0,0,0,12,20460,1,120000,1,0,0,8,0,0,0,4021.56, 4059.35, 193.59, 4.44,'Ara Control Console - Linked with Previous Event - Summon Chief Engineer Gork lonn'),
(20440, 0,6,7,61,0,100,0,0,0,0,0,100,1,0,0,0,0,0,9,20239,0,200,0, 0, 0, 0,'Ara Control Console - Linked with Previous Event - Send Target list to Ara Engineer'),
(20440, 0,7,8,61,0,100,0,0,0,0,0,100,1,0,0,0,0,0,9,20460,0,200,0, 0, 0, 0,'Ara Control Console - Linked with Previous Event - Send Target list to Chief Engineer Gork lonn'),
(20440, 0,8,9,61,0,100,0,0,0,0,0,45,4,4,0,0,0,0,9,20239,0,200,0, 0, 0, 0,'Ara Control Console - Linked with Previous Event - Set Data to to Ara Engineer'),
(20440, 0,9,0,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,9,20460,0,200,0, 0, 0, 0,'Ara Control Console - Linked with Previous Event - Set Data to to Chief Engineer Gork lonn'),
(20440, 0,10,0,38,0,100,0,5,5,0,0,1,3,0,0,0,0,0,12,1,0,0,0,0,0,0,'Ara Control Console - On Data Set 5 5 - Say'),
(20440, 0,11,13,38,0,100,0,6,6,0,0,1,4,0,0,0,0,0,12,1,0,0,0,0,0,0,'Ara Control Console - On Data Set 6 6 - Say'),
(20440, 0,12,0,38,0,100,0,7,7,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ara Control Console - On Data Set 7 7 - Despawn'),
(20440, 0,13,0,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,20226,0,0,0,0,0,0,'Ara Control Console - On Data Set 6 6 - Set Data Manaforge Visual Trigger'),
(20440 ,0,14,15,38,0,100,0,8,8,0,0,33,20440,0,0,0,0,0,12,1,0,0,0,0,0,0,'Ara Control Console Script - Give Kill Credit'),
(20440 ,0,15,16,61,0,100,0,0,0,0,0,15,10365,0,0,0,0,0,12,1,0,0,0,0,0,0,'Ara Control Console Script - Give Kill Credit'),
(20440 ,0,16,0,61,0,100,0,0,0,0,0,15,10323,0,0,0,0,0,12,1,0,0,0,0,0,0,'Ara Control Console Script - Give Kill Credit'),
(2044000, 9,0,0,0,0,100,0,2,2,0,0,12,20438,1,120000,1,0,0,8,0,0,0,4035.11, 4038.97, 194.27, 2.57,'Ara Control Console - Script 1 - Summon Ara Technician'),
(2044000, 9,1,0,0,0,100,0,0,0,0,0,12,20438,1,120000,1,0,0,8,0,0,0,4033.66, 4036.79, 194.28, 2.57,'Ara Control Console - Script 1 - Summon Ara Technician'),
(2044000, 9,2,0,0,0,100,0,0,0,0,0,12,20438,1,120000,1,0,0,8,0,0,0,4037.13, 4037.30, 194.23, 2.57,'Ara Control Console - Script 1 - Summon Ara Technician'),
(2044000, 9,3,0,0,0,100,0,0,0,0,0,100,1,0,0,0,0,0,9,20438,0,200,0, 0, 0, 0,'Ara Control Console - Script 1 - Send Target list to Ara Technician'),
(2044000, 9,4,0,0,0,100,0,0,0,0,0,45,4,4,0,0,0,0,9,20438,0,200,0, 0, 0, 0,'Ara Control Console - Script 1 - Set Data to to Ara Technician'),
(2044001, 9,0,0,0,0,100,0,2,2,0,0,12,20438,1,120000,1,0,0,8,0,0,0,3099.59, 4049.30, 194.22, 0.05,'Ara Control Console - Script 2 - Summon Ara Technician'),
(2044001, 9,1,0,0,0,100,0,0,0,0,0,12,20438,1,120000,1,0,0,8,0,0,0,3999.72, 4046.75, 194.22, 0.05,'Ara Control Console - Script 2 - Summon Ara Technician'),
(2044001, 9,2,0,0,0,100,0,0,0,0,0,12,20438,1,120000,1,0,0,8,0,0,0,3996.81, 4048.26, 194.22, 0.05,'Ara Control Console - Script 2 - Summon Ara Technician'),
(2044001, 9,3,0,0,0,100,0,0,0,0,0,100,1,0,0,0,0,0,9,20438,0,200,0, 0, 0, 0,'Ara Control Console - Script 1 - Send Target list to Ara Technician'),
(2044001, 9,4,0,0,0,100,0,0,0,0,0,45,4,4,0,0,0,0,9,20438,0,200,0, 0, 0, 0,'Ara Control Console - Script 1 - Set Data to to Ara Technician'),
(20218, 0,0,0,54,0,40,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Sunfury Technician - On Just Summoned - Say'),
(20218, 0,1,2,38,0,100,1,1,1,0,0,8,1,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Sunfury Technician - On Data Set - Set Defensive'),
(20218, 0,2,0,61,0,100,0,0,0,0,0,87,2021800,2021801,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Sunfury Technician - On Data Set - Set Defensive'),
(20218, 0,3,0,1,1,100,1,12000,12000,0,0,45,1,1,0,0,0,0,20,183770,0,0,0, 0, 0, 0,'Sunfury Technician - OOC (Phase 1) - Set Data'),
(20218, 0,4,0,1,1,100,1,12000,12000,0,0,45,1,1,0,0,0,0,20,183956,0,0,0, 0, 0, 0,'Sunfury Technician - On Evade - Set Data'),
(20218, 0,5,0,1,1,100,1,12000,12000,0,0,45,1,1,0,0,0,0,20,184311,0,0,0, 0, 0, 0,'Sunfury Technician - On Evade - Set Data'),
(20218, 0,6,0,40,0,100,0,1,0,0,0,80,2021806,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Sunfury Technician - On Reached WP1 - Cast Interrupt Shutdown'),
(20218, 0,7,8,4,0,100,0,1,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Sunfury Technician - On Agro - Set Phase 0'),
(20218, 0,8,9,61,0,100,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Sunfury Technician - On agro - Set agressive'),
(20218, 0,9,10,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Sunfury Technician - On agro - Set agressive'),
(20218, 0,10,0,61,0,100,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Sunfury Technician - On agro - Set agressive'),
(20218, 0,11,12,38,0,100,1,2,2,0,0,8,1,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Sunfury Technician - On Data Set - Set Defensive'),
(20218, 0,12,0,61,0,100,0,0,0,0,0,87,2021801,2021802,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Sunfury Technician - On Data Set - Set Defensive'),
(20218, 0,13,14,38,0,100,1,3,3,0,0,8,1,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Sunfury Technician - On Data Set - Set Defensive'),
(20218, 0,14,0,61,0,100,0,0,0,0,0,87,2021803,2021804,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Sunfury Technician - On Data Set - Set Defensive'),
(20218, 0,15,0,7,0,100,0,0,0,0,0,45,1,1,0,0,0,0,20,183770,0,0,0, 0, 0, 0,'Sunfury Technician - On Evade - Set Data'),
(20218, 0,16,0,7,0,100,0,0,0,0,0,45,1,1,0,0,0,0,20,183956,0,0,0, 0, 0, 0,'Sunfury Technician - On Evade - Set Data'),
(20218, 0,17,0,7,0,100,0,0,0,0,0,45,1,1,0,0,0,0,20,184311,0,0,0, 0, 0, 0,'Sunfury Technician - On Evade - Set Data'),
(2021806, 9,0,0,0,0,100,0,1,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0, 0, 0, 3.6,'Sunfury Technician - On Reached WP1 - Cast Interrupt Shutdown'),
(2021806, 9,1,0,0,0,100,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Sunfury Technician - On Evade - Set Data'),
(2021806, 9,2,0,0,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Sunfury Technician - On Agro - Set Phase 0'),
(2021806, 9,3,0,0,0,100,0,1000,1000,0,0,11,35016,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Sunfury Technician - On Reached WP1 Set Phase 1'),



(2021800, 9,0,0,0,0,100,0,0,0,0,0,53,1,2021800,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Sunfury Technician - Script - Start wp'),
(2021801, 9,0,0,0,0,100,0,0,0,0,0,53,1,2021801,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Sunfury Technician - Script - Start wp'),
(2021802, 9,0,0,0,0,100,0,0,0,0,0,53,1,2021802,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Sunfury Technician - Script - Start wp'),
(2021803, 9,0,0,0,0,100,0,0,0,0,0,53,1,2021803,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Sunfury Technician - Script - Start wp'),
(2021804, 9,0,0,0,0,100,0,0,0,0,0,53,1,2021804,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Sunfury Technician - Script - Start wp'),
(2021805, 9,0,0,0,0,100,0,0,0,0,0,53,1,2021805,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Sunfury Technician - Script - Start wp'),
(20436, 0,0,0,38,2,100,0,1,1,0,0,49,0,0,0,0,0,0,12,1,0,0,0, 0, 0, 0,'Sunfury Protector - On Data Set - Attack Stored Target'),
(20436, 0,1,0,54,0,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Sunfury Protector - On Just Summoned - Set Phase 2'),
(20436, 0,2,0,1,2,100,0,1000,1000,1000,1000,49,0,0,0,0,0,0,12,1,0,0,0, 0, 0, 0,'Sunfury Protector - OOC - Attack'),
(20438, 0,0,1,38,0,100,0,4,4,0,0,8,1,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Ara Engineer - On Data Set - Set Defensive'),
(20438, 0,1,0,61,0,100,0,0,0,0,0,87,2043900,2043901,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Ara Engineer - On Data Set - Set Defensive'),
(20438, 0,2,0,1,1,100,1,12000,12000,0,0,45,1,1,0,0,0,0,20,184312,0,0,0, 0, 0, 0,'Ara Engineer - OOC (Phase 1) - Set Data'),
(20438, 0,3,4,40,0,100,0,1,0,0,0,11,35176,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Ara Engineer - On Reached WP1 - Cast Interrupt Shutdown'),
(20438, 0,4,0,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Ara Engineer - On Reached WP1 Set Phase 1'),
(20438, 0,5,6,4,0,100,0,1,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Ara Engineer - On Agro - Set Phase 0'),
(20438, 0,6,7,61,0,100,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Sunfury Technician - On agro - Set agressive'),
(20438, 0,7,8,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Sunfury Technician - On agro - Set agressive'),
(20438, 0,8,0,61,0,100,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Sunfury Technician - On agro - Set agressive'),
(20438, 0,9,0,7,0,100,0,0,0,0,0,45,1,1,0,0,0,0,20,184312,0,0,0, 0, 0, 0,'Ara Techician - On Evade - Set Data'),
(20439, 0,3,0,38,0,100,0,1,1,0,0,49,0,0,0,0,0,0,12,1,0,0,0, 0, 0, 0,'Ara Technician - On Data Set - Attack Stored Target'),
(20439, 0,6,0,7,0,100,0,0,0,0,0,45,1,1,0,0,0,0,20,184312,0,0,0, 0, 0, 0,'Ara Techician - On Evade - Set Data'),
(20438, 0,13,0,61,0,100,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Sunfury Technician - On Evade - Set Data'),

(2043900, 9,0,0,0,0,100,0,0,0,0,0,53,1,2043900,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Ara Engineer - Script - Start wp'),
(2043901, 9,0,0,0,0,100,0,0,0,0,0,53,1,2043901,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Ara Engineer - Script - Start wp'),
(20460, 0,0,0,38,2,100,0,1,1,0,0,49,0,0,0,0,0,0,12,1,0,0,0, 0, 0, 0,'Chief Engineer Gork lonn - On Data Set - Attack Stored Target'),
(20460, 0,1,2,7,2,100,0,0,0,0,0,45,1,1,0,0,0,0,20,184312,0,0,0, 0, 0, 0,'Chief Engineer Gork lonn - On Evade - Set Data'),
(20460, 0,2,0,61,2,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Chief Engineer Gork lonn - On Evade - Despawn'),
(20460, 0,3,0,54,0,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Chief Engineer Gork lonn - On Just Summoned - Set Phase 2'),
(20460, 0,4,0,1,2,100,0,1000,1000,1000,1000,49,0,0,0,0,0,0,12,1,0,0,0, 0, 0, 0,'Chief Engineer Gork lonn - OOC - Attack'),
(20226, 0,0,1,38,0,100,0,1,1,0,0,11,35031,0,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Manaforge Visual Trigger - On Data Set - Cast Manaforge Disable Visual'),
(20226, 0,1,0,61,0,100,0,0,0,0,0,50,184954,60000,0,0,0,0,1,0,0,0,0, 0, 0, 0,'Manaforge Visual Trigger - On Data Set - Summon Manaforge Smoke');

DELETE FROM `creature_text` WHERE `entry`=20218;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES 
(20218, 0, 0, 'Stop the emergency shutdown! Kael will have our heads if he hears about this!', 12, 0, 100, 0, 0, 0, 'Sunfury Technician'),
(20218, 0, 1, 'Stop this immediately!', 12, 0, 100, 0, 0, 0, 'Sunfury Technician'),
(20218, 0, 2, 'The naaru''s emergency shutdown will disable the manaforge permanently! It must be aborted!', 12, 0, 100, 0, 0, 0, 'Sunfury Technician');


DELETE FROM `waypoints` WHERE `entry` IN(2021800,2021801,2021802,2021803,2021804,2021805,2043900,2043901);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(2021800,1, 2918.929199, 4180.713379, 161.866867,'Manforge B''naar cast point 1'),
(2021801,1, 2911.797852, 4196.943848, 161.883194,'Manforge B''naar cast point 2'),
(2021802,1, 2417.708252, 2748.968018, 132.415741,'Manforge Coruu cast point 1'),
(2021803,1, 2424.118652, 2765.202637, 132.368378,'Manforge Coruu cast point 2'),
(2021804,1, 2969.341797, 2175.692383, 163.197601,'Manforge Duru cast point 1'),
(2021805,1, 2986.231201, 2184.670166, 163.204178,'Manforge Duru cast point 2'),
(2043900,1, 4004.417969, 4033.558105, 192.624023,'Manforge Ara cast point 1'),
(2043901,1, 4024.727295, 4027.472656, 192.559723,'Manforge Ara cast point 2');



    UPDATE `creature_template` SET `AIName`='SmartAI',`npcflag`=16777216 WHERE `entry`=28161;

    DELETE FROM `smart_scripts` WHERE `entryorguid`=28161 and `source_type`=0;
    DELETE FROM `smart_scripts` WHERE `entryorguid`=2816100 and `source_type`=9;

    INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
    (28161, 0, 0, 4, 8, 0, 100, 0, 51959, 0, 11000, 11000, 28, 51846, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Chicken Escapee - On Spellhit (Chicken Net) - Remove Aura Scared Chicken'),
    (28161, 0, 1, 2, 73, 0, 100, 0, 0, 0, 0, 0, 85, 51037, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chicken Escapee - On Spellclick - Invoker Cast Capture Chicken Escapee '),
    (28161, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Chicken Escapee - On Spellclick - Despawn'),
    (28161, 0, 2, 3, 11, 0, 100, 0, 0, 0, 0, 0, 11, 50734, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Chicken Escapee - On Reset - Cast Frenzyheart Chicken: Invisibility'),
    (28161, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 51846, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Chicken Escapee - On Reset - Cast Scared Chicken'),
    (28161, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 80, 2816100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Chicken Escapee - Link - Run Script'),
    (2816100, 9, 0, 0, 0, 0, 100, 0, 10, 10, 0, 0, 11, 51959, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Chicken Escapee - Script - Cast Chicken Net');

    DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=28161;
    INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
    (28161, 51037, 0, 0);

    DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=28161;
    INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
    (18, 28161, 51037, 0, 0, 9, 0, 12702, 0, 0, 0, 0, 0, '', 'Required quest active for spellclick'),
    (18, 28161, 51037, 0, 1, 9, 0, 12532, 0, 0, 0, 0, 0, '', 'Required quest active for spellclick');

    DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=51959;
    INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
    (13, 1, 51959, 0, 0, 31, 0, 3, 28161, 0, 0, 0, 0, '', 'Chicken Net targets chicken escapee');

	
	DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`IN(49191,49554);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(13, 1, 49191, 0, 0, 31, 0, 3, 27712, 0, 0, 0, 0, '', '7th Legion Chain Gun hits Mindless Ghoul'),
(13, 1, 49554, 0, 0, 31, 0, 3, 27795, 0, 0, 0, 0, '', 'Summon injured soldier hits Injured Soldier Summon Point');

UPDATE `creature` SET `spawntimesecs`=120 WHERE  `id`=27712;

UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry` IN(27712,27795,27788);

DELETE FROM `smart_scripts` WHERE `entryorguid`IN(27712,27788) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=2778800 AND `source_type`=9;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(27712, 0, 0, 0, 9, 0, 100, 0, 0, 5, 10000, 15000, 11, 50196, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Mindless Ghoul - IC - Cast Rotting Touch'),
(27788, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 64, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Injured 7th Legion Soldier - On Just Summoned - Store Targetlist'),
(27788, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 11, 49774, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Injured 7th Legion Soldier - On Just Summoned - Cast cast Cower + Fear Visual'),
(27788, 0, 2, 12, 61, 0, 100, 0, 0, 0, 0, 0, 80, 2778800, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Injured 7th Legion Soldier - Run Script'),
(27788, 0, 3, 5, 7, 0, 100, 0, 0, 0, 0, 0, 11, 49774, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Injured 7th Legion Soldier - On Evade  - cast Cower + Fear Visual'),
(27788, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 64, 2, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 'Injured 7th Legion Soldier - On 7th Legion cannon within 3 yards  - Disable Combat movement'),
(27788, 0, 5, 0, 6, 0, 100, 0, 0, 0, 0, 0, 78, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Injured 7th Legion Soldier - On Death  - Reset all scripts'),
(27788, 0, 6, 4, 75, 0, 100, 1, 0, 27714, 10, 0, 59, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Injured 7th Legion Soldier - On 7th Legion Cannon within 15 yards  - Remove aura Cower + Fear Visual'),
(27788, 0, 7, 8, 75, 0, 100, 1, 0, 27714, 3, 0, 1, 0, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 'Injured 7th Legion Soldier - On 7th Legion Cannon within 5 yards  - Say'),
(27788, 0, 8, 9, 61, 0, 100, 0, 0, 0, 0, 0, 33, 27788, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 'Injured 7th Legion Soldier - On 7th Legion Cannon within 5 yards  - Give kill credit to stored target'),
(27788, 0, 9, 13, 61, 0, 100, 0, 0, 0, 0, 0, 28, 49774, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Injured 7th Legion Soldier - On 7th Legion Cannon within 5 yards  - Remove aura Cower + Fear Visual'),
(27788, 0, 10, 0, 1, 0, 100, 0, 500, 500, 7500, 7500, 29, 0, 0, 0, 0, 0, 0, 12, 2, 0, 0, 0, 0, 0, 0, 'Injured 7th Legion Soldier - OOC - Follow stored target 2'),
(27788, 0, 11, 12, 61, 0, 100, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Injured 7th Legion Soldier - Just Summoned  - Disable melee combat'),
(27788, 0, 12, 0, 61, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Injured 7th Legion Soldier - Just Summoned  - Disable Combat movement'),
(27788, 0, 13, 14, 61, 0, 100, 0, 0, 0, 0, 0, 28, 49775, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Injured 7th Legion Soldier -  On 7th Legion Cannon within 15 yards  - Remove aura Cower + Fear Visual'),
(27788, 0, 14, 15, 61, 0, 100, 0, 0, 0, 0, 0, 18, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Injured 7th Legion Soldier -  On 7th Legion Cannon within 15 yards  - Set Unit Flags'),
(27788, 0, 15, 0, 61, 0, 100, 0, 0, 0, 0, 0, 59, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Injured 7th Legion Soldier - On 7th Legion Cannon within 15 yards  - Set Run'),
(27788, 0, 16, 0, 7, 0, 100, 0, 0, 0, 0, 0, 29, 0, 0, 0, 0, 0, 0, 12, 2, 0, 0, 0, 0, 0, 0, 'Injured 7th Legion Soldier - On Evade Follow stored targetlist 2'),
(2778800, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 64, 2, 0, 0, 0, 0, 0, 19, 27792, 0, 0, 0, 0, 0, 0, 'Injured 7th Legion Soldier - Script - Store Targetlist 2 closest Injured Soldier Waypoint 01 '),
(2778800, 9, 1, 0, 0, 0, 100, 0, 15000, 15000, 0, 0, 64, 2, 0, 0, 0, 0, 0, 19, 27793, 0, 0, 0, 0, 0, 0, 'Injured 7th Legion Soldier - Script - Store Targetlist 2 closest Injured Soldier Waypoint 02'),
(2778800, 9, 2, 0, 0, 0, 100, 0, 15000, 15000, 0, 0, 64, 2, 0, 0, 0, 0, 0, 19, 27794, 0, 0, 0, 0, 0, 0, 'Injured 7th Legion Soldier - Script - Store Targetlist 2 closest Injured Soldier Waypoint 03'),
(2778800, 9, 3, 0, 0, 0, 100, 0, 15000, 15000, 0, 0, 64, 2, 0, 27714, 0, 0, 0, 19, 27714, 0, 0, 0, 0, 0, 0, 'Injured 7th Legion Soldier - Script - Store Targetlist 2  7th legion chain gun');

DELETE FROM `creature_text` WHERE `entry`=27788;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES 
(27788, 0, 0, 'I was almost ghoul bait! Thanks for the rescue!', 12, 0, 100, 0, 0, 0, 'Injured 7th Legion Soldier'),
(27788, 0, 1, 'It''s a good thing you came along, ally! We were done for!', 12, 0, 100, 0, 0, 0, 'Injured 7th Legion Soldier'),
(27788, 0, 2, 'Thanks for the cover fire! It''s a MADHOUSE down there!', 12, 0, 100, 0, 0, 0, 'Injured 7th Legion Soldier'),
(27788, 0, 3, 'Wow, I thought I was a goner! Thanks, friend!', 12, 0, 100, 0, 0, 0, 'Injured 7th Legion Soldier');


UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI',`ScriptName`='' WHERE `entry`=111148;
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid`=111148;

INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(111148,1,1,0,1,0,100,0,0,0,1000,1000,45,1,1,0,0,0,0,19,2164,5,0,0,0,0,0, 'Night Elven Bear Trap - OOC - Set Data closest Rabid Thistle Bear ');

DELETE FROM `smart_scripts` WHERE `entryorguid`=2164 AND `source_type`=0  AND `id`>0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=216400 AND `source_type`=9;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(2164, 0, 1, 0, 38, 0, 100, 1, 1, 1, 0, 0, 80, 216400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rabid Thistle Bear - On Data Set - Run Script (No repeat)'),
(2164, 0, 2, 0, 4, 0, 100, 0, 0, 0, 0, 0, 64, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Rabid Thistle Bear - On Agro store targetlist'),
(216400, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rabid Thistle Bear - Script - Evade'),
(216400, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 33, 11836, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 'Rabid Thistle Bear - Script - Kill Credit'),
(216400, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 29, 0, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 'Rabid Thistle Bear - Script - Follow Target'),
(216400, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 36, 11836, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rabid Thistle Bear - Script - Change Entry to Captured Rabid Thistle Bear'),
(216400, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 120000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rabid Thistle Bear - Script - Follow Target');


    SET @QUEST := 11705;
    SET @VARIDUS := 25618;
    SET @PRISONER := 25624;
    SET @ABERRATION := 25625;
    SET @GETRY := 25729;
    SET @NECROLORD := 25730;
    SET @SAURFANG := 25751;

    DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@GETRY,@VARIDUS,@NECROLORD,@PRISONER,@ABERRATION) AND `source_type`=0;
    DELETE FROM `smart_scripts` WHERE `entryorguid`=@VARIDUS*100 AND `source_type`=9;
    INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
    (@VARIDUS,0,0,0,38,0,100,0,0,1,0,0,69,1,0,0,0,0,0,8,0,0,0,3119.973,6539.042,80.1591, 0, 'Varidus the Flenser - On data 0 1 set - Move to position'),
    (@VARIDUS,0,1,2,34,0,100,0,0,1,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,4.031711, 'Varidus the Flenser - On movement inform - Set orientation'),
    (@VARIDUS,0,2,3,61,0,100,0,0,0,0,0,1,11,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Varidus the Flenser - On movement inform - Say line'),
    (@VARIDUS,0,3,0,61,0,100,0,0,0,0,0,89,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Varidus the Flenser - On movement inform - Stop Random movement'),
    (@VARIDUS,0,4,0,38,0,100,0,0,2,0,0,1,0,3000,0,0,0,0,1,0,0,0,0,0,0,0, 'Varidus the Flenser - On data 0 2 set - Say line'),
    (@VARIDUS,0,5,0,52,0,100,0,0,@VARIDUS,0,0,66,0,0,0,0,0,0,12,1,0,0,0,0,0,0, 'Varidus the Flenser - On text 0 over - Turn to'),
    (@VARIDUS,0,6,7,38,0,100,0,0,3,0,0,1,1,0,0,0,0,0,12,1,0,0,0,0,0,0, 'Varidus the Flenser - On data 0 3 set - Say line'),
    (@VARIDUS,0,7,8,61,0,100,0,0,0,0,0,12,@NECROLORD,1,300000,0,0,0,8,0,0,0,3137.506,6532.551,80.40143,2.280419, 'Varidus the Flenser - On data 0 3 set - Summon En''kilah Necrolord'),
    (@VARIDUS,0,8,0,61,0,100,0,0,0,0,0,100,1,0,0,0,0,0,19,@NECROLORD,50,0,0,0,0,0, 'Varidus the Flenser - On data 0 3 set - Send targetlist'),
    (@VARIDUS,0,9,0,38,0,100,0,0,4,0,0,80,@VARIDUS*100,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Varidus the Flenser - On data 0 4 set - Run script'),
    (@VARIDUS,0,10,11,52,0,100,0,10,@VARIDUS,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Varidus the Flenser - On text 10 over - Remove unit_flags IMMUNE_TO_PC, IMMUNE_TO_NPC'),
    (@VARIDUS,0,11,0,61,0,100,0,0,0,0,0,28,45908,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Varidus the Flenser - On text 10 over - Remove aura Shield of Suffering'),
    (@VARIDUS,0,12,0,9,0,100,0,0,10,5000,8000,11,32711,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Varidus the Flenser - On target within 10y - Spellcast Shadow Nova'),
    (@VARIDUS,0,13,0,0,0,100,0,10000,12000,10000,15000,11,50329,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Varidus the Flenser - On update IC - Spellcast Shied of Suffering'),
    (@VARIDUS,0,14,15,6,0,100,0,0,0,0,0,45,1,3,0,0,0,0,19,@GETRY,100,0,0,0,0,0, 'Varidus the Flenser - On death - Set data 1 3 Shadowstalker Getry'),
    (@VARIDUS,0,15,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Varidus the Flenser - On death - Despawn'),
    (@VARIDUS,0,16,17,11,0,100,0,0,0,0,0,89,10,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Varidus the Flenser - On spawn - Random movement'),
    (@VARIDUS,0,17,0,61,0,100,0,0,0,0,0,18,768,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Varidus the Flenser - On spawn - Set Unit Flags'),
    (@VARIDUS,0,18,19,38,0,100,0,2,2,0,0,18,768,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Varidus the Flenser - On data 2 2 set - Set unit flags'),
    (@VARIDUS,0,19,20,61,0,100,0,0,0,0,0,78,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Varidus the Flenser - On data 2 2 set - Reset all scripts'),
    (@VARIDUS,0,20,0,61,0,100,0,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Varidus the Flenser - On data 2 2 set - Evade'),

    (@PRISONER,0,0,1,6,0,100,0,0,0,0,0,11,45802,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Infested Prisoner - On death - Spellcast Summoned Aberration'),
    (@PRISONER,0,1,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Infested Prisoner - On death - Despawn'),

    (@ABERRATION,0,0,1,11,0,100,0,0,0,0,0,53,0,@ABERRATION,0,0,0,0,1,0,0,0,0,0,0,0, 'Warsong Aberration - On spawn - Start WP movement'),
    (@ABERRATION,0,1,0,61,0,100,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Warsong Aberration - On spawn - Set reaction aggressive'),
    (@ABERRATION,0,2,0,9,0,100,0,0,5,990,3000,11,50306,2,0,0,0,0,7,0,0,0,0,0,0,0, 'Warsong Aberration - On target within 5y - Spellcast Thrash Kick'),

    (@GETRY,0,0,1,19,0,100,0,@QUEST,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Shadowstalker Getry - On quest accept - Store targetlist'),
    (@GETRY,0,1,2,61,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Shadowstalker Getry - On quest accept - Remove npcflag questgiver'),
    (@GETRY,0,2,3,61,0,100,0,0,0,0,0,1,0,3000,0,0,0,0,1,0,0,0,0,0,0,0, 'Shadowstalker Getry - On quest accept - Say line'),
    (@GETRY,0,3,4,61,0,100,0,0,0,0,0,11,45924,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Shadowstalker Getry - On quest accept - Spellcast On Getry''s Quest'),
    (@GETRY,0,4,5,61,0,100,0,0,0,0,0,11,45924,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Shadowstalker Getry - On quest accept - Spellcast On Getry''s Quest'),
    (@GETRY,0,5,0,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,@VARIDUS,50,0,0,0,0,0, 'Shadowstalker Getry - On quest accept - Set data 0 1 Varidus the Flenser'),
    (@GETRY,0,6,7,52,0,100,0,0,@GETRY,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Shadowstalker Getry - On text 0 over - Say line'),
    (@GETRY,0,7,0,61,0,100,0,0,0,0,0,53,0,@GETRY,0,0,0,0,1,0,0,0,0,0,0,0, 'Shadowstalker Getry - On text 0 over - Start WP'),
    (@GETRY,0,8,0,11,0,100,0,0,0,0,0,81,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Shadowstalker Getry - On spawn - Set npcflag questgiver'),
    (@GETRY,0,9,0,40,0,100,0,8,@GETRY,0,0,11,34189,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Shadowstalker Getry - On WP8 reached - Spellcast Stealth'),
    (@GETRY,0,10,11,40,0,100,0,9,@GETRY,0,0,45,0,2,0,0,0,0,19,@VARIDUS,30,0,0,0,0,0, 'Shadowstalker Getry - On WP 9 reached - Set data 0 2 Varidus the Flenser'),
    (@GETRY,0,11,0,61,0,100,0,0,0,0,0,100,1,0,0,0,0,0,19,@VARIDUS,30,0,0,0,0,0, 'Shadowstalker Getry - On WP10 reached - Send targetlist to Varidus the Flenser'),
    (@GETRY,0,12,13,40,0,100,0,10,@GETRY,0,0,66,0,0,0,0,0,0,19,@VARIDUS,20,0,0,0,0,0, 'Shadowstalker Getry - On WP10 reached - Turn to'),
    (@GETRY,0,13,14,61,0,100,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Shadowstalker Getry - On WP10 reached - Set home position'),
    (@GETRY,0,14,15,61,0,100,0,0,0,0,0,28,34189,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Shadowstalker Getry - On WP10 reached - Remove aura Stealth'),
    (@GETRY,0,15,16,61,0,100,0,0,0,0,0,11,45922,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Shadowstalker Getry - On WP10 reached - Spellcast Shadow Prison'),
    (@GETRY,0,16,17,61,0,100,0,0,0,0,0,86,45922,0,12,1,0,0,12,1,0,0,0,0,0,0, 'Shadowstalker Getry - On WP10 reached - Crosscast Shadow Prison'),
    (@GETRY,0,17,0,61,0,100,0,0,0,0,0,45,0,3,0,0,0,0,19,@VARIDUS,20,0,0,0,0,0, 'Shadowstalker Getry - On WP10 reached - Set Data 0 3 Varidus the Flenser'),
    (@GETRY,0,18,19,38,0,100,0,1,1,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Shadowstalker Getry - On data 1 1 set - Remove unit_flags IMMUNE_TO_PC, IMMUNE_TO_NPC'),
    (@GETRY,0,19,0,61,0,100,0,0,0,0,0,49,0,0,0,0,0,0,19,@VARIDUS,20,0,0,0,0,0, 'Shadowstalker Getry - On data 1 1 set - Start attack'),
    (@GETRY,0,20,21,38,0,100,0,1,3,0,0,15,@QUEST,0,0,0,0,0,12,1,0,0,0,0,0,0, 'Shadowstalker Getry - On data 1 3 set - Quest credit'),
    (@GETRY,0,21,0,61,0,100,0,0,0,0,0,1,2,5000,0,0,0,0,1,0,0,0,0,0,0,0, 'Shadowstalker Getry - On data 1 3 set - Say line'),
    (@GETRY,0,22,0,52,0,100,0,2,@GETRY,0,0,1,3,5000,0,0,0,0,1,0,0,0,0,0,0,0, 'Shadowstalker Getry - On text 2 over - Say line'),
    (@GETRY,0,23,0,52,0,100,0,3,@GETRY,0,0,45,1,2,0,0,0,0,19,@SAURFANG,20,0,0,0,0,0, 'Shadowstalker Getry - On text 3 over - Set data 1 2 High Overlord Saurfang'),
    (@GETRY,0,24,0,38,0,100,0,1,4,0,0,53,0,@GETRY*100,0,0,0,0,1,0,0,0,0,0,0,0, 'Shadowstalker Getry - On data 1 4 set - Start WP movement'),
    (@GETRY,0,26,27,40,0,100,0,10,@GETRY*100,0,0,81,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Shadowstalker Getry - On WP10 reached (Return) - Set npcflag questgiver'),
    (@GETRY,0,27,28,61,0,100,0,0,0,0,0,18,768,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Shadowstalker Getry - On WP10 reached (Return) - Set unit_flags IMMUNE_TO_PC, IMMUNE_TO_NPC'),
    (@GETRY,0,28,0,61,0,100,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Shadowstalker Getry - On WP10 reached (Return) - Set homeposition'),
    (@GETRY,0,29,30,8,0,100,0,45950,0,0,0,28,45922,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Shadowstalker Getry - On spellhit Saurfangs Rage - Remove aura Shadow Prison'),
    (@GETRY,0,30,0,61,0,100,0,0,0,0,0,28,45922,0,0,0,0,0,12,1,0,0,0,0,0,0, 'Shadowstalker Getry - On spellhit Saurfangs Rage - Remove aura Shadow Prison'),
    (@GETRY,0,31,32,6,0,100,0,0,0,0,0,6,@QUEST,0,0,0,0,0,12,1,0,0,0,0,0,0, 'Shadowstalker Getry - On Death - Fail Quest'),
    (@GETRY,0,32,33,61,0,100,0,0,0,0,0,45,2,2,0,0,0,0,19,@VARIDUS,0,0,0,0,0,0, 'Shadowstalker Getry - On Death - Set Data 2 2 Varidus'),
    (@GETRY,0,33,34,61,0,100,0,0,0,0,0,45,2,2,0,0,0,0,19,@NECROLORD,0,0,0,0,0,0, 'Shadowstalker Getry - On Death - Set Data 2 2 Varidus'),
    (@GETRY,0,34,0,61,0,100,0,0,0,0,0,45,2,2,0,0,0,0,19,@SAURFANG,0,0,0,0,0,0, 'Shadowstalker Getry - On Death - Set Data 2 2 Varidus'),

    (@NECROLORD,0,0,0,11,0,100,0,0,0,0,0,53,0,@NECROLORD,0,0,0,0,1,0,0,0,0,0,0,0, 'En''kilah Necrolord - On spawn - Start WP movement'),
    (@NECROLORD,0,1,2,40,0,100,0,2,@NECROLORD,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'En''kilah Necrolord - On reached WP1 - Set home position'),
    (@NECROLORD,0,2,0,61,0,100,0,0,0,0,0,45,0,4,0,0,0,0,19,@VARIDUS,10,0,0,0,0,0, 'En''kilah Necrolord - On reached WP1 - Set data 0 4 Varidus the Flenser'),
    (@NECROLORD,0,3,4,38,0,100,0,0,1,0,0,66,0,0,0,0,0,0,19,@VARIDUS,10,0,0,0,0,0, 'En''kilah Necrolord - On data 0 1 set - Turn to'),
    (@NECROLORD,0,4,0,61,0,100,0,0,0,0,0,36,@SAURFANG,0,0,0,0,0,1,0,0,0,0,0,0,0, 'En''kilah Necrolord - On data 0 1 set - Change entry to High Overlord Saurfang'),
    (@NECROLORD,0,5,0,38,0,100,0,0,2,0,0,1,0,2500,0,0,0,0,12,1,0,0,0,0,0,0, 'High Overlord Saurfang - On data 0 2 set - Say line'),
    (@NECROLORD,0,6,0,52,0,100,0,0,@SAURFANG,0,0,66,0,0,0,0,0,0,12,1,0,0,0,0,0,0, 'High Overlord Saurfang - On text 0 over - Turn to'),
    (@NECROLORD,0,7,0,38,0,100,0,0,3,0,0,1,1,4000,0,0,0,0,12,1,0,0,0,0,0,0, 'High Overlord Saurfang - On data 0 3 set - Say line'),
    (@NECROLORD,0,8,0,52,0,100,0,1,@SAURFANG,0,0,66,0,0,0,0,0,0,19,@VARIDUS,10,0,0,0,0,0, 'High Overlord Saurfang - On text 1 over - Turn to'),
    (@NECROLORD,0,9,0,38,0,100,0,0,4,0,0,1,2,5000,0,0,0,0,1,0,0,0,0,0,0,0, 'High Overlord Saurfang - On data 0 4 set - Say line'),
    (@NECROLORD,0,10,0,52,0,100,0,2,@SAURFANG,0,0,1,3,12000,0,0,0,0,1,0,0,0,0,0,0,0, 'High Overlord Saurfang - On text 2 over - Say line'),
    (@NECROLORD,0,11,0,52,0,100,0,3,@SAURFANG,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0, 'High Overlord Saurfang - On text 3 over - Say line'),
    (@NECROLORD,0,13,14,38,0,100,0,1,1,0,0,19,256,0,0,0,0,0,1,0,0,0,0,0,0,0, 'High Overlord Saurfang - On data 1 1 set - Remove unit_flags IMMUNE_TO_NPC'),
    (@NECROLORD,0,14,15,61,0,100,0,0,0,0,0,11,45950,0,0,0,0,0,1,0,0,0,0,0,0,0, 'High Overlord Saurfang - On data 1 1 set - Spellcast Saurfang''s Rage'),
    (@NECROLORD,0,15,0,61,0,100,0,0,0,0,0,1,5,1000,0,0,0,0,1,0,0,0,0,0,0,0, 'High Overlord Saurfang - On data 1 1 set - Say line'),
    (@NECROLORD,0,16,0,52,0,100,0,5,@SAURFANG,0,0,1,6,1000,0,0,0,0,1,0,0,0,0,0,0,0, 'High Overlord Saurfang - On text 5 over - Say line'),
    (@NECROLORD,0,17,0,61,0,100,0,0,0,0,0,41,3000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'High Overlord Saurfang - On text 7 over - Despawn after 3 seconds'),
    (@NECROLORD,0,18,0,9,0,100,0,0,5,20000,25000,11,41097,0,0,0,0,0,1,0,0,0,0,0,0,0, 'High Overlord Saurfang - On target within 5y - Spellcast Whirlwind'),
    (@NECROLORD,0,19,0,0,0,100,0,3000,7000,3000,8000,11,16044,0,0,0,0,0,1,0,0,0,0,0,0,0, 'High Overlord Saurfang - On update IC - Spellcast Cleave'),
    (@NECROLORD,0,20,0,0,0,100,0,2000,7000,5000,7000,11,24573,0,0,0,0,0,2,0,0,0,0,0,0,0, 'High Overlord Saurfang - On update IC - Spellcast Mortal Strike'),
    (@NECROLORD,0,21,0,9,0,100,0,8,25,5000,5000,11,15749,0,0,0,0,0,2,0,0,0,0,0,0,0, 'High Overlord Saurfang - On target within 8-25y - Spellcast Shield Charge'),
    (@NECROLORD,0,22,0,38,0,100,0,0,5,0,0,66,0,0,0,0,0,0,12,1,0,0,0,0,0,0, 'High Overlord Saurfang - On data 0 5 set - Turn to'),
    (@NECROLORD,0,23,0,38,0,100,0,1,2,0,0,1,7,3000,0,0,0,0,1,0,0,0,0,0,0,0, 'High Overlord Saurfang - On data 1 2 set - Say line'),
    (@NECROLORD,0,24,17,52,0,100,0,7,@SAURFANG,0,0,45,1,4,0,0,0,0,19,@GETRY,20,0,0,0,0,0, 'High Overlord Saurfang - On text 7 over - Set data 1 4 Shadowstalker Getry'),
    (@NECROLORD,0,25,0,38,0,100,0,2,2,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'High Overlord Saurfang - On data 2 2 set - Despawn'),

    (@VARIDUS*100,9,0,0,0,0,100,0,0,0,0,0,45,0,5,0,0,0,0,19,@NECROLORD,10,0,0,0,0,0, 'Varidus the Flenser script - Set data 0 5 En''kilah Necrolord'),
    (@VARIDUS*100,9,1,0,0,0,100,0,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Varidus the Flenser script - Say line'),
    (@VARIDUS*100,9,2,0,0,0,100,0,5000,5000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Varidus the Flenser script - Say line'),
    (@VARIDUS*100,9,3,0,0,0,100,0,3000,3000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Varidus the Flenser script - Say line'),
    (@VARIDUS*100,9,4,0,0,0,100,0,4000,4000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Varidus the Flenser script - Say line'),
    (@VARIDUS*100,9,5,0,0,0,100,0,6000,6000,0,0,66,0,0,0,0,0,0,19,@NECROLORD,10,0,0,0,0,0, 'Varidus the Flenser script - Turn to'),
    (@VARIDUS*100,9,6,0,0,0,100,0,1000,1000,0,0,1,6,0,0,0,0,0,12,1,0,0,0,0,0,0, 'Varidus the Flenser script - Say line'),
    (@VARIDUS*100,9,7,0,0,0,100,0,6000,6000,0,0,45,0,1,0,0,0,0,19,@NECROLORD,10,0,0,0,0,0, 'Varidus the Flenser script - Set data 0 1 En''kilah Necrolord'),
    (@VARIDUS*100,9,8,0,0,0,100,0,1000,1000,0,0,45,0,2,0,0,0,0,19,@SAURFANG,10,0,0,0,0,0, 'Varidus the Flenser script - Set data 0 2 High Overlord Saurfang'),
    (@VARIDUS*100,9,9,0,0,0,100,0,1500,1500,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Varidus the Flenser script - Say line'),
    (@VARIDUS*100,9,10,0,0,0,100,0,2000,2000,0,0,45,0,3,0,0,0,0,19,@SAURFANG,10,0,0,0,0,0, 'Varidus the Flenser script - Set data 0 3 High Overlord Saurfang'),
    (@VARIDUS*100,9,11,0,0,0,100,0,5000,5000,0,0,45,0,4,0,0,0,0,19,@SAURFANG,10,0,0,0,0,0, 'Varidus the Flenser script - Set data 0 4 High Overlord Saurfang'),
    (@VARIDUS*100,9,12,0,0,0,100,0,13000,13000,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Varidus the Flenser script - Say line'),
    (@VARIDUS*100,9,13,0,0,0,100,0,10000,10000,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Varidus the Flenser script - Say line'),
    (@VARIDUS*100,9,14,0,0,0,100,0,2000,2000,0,0,1,10,2000,0,0,0,0,1,0,0,0,0,0,0,0, 'Varidus the Flenser - On text 9 over - Say line'),
    (@VARIDUS*100,9,15,0,0,0,100,0,0,0,0,0,11,45949,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Varidus the Flenser script - Spellcast Release Aberration'),
    (@VARIDUS*100,9,16,0,0,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,@GETRY,20,0,0,0,0,0, 'Varidus the Flenser script - Set data 1 1 Shadowstalker Getry'),
    (@VARIDUS*100,9,17,0,0,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,@SAURFANG,20,0,0,0,0,0, 'Varidus the Flenser script - Set data 1 1 Saurfang');

    DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN(19,20) AND `SourceEntry`=11705;
    INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
    (19,0,11705,0,0,29,0,25618,200,0,0,0,0,'','Foolish Endeavors can only be taken if Varidus is near'),
    (19,0,11705,0,0,36,0,0,0,0,0,0,0,'','Foolish Endeavors can only be taken if Varidus is alive'),
    (20,0,11705,0,0,29,0,25618,200,0,0,0,0,'','Foolish Endeavors can only be taken if Varidus is near'),
    (20,0,11705,0,0,36,0,0,0,0,0,0,0,'','Foolish Endeavors can only be taken if Varidus is alive');

	
	-- Blackrock Sorcerer SAI
SET @ENTRY := 7026;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4500,11,20823,64,0,0,0,0,2,0,0,0,0,0,0,0,"Blackrock Sorcerer - In Combat CMC - Cast 'Fireball'"),
(@ENTRY,0,1,0,0,0,100,0,8500,19300,14700,19400,11,20827,1,0,0,0,0,2,0,0,0,0,0,0,0,"Blackrock Sorcerer - In Combat - Cast 'Flamestrike'");

-- Blackrock Warlock SAI
SET @ENTRY := 7028;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3300,5200,11,20825,64,0,0,0,0,2,0,0,0,0,0,0,0,"Blackrock Warlock - In Combat CMC - Cast 'Shadow Bolt'"),
(@ENTRY,0,1,0,0,0,100,0,2600,7300,29100,31300,11,13338,33,0,0,0,0,5,0,0,0,0,0,0,0,"Blackrock Warlock - In Combat - Cast 'Curse of Tongues'"),
(@ENTRY,0,2,0,0,0,100,0,6200,8700,5100,11000,11,20826,33,0,0,0,0,2,0,0,0,0,0,0,0,"Blackrock Warlock - In Combat - Cast 'Immolate'");

-- Thaurissan Firewalker SAI
SET @ENTRY := 7037;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2400,4700,11,10452,64,0,0,0,0,2,0,0,0,0,0,0,0,"Thaurissan Firewalker - In Combat CMC - Cast 'Flame Buffet'"),
(@ENTRY,0,1,0,0,0,100,0,9100,12500,12300,15700,11,10733,1,0,0,0,0,2,0,0,0,0,0,0,0,"Thaurissan Firewalker - In Combat - Cast 'Flame Spray'");

-- Thaurissan Agent SAI
SET @ENTRY := 7038;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2200,3900,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,"Thaurissan Agent - In Combat CMC - Cast 'Shoot'"),
(@ENTRY,0,1,0,9,0,100,0,5,30,36300,50000,11,6685,0,0,0,0,0,2,0,0,0,0,0,0,0,"Thaurissan Agent - Within 5-30 Range - Cast 'Piercing Shot'"),
(@ENTRY,0,2,0,9,0,100,0,0,5,13300,24100,11,12540,0,0,0,0,0,2,0,0,0,0,0,0,0,"Thaurissan Agent - Within 0-5 Range - Cast 'Gouge'");

-- Black Wyrmkin SAI
SET @ENTRY := 7041;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4800,11,9053,64,0,0,0,0,2,0,0,0,0,0,0,0,"Black Wyrmkin - In Combat CMC - Cast 'Fireball'"),
(@ENTRY,0,1,0,2,0,100,0,0,50,30400,45900,11,11969,1,0,0,0,0,2,0,0,0,0,0,0,0,"Black Wyrmkin - Between 0-50% Health - Cast 'Fire Nova'");

-- Flamescale Wyrmkin SAI
SET @ENTRY := 7043;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2400,4700,11,9574,64,0,0,0,0,2,0,0,0,0,0,0,0,"Flamescale Wyrmkin - In Combat CMC - Cast 'Flame Buffet'"),
(@ENTRY,0,1,0,0,0,100,0,1000,5200,10800,15100,11,13341,1,0,0,0,0,2,0,0,0,0,0,0,0,"Flamescale Wyrmkin - In Combat - Cast 'Fire Blast'");

-- Black Broodling SAI
SET @ENTRY := 7047;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2800,3600,11,13375,64,0,0,0,0,2,0,0,0,0,0,0,0,"Black Broodling - In Combat CMC - Cast 'Fireball'"),
(@ENTRY,0,1,0,8,0,100,1,16007,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Black Broodling - On Spellhit 'Draco-Incarcinatrix 900' - Set Phase 1"),
(@ENTRY,0,2,0,6,1,100,1,0,0,0,0,11,16027,7,0,0,0,0,1,0,0,0,0,0,0,0,"Black Broodling - On Just Died - Cast 'Create Broodling Essence' (Phase 1)");

-- Scalding Broodling SAI
SET @ENTRY := 7048;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2800,3600,11,13375,64,0,0,0,0,2,0,0,0,0,0,0,0,"Scalding Broodling - In Combat CMC - Cast 'Fireball'"),
(@ENTRY,0,1,0,8,0,100,1,16007,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scalding Broodling - On Spellhit 'Draco-Incarcinatrix 900' - Set Phase 1"),
(@ENTRY,0,2,0,6,1,100,1,0,0,0,0,11,16027,7,0,0,0,0,1,0,0,0,0,0,0,0,"Scalding Broodling - On Just Died - Cast 'Create Broodling Essence' (Phase 1)");

-- Flamescale Broodling SAI
SET @ENTRY := 7049;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2800,3600,11,13375,64,0,0,0,0,2,0,0,0,0,0,0,0,"Flamescale Broodling - In Combat CMC - Cast 'Fireball'"),
(@ENTRY,0,1,0,0,0,100,0,6700,12700,8200,13300,11,13342,1,0,0,0,0,2,0,0,0,0,0,0,0,"Flamescale Broodling - In Combat - Cast 'Fire Blast'"),
(@ENTRY,0,2,0,8,0,100,1,16007,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Flamescale Broodling - On Spellhit 'Draco-Incarcinatrix 900' - Set Phase 1"),
(@ENTRY,0,3,0,6,1,100,1,0,0,0,0,11,16027,7,0,0,0,0,1,0,0,0,0,0,0,0,"Flamescale Broodling - On Just Died - Cast 'Create Broodling Essence' (Phase 1)");

-- Condemned Cleric SAI
SET @ENTRY := 7070;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4800,11,25054,64,0,0,0,0,2,0,0,0,0,0,0,0,"Condemned Cleric - In Combat CMC - Cast 'Holy Smite'"),
(@ENTRY,0,1,0,74,0,100,0,0,40,18000,21000,11,15586,1,0,0,0,0,9,0,0,0,0,0,0,0,"Condemned Cleric - On Friendly Between 0-40% Health - Cast 'Heal'");

-- Writhing Mage SAI
SET @ENTRY := 7075;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,40,3400,4800,11,12675,64,0,0,0,0,2,0,0,0,0,0,0,0,"Writhing Mage - In Combat CMC - Cast 'Frostbolt'"),
(@ENTRY,0,1,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Writhing Mage - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Jaedenar Warlock SAI
SET @ENTRY := 7120;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,1000,1000,0,0,11,11939,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jaedenar Warlock - Out of Combat - Cast 'Summon Imp' (No Repeat)"),
(@ENTRY,0,1,0,0,0,100,0,0,0,2400,3800,11,9613,64,0,0,0,0,2,0,0,0,0,0,0,0,"Jaedenar Warlock - In Combat CMC - Cast 'Shadow Bolt'"),
(@ENTRY,0,2,0,2,0,100,1,0,30,0,0,11,8699,1,0,0,0,0,1,0,0,0,0,0,0,0,"Jaedenar Warlock - Between 0-30% Health - Cast 'Unholy Frenzy' (No Repeat)"),
(@ENTRY,0,3,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jaedenar Warlock - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Deadwood Pathfinder SAI
SET @ENTRY := 7155;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2200,3800,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,"Deadwood Pathfinder - In Combat CMC - Cast 'Shoot'"),
(@ENTRY,0,1,0,9,0,100,0,5,30,6000,12000,11,6685,1,0,0,0,0,2,0,0,0,0,0,0,0,"Deadwood Pathfinder - Within 5-30 Range - Cast 'Piercing Shot'"),
(@ENTRY,0,2,0,0,0,100,0,5000,9000,125000,130000,11,13583,1,0,0,0,0,2,0,0,0,0,0,0,0,"Deadwood Pathfinder - In Combat - Cast 'Curse of the Deadwood'");

-- Sandfury Shadowhunter SAI
SET @ENTRY := 7246;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,2300,3900,11,15547,64,0,0,0,0,2,0,0,0,0,0,0,0,"Sandfury Shadowhunter - In Combat CMC - Cast 'Shoot' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,2,7000,12000,18000,25000,11,11641,1,0,0,0,0,6,0,0,0,0,0,0,0,"Sandfury Shadowhunter - In Combat - Cast 'Hex' (Normal Dungeon)"),
(@ENTRY,0,2,0,2,0,100,3,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Shadowforge Shadowhunter - Between 0-15% Health - Flee For Assist (No Repeat) (Normal Dungeon)");

-- Shadowforge Sharpshooter SAI
SET @ENTRY := 7290;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,2300,3900,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,"Shadowforge Sharpshooter - In Combat CMC - Cast 'Shoot' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,2,9000,13000,30000,36000,11,6685,1,0,0,0,0,2,0,0,0,0,0,0,0,"Shadowforge Sharpshooter - In Combat - Cast 'Piercing Shot' (Normal Dungeon)"),
(@ENTRY,0,2,0,2,0,100,3,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Shadowforge Sharpshooter - Between 0-15% Health - Flee For Assist (No Repeat) (Normal Dungeon)");

-- Withered Spearhide SAI
SET @ENTRY := 7332;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,2300,3900,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,"Withered Spearhide - In Combat CMC - Cast 'Shoot' (Phase 2) (Normal Dungeon)"),
(@ENTRY,0,1,2,2,0,100,2,0,30,120000,120000,11,8599,1,0,0,0,0,1,0,0,0,0,0,0,0,"Withered Spearhide - Between 0-30% Health - Cast 'Enrage' (Normal Dungeon)"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Withered Spearhide - Between 0-30% Health - Say Line 0 (Normal Dungeon)"),
(@ENTRY,0,3,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Withered Spearhide - Between 0-15% Health - Flee For Assist (No Repeat) (Normal Dungeon)");

-- Death's Head Necromancer SAI
SET @ENTRY := 7337;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,3,1000,1000,0,0,11,12420,1,0,0,0,0,1,0,0,0,0,0,0,0,"Death's Head Necromancer - Out of Combat - Cast 'Summon Skeletal Servant' (Normal Dungeon)"),
(@ENTRY,0,1,0,4,0,100,3,0,0,0,0,11,11445,1,0,0,0,0,1,0,0,0,0,0,0,0,"Death's Head Necromancer - On Aggro - Cast 'Bone Armor' (No Repeat) (Normal Dungeon)"),
(@ENTRY,0,2,0,0,0,100,2,0,0,2400,3800,11,9613,64,0,0,0,0,2,0,0,0,0,0,0,0,"Death's Head Necromancer - In Combat CMC - Cast 'Shadow Bolt' (Normal Dungeon)"),
(@ENTRY,0,3,0,0,0,100,2,8000,15000,18000,25000,11,11443,1,0,0,0,0,2,0,0,0,0,0,0,0,"Death's Head Necromancer - In Combat - Cast 'Cripple' (Normal Dungeon)"),
(@ENTRY,0,4,0,2,0,100,3,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Death's Head Necromancer - Between 0-15% Health - Flee For Assist (No Repeat) (Normal Dungeon)");

-- Skeletal Shadowcaster SAI
SET @ENTRY := 7340;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,2400,3800,11,9613,64,0,0,0,0,2,0,0,0,0,0,0,0,"Skeletal Shadowcaster - In Combat CMC - Cast 'Shadow Bolt' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,2,6000,10000,7000,14000,11,12248,33,0,0,0,0,5,0,0,0,0,0,0,0,"Skeletal Shadowcaster - In Combat - Cast 'Amplify Damage' (Normal Dungeon)"),
(@ENTRY,0,2,0,7,0,100,3,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Skeletal Shadowcaster - On Evade - Despawn Instant (No Repeat) (Normal Dungeon)");

-- Skeletal Frostweaver SAI
SET @ENTRY := 7341;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,2400,3800,11,9672,64,0,0,0,0,2,0,0,0,0,0,0,0,"Skeletal Frostweaver - In Combat CMC - Cast 'Frostbolt'");

-- Skeletal Summoner SAI
SET @ENTRY := 7342;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,2400,3800,11,9532,64,0,0,0,0,2,0,0,0,0,0,0,0,"Skeletal Summoner - In Combat CMC - Cast 'Lightning Bolt'"),
(@ENTRY,0,1,0,0,0,100,3,6000,10000,0,0,11,11980,1,0,0,0,0,2,0,0,0,0,0,0,0,"Skeletal Summoner - In Combat - Cast 'Curse of Weakness'"),
(@ENTRY,0,2,0,0,0,100,2,15000,20000,15000,20000,11,12258,1,0,0,0,0,1,0,0,0,0,0,0,0,"Skeletal Summoner - In Combat - Cast 'Summon Shadowcaster'");

-- Ragglesnout SAI
SET @ENTRY := 7354;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,2400,3800,11,12471,64,0,0,0,0,2,0,0,0,0,0,0,0,"Ragglesnout - In Combat CMC - Cast 'Shadow Bolt' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,2,3000,5000,20000,25000,11,11639,1,0,0,0,0,5,0,0,0,0,0,0,0,"Ragglesnout - In Combat - Cast 'Shadow Word: Pain' (Normal Dungeon)"),
(@ENTRY,0,2,0,0,0,100,2,9000,13000,15000,20000,11,7645,1,0,0,0,0,6,0,0,0,0,0,0,0,"Ragglesnout - In Combat - Cast 'Dominate Mind' (Normal Dungeon)"),
(@ENTRY,0,3,0,74,0,100,2,0,40,12000,16000,11,12039,0,0,0,0,0,9,0,0,0,0,0,0,0,"Ragglesnout - On Friendly Between 0-40% Health - Cast 'Heal' (Normal Dungeon)");

-- Deadwind Warlock SAI
SET @ENTRY := 7372;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4800,11,20825,64,0,0,0,0,2,0,0,0,0,0,0,0,"Deadwind Warlock - In Combat CMC - Cast 'Shadow Bolt'"),
(@ENTRY,0,1,0,0,0,100,0,6000,8000,7000,15000,11,11980,33,0,0,0,0,2,0,0,0,0,0,0,0,"Deadwind Warlock - In Combat - Cast 'Curse of Weakness'"),
(@ENTRY,0,2,0,0,0,100,0,9000,11000,11000,18000,11,20787,33,0,0,0,0,5,0,0,0,0,0,0,0,"Deadwind Warlock - In Combat - Cast 'Immolate'");

-- Deadwind Ogre Mage SAI
SET @ENTRY := 7379;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,1000,1000,600000,600000,11,12550,33,0,0,0,0,1,0,0,0,0,0,0,0,"Deadwind Ogre Mage - Out of Combat - Cast 'Lightning Shield'"),
(@ENTRY,0,1,0,0,0,100,0,0,0,2800,4200,11,20824,64,0,0,0,0,2,0,0,0,0,0,0,0,"Deadwind Ogre Mage - In Combat CMC - Cast 'Lightning Bolt'"),
(@ENTRY,0,2,0,0,0,100,0,7000,9000,16000,20000,11,21049,1,0,0,0,0,2,0,0,0,0,0,0,0,"Deadwind Ogre Mage - In Combat - Cast 'Bloodlust'"),
(@ENTRY,0,3,0,2,0,100,0,0,30,30000,36000,11,6742,1,0,0,0,0,1,0,0,0,0,0,0,0,"Deadwind Ogre Mage - Between 0-30% Health - Cast 'Bloodlust'");

-- Oro Eyegouge SAI
SET @ENTRY := 7606;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,3,0,0,0,0,11,12741,0,0,0,0,0,2,0,0,0,0,0,0,0,"Oro Eyegouge - On Aggro - Cast 'Curse of Weakness' (No Repeat) (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,2,0,0,2400,3800,11,9613,64,0,0,0,0,2,0,0,0,0,0,0,0,"Oro Eyegouge - In Combat CMC - Cast 'Shadow Bolt' (Normal Dungeon)"),
(@ENTRY,0,2,0,0,0,80,2,5000,7000,23000,27000,11,11962,0,0,0,0,0,2,0,0,0,0,0,0,0,"Oro Eyegouge - In Combat - Cast 'Immolate' (Normal Dungeon)"),
(@ENTRY,0,3,0,0,0,80,2,8000,10000,15000,18250,11,11990,0,0,0,0,0,2,0,0,0,0,0,0,0,"Oro Eyegouge - In Combat - Cast 'Rain of Fire' (Normal Dungeon)");

-- Archmage Allistarj SAI
SET @ENTRY := 7666;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,1000,1000,1800000,1800000,11,12544,33,0,0,0,0,1,0,0,0,0,0,0,0,"Archmage Allistarj - Out of Combat - Cast 'Frost Armor'"),
(@ENTRY,0,1,0,0,0,100,0,0,0,3400,4800,11,12466,64,0,0,0,0,2,0,0,0,0,0,0,0,"Archmage Allistarj - In Combat CMC - Cast 'Fireball'"),
(@ENTRY,0,2,0,0,0,100,0,9000,12000,11000,14000,11,12737,1,0,0,0,0,2,0,0,0,0,0,0,0,"Archmage Allistarj - In Combat - Cast 'Frostbolt'"),
(@ENTRY,0,3,0,0,0,100,0,13000,16000,13000,16000,11,14145,1,0,0,0,0,5,0,0,0,0,0,0,0,"Archmage Allistarj - In Combat - Cast 'Fire Blast'"),
(@ENTRY,0,4,0,0,0,100,0,5000,7000,16000,20000,11,12738,1,0,0,0,0,2,0,0,0,0,0,0,0,"Archmage Allistarj - In Combat - Cast 'Amplify Damage'"),
(@ENTRY,0,5,0,0,0,100,0,7000,12000,20000,24000,11,13323,1,0,0,0,0,6,0,0,0,0,0,0,0,"Archmage Allistarj - In Combat - Cast 'Polymorph'");

-- Lady Sevine SAI
SET @ENTRY := 7667;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,1000,1000,1800000,1800000,11,12544,33,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sevine - Out of Combat - Cast 'Frost Armor'"),
(@ENTRY,0,1,0,0,0,100,0,0,0,3400,4800,11,12739,64,0,0,0,0,2,0,0,0,0,0,0,0,"Lady Sevine - In Combat CMC - Cast 'Shadow Bolt'"),
(@ENTRY,0,2,0,0,0,100,0,9000,12000,24000,27000,11,12742,1,0,0,0,0,5,0,0,0,0,0,0,0,"Lady Sevine - In Combat - Cast 'Immolate'"),
(@ENTRY,0,3,0,0,0,100,0,2000,5000,30000,45000,11,12741,1,0,0,0,0,2,0,0,0,0,0,0,0,"Lady Sevine - In Combat - Cast 'Curse of Weakness'"),
(@ENTRY,0,4,0,0,0,100,0,7000,9000,15000,25000,11,12740,1,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sevine - In Combat - Cast 'Summon Infernal Servant'");

-- Gnomeregan Evacuee SAI
SET @ENTRY := 7843;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,1000,1000,0,0,11,7165,1,0,0,0,0,1,0,0,0,0,0,0,0,"Gnomeregan Evacuee - Out of Combat - Cast 'Battle Stance'"),
(@ENTRY,0,1,0,0,0,100,0,0,0,2300,3900,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,"Gnomeregan Evacuee - In Combat CMC - Cast 'Shoot'"),
(@ENTRY,0,2,0,9,0,100,0,0,5,17000,23000,11,9080,1,0,0,0,0,2,0,0,0,0,0,0,0,"Gnomeregan Evacuee - Within 0-5 Range - Cast 'Hamstring'"),
(@ENTRY,0,3,0,0,0,100,0,7000,9000,13000,16000,11,25712,1,0,0,0,0,2,0,0,0,0,0,0,0,"Gnomeregan Evacuee - In Combat - Cast 'Heroic Strike'"),
(@ENTRY,0,4,0,2,0,100,0,0,30,30000,45000,11,2055,1,0,0,0,0,1,0,0,0,0,0,0,0,"Gnomeregan Evacuee - Between 0-30% Health - Cast 'Heal'"),
(@ENTRY,0,5,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gnomeregan Evacuee - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Southsea Freebooter SAI
SET @ENTRY := 7856;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2200,3800,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,"Southsea Freebooter - In Combat CMC - Cast 'Shoot' (Phase 1)"),
(@ENTRY,0,1,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Southsea Freebooter - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Death's Head Cultist SAI
SET @ENTRY := 7872;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2400,3800,11,9613,64,0,0,0,0,2,0,0,0,0,0,0,0,"Death's Head Cultist - In Combat CMC - Cast 'Shadow Bolt'"),
(@ENTRY,0,1,0,0,0,100,0,9000,12500,8000,13000,11,11433,0,0,0,0,0,2,0,0,0,0,0,0,0,"Death's Head Cultist - In Combat - Cast 'Death & Decay'");

-- Cyclok the Mad SAI
SET @ENTRY := 8202;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2400,3800,11,20829,64,0,0,0,0,2,0,0,0,0,0,0,0,"Cyclok the Mad - In Combat CMC - Cast 'Arcane Bolt'"),
(@ENTRY,0,1,0,0,0,100,0,7000,11000,15000,19000,11,11975,1,0,0,0,0,1,0,0,0,0,0,0,0,"Cyclok the Mad - In Combat - Cast 'Arcane Explosion'"),
(@ENTRY,0,2,0,2,0,100,1,0,30,0,0,11,6742,1,0,0,0,0,1,0,0,0,0,0,0,0,"Cyclok the Mad - Between 0-30% Health - Cast 'Bloodlust' (No Repeat)");

-- Mojo the Twisted SAI
SET @ENTRY := 8296;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4800,11,20825,64,0,0,0,0,2,0,0,0,0,0,0,0,"Mojo the Twisted - In Combat CMC - Cast 'Shadow Bolt'"),
(@ENTRY,0,1,0,9,0,100,0,0,30,9000,14000,11,17228,1,0,0,0,0,5,0,0,0,0,0,0,0,"Mojo the Twisted - Within 0-30 Range - Cast 'Shadow Bolt Volley'");

-- Akubar the Seer SAI
SET @ENTRY := 8298;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4800,11,20824,64,0,0,0,0,2,0,0,0,0,0,0,0,"Akubar the Seer - In Combat CMC - Cast 'Lightning Bolt'"),
(@ENTRY,0,1,0,9,0,100,0,0,30,13800,13800,11,20831,1,0,0,0,0,5,0,0,0,0,0,0,0,"Akubar the Seer - Within 0-30 Range - Cast 'Chain Lightning'"),
(@ENTRY,0,2,0,0,0,100,0,3000,5000,25700,31300,11,11436,1,0,0,0,0,5,0,0,0,0,0,0,0,"Akubar the Seer - In Combat - Cast 'Slow'");

-- Gibblewilt SAI
SET @ENTRY := 8503;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,80,1,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gibblewilt - On Aggro - Say Line 0"),
(@ENTRY,0,1,0,0,0,100,0,0,0,0,1300,11,9532,64,0,0,0,0,2,0,0,0,0,0,0,0,"Gibblewilt - In Combat CMC - Cast 'Lightning Bolt'"),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gibblewilt - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Blighted Surge SAI
SET @ENTRY := 8519;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2800,3800,11,16554,64,0,0,0,0,2,0,0,0,0,0,0,0,"Blighted Surge - In Combat CMC - Cast 'Toxic Bolt'"),
(@ENTRY,0,1,0,8,0,100,0,21332,0,0,0,36,13279,0,0,0,0,0,1,0,0,0,0,0,0,0,"Blighted Surge - On Spellhit 'Aspect of Neptulon' - Update Template To 'Discordant Surge'");

-- Cursed Mage SAI
SET @ENTRY := 8524;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4800,11,20829,64,0,0,0,0,2,0,0,0,0,0,0,0,"Cursed Mage - In Combat CMC - Cast 'Arcane Bolt'"),
(@ENTRY,0,1,0,6,0,100,1,0,0,0,0,11,16567,7,0,0,0,0,2,0,0,0,0,0,0,0,"Cursed Mage - On Just Died - Cast 'Tainted Mind'");

-- Dark Caster SAI
SET @ENTRY := 8526;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4800,11,20825,64,0,0,0,0,2,0,0,0,0,0,0,0,"Dark Caster - In Combat CMC - Cast 'Shadow Bolt'"),
(@ENTRY,0,1,0,0,0,100,0,11000,14000,22000,25000,11,20825,32,0,0,0,0,5,0,0,0,0,0,0,0,"Dark Caster - In Combat - Cast 'Shadow Bolt'");

-- Shadowmage SAI
SET @ENTRY := 8550;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,1000,1000,0,0,11,16592,33,0,0,0,0,1,0,0,0,0,0,0,0,"Shadowmage - Out of Combat - Cast 'Shadowform'"),
(@ENTRY,0,1,0,0,0,100,0,0,0,3400,4800,11,20825,64,0,0,0,0,2,0,0,0,0,0,0,0,"Shadowmage - In Combat CMC - Cast 'Shadow Bolt'"),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Shadowmage - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Dark Summoner SAI
SET @ENTRY := 8551;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4800,11,20829,64,0,0,0,0,2,0,0,0,0,0,0,0,"Dark Summoner - In Combat CMC - Cast 'Arcane Bolt'"),
(@ENTRY,0,1,0,0,0,100,0,4000,6000,15000,20000,11,16590,1,0,0,0,0,1,0,0,0,0,0,0,0,"Dark Summoner - In Combat - Cast 'Summon Zombie'"),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dark Summoner - Between 0-15% Health - Flee For Assist");

-- Mossflayer Shadowhunter SAI
SET @ENTRY := 8561;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2300,3900,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,"Mossflayer Shadowhunter - In Combat CMC - Cast 'Shoot'"),
(@ENTRY,0,1,0,9,0,100,0,5,30,6000,9000,11,17171,0,0,0,0,0,2,0,0,0,0,0,0,0,"Mossflayer Shadowhunter - Within 5-30 Range - Cast 'Shadow Shot'"),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mossflayer Shadowhunter - Between 0-15% Health - Flee For Assist");

-- Ranger SAI
SET @ENTRY := 8564;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2300,3900,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,"Ranger - In Combat CMC - Cast 'Shoot'"),
(@ENTRY,0,1,0,9,0,100,0,5,30,7000,9000,11,14443,0,0,0,0,0,2,0,0,0,0,0,0,0,"Ranger - Within 5-30 Range - Cast 'Multi-Shot'"),
(@ENTRY,0,2,0,9,0,100,0,5,30,9000,11000,11,17174,0,0,0,0,0,2,0,0,0,0,0,0,0,"Ranger - Within 5-30 Range - Cast 'Concussive Shot'"),
(@ENTRY,0,3,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ranger - Between 0-15% Health - Flee For Assist");

-- Dark Iron Lookout SAI
SET @ENTRY := 8566;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,1200,2400,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,"Dark Iron Lookout - In Combat CMC - Cast 'Shoot'"),
(@ENTRY,0,1,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dark Iron Lookout - Between 0-15% Health - Flee For Assist");

-- Hukku's Imp SAI
SET @ENTRY := 8658;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,180000,180000,11,11770,1,0,0,0,0,1,0,0,0,0,0,0,0,"Hukku's Imp - In Combat - Cast 'Fire Shield'"),
(@ENTRY,0,1,0,0,0,100,2,0,0,3100,4900,11,11762,64,0,0,0,0,2,0,0,0,0,0,0,0,"Hukku's Imp - In Combat CMC - Cast 'Firebolt' (Normal Dungeon)");

-- Sandfury Acolyte SAI
SET @ENTRY := 8876;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,2400,3800,11,9613,64,0,0,0,0,2,0,0,0,0,0,0,0,"Sandfury Acolyte - In Combat CMC - Cast 'Shadow Bolt' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,2,8000,10000,25000,31000,11,11639,1,0,0,0,0,2,0,0,0,0,0,0,0,"Sandfury Acolyte - In Combat - Cast 'Shadow Word: Pain' (Normal Dungeon)"),
(@ENTRY,0,2,0,0,0,100,2,4000,6000,120000,135000,11,11980,1,0,0,0,0,2,0,0,0,0,0,0,0,"Sandfury Acolyte - In Combat - Cast 'Curse of Weakness' (Normal Dungeon)"),
(@ENTRY,0,3,0,0,0,100,2,5000,6000,15000,22000,11,11981,1,0,0,0,0,5,0,0,0,0,0,0,0,"Sandfury Acolyte - In Combat - Cast 'Mana Burn' (Normal Dungeon)");

-- Anvilrage Reservist SAI
SET @ENTRY := 8901;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,3,0,0,0,0,11,9128,1,0,0,0,0,1,0,0,0,0,0,0,0,"Anvilrage Reservist - On Aggro - Cast 'Battle Shout' (No Repeat) (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,2,0,0,2200,3800,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,"Anvilrage Reservist - In Combat CMC - Cast 'Shoot' (Normal Dungeon)"),
(@ENTRY,0,2,0,0,0,100,2,4000,6000,12000,15000,11,9080,1,0,0,0,0,2,0,0,0,0,0,0,0,"Anvilrage Reservist - In Combat - Cast 'Hamstring' (Normal Dungeon)"),
(@ENTRY,0,3,0,0,0,100,2,8000,11000,6000,9000,11,11976,0,0,0,0,0,2,0,0,0,0,0,0,0,"Anvilrage Reservist - In Combat - Cast 'Strike' (Normal Dungeon)"),
(@ENTRY,0,4,0,2,0,100,3,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Anvilrage Reservist - Between 0-15% Health - Flee For Assist (No Repeat) (Normal Dungeon)");

-- Thauris Balgarr SAI
SET @ENTRY := 8978;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,5,9,0,100,0,0,0,21700,35200,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,"Thauris Balgarr - In Combat CMC - Cast 'Shoot'"),
(@ENTRY,0,1,0,0,0,100,0,7000,11000,21700,35200,11,6533,1,0,0,0,0,2,0,0,0,0,0,0,0,"Thauris Balgarr - In Combat - Cast 'Net'"),
(@ENTRY,0,2,0,0,0,100,0,1000,3000,19200,32700,11,11802,1,0,0,0,0,2,0,0,0,0,0,0,0,"Thauris Balgarr - In Combat - Cast 'Dark Iron Land Mine'");


DELETE FROM `smart_scripts` WHERE `entryorguid` =16364 and `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` =23837 and `source_type`=0 AND `id` IN(3,4);

DELETE FROM `smart_scripts` WHERE `entryorguid` BETWEEN 1636400 AND 1636408 AND `source_type`=9;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(16364, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 64, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Infused Crystal - on spawn - Store Targetlist'),
(16364, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 12, 23837, 1, 60000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Infused Crystal - on spawn - Spawn ELM General Purpose Bunny'),
(16364, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Infused Crystal - on spawn - Disable auto attack'),
(16364, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Infused Crystal - on spawn - Disable combat movement'),
(16364, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 80, 1636400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Infused Crystal - on spawn - run script'),
(16364, 0, 5, 0, 6, 0, 100, 0, 0, 0, 0, 0, 6, 8490, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 'Infused Crystal - On Death - Fail quest (Powering our defenses)'),
(1636400, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 31, 31, 0, 0, 0, 0, 19, 23837, 0, 0, 0, 0, 0, 0, 'Infused Crystal - Script - Set Data ELM General Purpose Bunny'),
(1636400, 9, 1, 0, 0, 0, 100, 0, 15000, 15000, 0, 0, 45, 30, 30, 0, 0, 0, 0, 19, 23837, 0, 0, 0, 0, 0, 0, 'Infused Crystal - Script - Set Data ELM General Purpose Bunny'),
(1636400, 9, 2, 0, 0, 0, 100, 0, 15000, 15000, 0, 0, 45, 31, 31, 0, 0, 0, 0, 19, 23837, 0, 0, 0, 0, 0, 0, 'Infused Crystal - Script - Set Data ELM General Purpose Bunny'),
(1636400, 9, 3, 0, 0, 0, 100, 0, 15000, 15000, 0, 0, 45, 30, 30, 0, 0, 0, 0, 19, 23837, 0, 0, 0, 0, 0, 0, 'Infused Crystal - Script - Set Data ELM General Purpose Bunny'),
(1636400, 9, 4, 0, 0, 0, 100, 0, 15000, 15000, 0, 0, 33, 16364, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 'Infused Crystal - Script - Complete quest (Powering our defenses)'),
(1636400, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Infused Crystal - Script - Say'),
(1636400, 9, 6, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Infused Crystal - Script - Despawn'),

(1636401, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 17086, 6, 60000, 0, 0, 0, 8, 0, 0, 0, 8270.68, -7188.53, 139.619, 4.93306, 'Infused Crystal - Script - Spawn Enraged Wraith'),
(1636402, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 17086, 6, 60000, 0, 0, 0, 8, 0, 0, 0, 8284.27, -7187.78, 139.603, 4.43198, 'Infused Crystal - Script - Spawn Enraged Wraith'),
(1636403, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 17086, 6, 60000, 0, 0, 0, 8, 0, 0, 0, 8297.43, -7193.53, 139.603, 3.93325, 'Infused Crystal - Script - Spawn Enraged Wraith'),
(1636404, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 17086, 6, 60000, 0, 0, 0, 8, 0, 0, 0, 8303.5, -7201.96, 139.577, 3.60417, 'Infused Crystal - Script - Spawn Enraged Wraith'),
(1636405, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 17086, 6, 60000, 0, 0, 0, 8, 0, 0, 0, 8273.22, -7241.82, 139.382, 1.49851, 'Infused Crystal - Script - Spawn Enraged Wraith'),
(1636406, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 17086, 6, 60000, 0, 0, 0, 8, 0, 0, 0, 8254.89, -7222.12, 139.603, 0.635359, 'Infused Crystal - Script - Spawn Enraged Wraith'),
(1636407, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 17086, 6, 60000, 0, 0, 0, 8, 0, 0, 0, 8278.51, -7242.13, 139.162, 1.73178, 'Infused Crystal - Script - Spawn Enraged Wraith'),
(1636408, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 17086, 6, 60000, 0, 0, 0, 8, 0, 0, 0, 8278.51, -7242.13, 139.162, 1.73178, 'Infused Crystal - Script - Spawn Enraged Wraith'),

(23837, 0, 3, 0, 38, 0, 100, 0, 31, 31, 0, 0, 87, 1636401, 1636403, 1636404, 1636406, 1636407, 1636408, 1, 0, 0, 0, 0, 0, 0, 0, 'ELM General Purpose Bunny - On Data Set - Run Random Script'),
(23837, 0, 4, 0, 38, 0, 100, 0, 30, 30, 0, 0, 87, 1636401, 1636402, 1636403, 1636405, 1636406, 1636408, 1, 0, 0, 0, 0, 0, 0, 0, 'ELM General Purpose Bunny - On Data Set - Run Random Script');

DELETE FROM `creature` WHERE `id`=17086;

DELETE FROM `smart_scripts` WHERE `entryorguid`=17086 AND `id`>1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(17086, 0, 2, 0, 54, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 19, 16364, 0, 0, 0, 0, 0, 0, 'Enraged Wraith - On Just Summoned - Attack infused crystal'),
(17086, 0, 3, 0, 7, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Enraged Wraith - On Evade Despawn');

DELETE FROM `creature_text` WHERE `entry`=16364;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(16364, 0, 0, '%s releases the last of its energies into the nearby runestone, successfully reactivating it.', 16, 0, 100, 0, 0, 0, 'Infused Crystal');



-- Warmaul Warlock SAI
SET @ENTRY := 18037;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,50,1,1000,1000,0,0,11,11939,1,0,0,0,0,1,0,0,0,0,0,0,0,"Warmaul Warlock - Out of Combat - Cast 'Summon Imp' (No Repeat)"),
(@ENTRY,0,1,0,0,0,100,0,0,0,2400,3800,11,9613,64,0,0,0,0,2,0,0,0,0,0,0,0,"Warmaul Warlock - In Combat CMC - Cast 'Shadow Bolt'");

-- Rajis Fyashe SAI
SET @ENTRY := 18044;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2400,3800,11,15043,64,0,0,0,0,2,0,0,0,0,0,0,0,"Rajis Fyashe - In Combat CMC - Cast 'Frostbolt'"),
(@ENTRY,0,1,0,0,0,100,1,6000,9000,0,0,11,35594,1,0,0,0,0,1,0,0,0,0,0,0,0,"Rajis Fyashe - In Combat - Cast 'Mass Elementals' (No Repeat)"),
(@ENTRY,0,2,0,0,0,100,0,8000,9000,8000,12000,11,35499,0,0,0,0,0,2,0,0,0,0,0,0,0,"Rajis Fyashe - In Combat - Cast 'Water Spout'"),
(@ENTRY,0,3,0,0,0,100,0,18000,24000,18000,24000,11,34787,1,0,0,0,0,2,0,0,0,0,0,0,0,"Rajis Fyashe - In Combat - Cast 'Freezing Circle'"),
(@ENTRY,0,4,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Rajis Fyashe - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Enraged Crusher SAI
SET @ENTRY := 18062;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,65,0,30000,30000,8000,8000,11,32015,0,0,0,0,0,2,0,0,0,0,0,0,0,"Enraged Crusher - In Combat - Cast 'Knockdown'"),
(@ENTRY,0,1,2,2,0,100,1,0,30,0,0,11,3019,0,0,0,0,0,1,0,0,0,0,0,0,0,"Enraged Crusher - Between 0-30% Health - Cast 'Frenzy' (No Repeat)"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Enraged Crusher - Between 0-30% Health - Say Line 0 (No Repeat)");

-- Warmaul Shaman SAI
SET @ENTRY := 18064;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,60,0,2000,2000,4000,4000,11,15038,0,0,0,0,0,2,0,0,0,0,0,0,0,"Warmaul Shaman - In Combat - Cast 'Scorching Totem'"),
(@ENTRY,0,1,0,2,0,100,1,0,49,22000,22000,11,11986,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warmaul Shaman - Between 0-49% Health - Cast 'Healing Wave'");

-- Umbrafen Oracle SAI
SET @ENTRY := 18077;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,12550,0,0,0,0,0,1,0,0,0,0,0,0,0,"Umbrafen Oracle - On Aggro - Cast 'Lightning Shield'"),
(@ENTRY,0,1,0,2,0,100,1,0,49,22000,22000,11,11986,0,0,0,0,0,1,0,0,0,0,0,0,0,"Umbrafen Oracle - Between 0-49% Health - Cast 'Healing Wave'");

-- Darkcrest Siren SAI
SET @ENTRY := 18087;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2400,3800,11,9672,64,0,0,0,0,2,0,0,0,0,0,0,0,"Darkcrest Siren - In Combat CMC - Cast 'Frostbolt'"),
(@ENTRY,0,1,0,0,0,100,0,7000,10000,14000,18000,11,11831,1,0,0,0,0,1,0,0,0,0,0,0,0,"Darkcrest Siren - In Combat - Cast 'Frost Nova'"),
(@ENTRY,0,2,0,0,0,100,0,5000,7000,12000,17000,11,6726,1,0,0,0,0,5,0,0,0,0,0,0,0,"Darkcrest Siren - In Combat - Cast 'Silence'"),
(@ENTRY,0,3,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Darkcrest Siren - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Bloodscale Enchantress SAI
SET @ENTRY := 18088;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2400,3800,11,34447,64,0,0,0,0,2,0,0,0,0,0,0,0,"Bloodscale Enchantress - In Combat CMC - Cast 'Arcane Missiles'"),
(@ENTRY,0,1,0,0,0,100,0,6000,8000,16000,22000,11,34787,1,0,0,0,0,1,0,0,0,0,0,0,0,"Bloodscale Enchantress - In Combat - Cast 'Freezing Circle'");

-- Bloodscale Slavedriver SAI
SET @ENTRY := 18089;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,11,32064,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bloodscale Slavedriver - On Aggro - Cast 'Battle Shout' (No Repeat)");

-- Bloodscale Wavecaller SAI
SET @ENTRY := 20089;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,1000,1000,600000,600000,11,34827,33,0,0,0,0,1,0,0,0,0,0,0,0,"Bloodscale Wavecaller - Out of Combat - Cast 'Water Shield' (No Repeat)"),
(@ENTRY,0,1,0,0,0,100,0,0,0,2400,3800,11,32011,64,0,0,0,0,2,0,0,0,0,0,0,0,"Bloodscale Wavecaller - In Combat CMC - Cast 'Water Bolt'");

-- Darkcrest Sorceress SAI
SET @ENTRY := 19947;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,1000,1000,1800000,1800000,11,12544,33,0,0,0,0,1,0,0,0,0,0,0,0,"Darkcrest Sorceress - Out of Combat - Cast 'Frost Armor' (No Repeat)"),
(@ENTRY,0,1,0,0,0,100,0,0,0,2400,3800,11,13901,64,0,0,0,0,2,0,0,0,0,0,0,0,"Darkcrest Sorceress - In Combat CMC - Cast 'Arcane Bolt'"),
(@ENTRY,0,2,0,0,0,100,0,10000,15000,20000,25000,11,34787,1,0,0,0,0,2,0,0,0,0,0,0,0,"Darkcrest Sorceress - In Combat - Cast 'Freezing Circle'"),
(@ENTRY,0,3,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Darkcrest Sorceress - Between 0-15% Health - Flee For Assist (No Repeat)");


UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='' WHERE `entry` IN(15402,15958);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN(15402, 15958) and `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN(1540200,1540201,1540202) AND `source_type`=9;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(15402, 0, 0, 0, 20, 0, 100, 0, 8487, 0, 0, 0, 80, 1540200, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Apprentice Mirveda - On Quest Rewarded (Corrupted Soil)  - Run Script'),
(15402, 0, 1, 2, 19, 0, 100, 0, 8488, 0, 0, 0, 64, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Apprentice Mirveda - On Quest Accept (Unexpected Results)  - Store Targetlist'),
(15402, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 80, 1540201, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Apprentice Mirveda - On Quest Accept (Unexpected Results)  - Run Script'),
(15402, 0, 3, 0, 0, 0, 100, 0, 1000, 1000, 5000, 8000, 11, 20811, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Apprentice Mirveda - IC - Cast Fireball'),
(15402, 0, 4, 0, 6, 1, 100, 0, 0, 0, 0, 0, 6, 8488, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 'Apprentice Mirveda - On Death (Phase 1) - Fail Quest Unexpected Results'),
(15402, 0, 5, 6, 7, 1, 100, 0, 0, 0, 0, 0, 15, 8488, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 'Apprentice Mirveda - OOC (Phase 4) - Complete Quest Unexpected Results (Phase 3)'),
(15402, 0, 6, 0, 61, 8, 100, 0, 0, 0, 0, 0, 80, 1540202, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Apprentice Mirveda - Linked with Previous Event - Run Script (Phase 3)'),
(15402, 0, 7, 0, 11, 0, 100, 0, 0, 0, 0, 0, 18, 512, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Apprentice Mirveda - On Spawn - Set Immune to NPC'),
(15958, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Gharsul the Remorseless - On Just Summoned - Set Phase 2'),
(15958, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 53, 1, 15958, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 'Gharsul the Remorseless - On Just Summoned - Start WP'),
(15958, 0, 2, 3, 40, 0, 100, 0, 1, 15958, 0, 0, 101, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Gharsul the Remorseless - On Reached WP1 - Set Home position'),
(15958, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Gharsul the Remorseless - On Reached WP1 - Set react state agressive'),
(15958, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 19, 15402, 0, 0, 0, 0, 0, 0, 'Gharsul the Remorseless - On Reached WP1 - Attack Apprentice Mirveda'),

-- Script does not need to cast 29535 Quest - Apprentice Mirveda - Test Soil as this spell is cast as rewardspellcast from quest_Template and having it in script just makes the npc cast it twice instead of once
(1540200, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Apprentice Mirveda - Script 1 - Set NPC Flags'),
(1540200, 9, 1, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Apprentice Mirveda - Script 1 - Say Line 1'),
(1540200, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 81, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Apprentice Mirveda - Script 1 - Set NPC Flags'),
(1540201, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Apprentice Mirveda - Script 2 - Set NPC Flags'),
(1540201, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 2, 232, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Apprentice Mirveda - Script 2 - Set Faction'),
(1540201, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 19, 512, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Apprentice Mirveda - Script 2 - Remove Unit Flags Immune to NPC'),
(1540201, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Apprentice Mirveda - Script 2 - Set Phase 1'),
(1540201, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 107, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Apprentice Mirveda - Script 2 - Summon Summon Group 0'),
(1540202, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 81, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Apprentice Mirveda - Script 3 - Set NPC Flags'),
(1540202, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 2, 1604, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Apprentice Mirveda - Script 3 - Set Faction'),
(1540202, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 18, 512, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Apprentice Mirveda - Script 3 - Add Unit Flags Immune to NPC'),
(1540202, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Apprentice Mirveda - Script 3 - Set Phase 0');

DELETE FROM `smart_scripts` WHERE `entryorguid`=15656 AND `source_type`=0 AND `id`>1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(15656, 0, 2, 3, 54, 0, 100, 0, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Angershade - On Just Summoned - Set Phase 2'),
(15656, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 53, 1, 15656, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 'Angershade - On Just Summoned - Start WP'),
(15656, 0, 4, 5, 40, 0, 100, 0, 1, 15656, 0, 0, 101, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Angershade - On Reached WP1 - Set Home position'),
(15656, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Angershade - On Reached WP1 - Set react state agressive'),
(15656, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 19, 15402, 0, 0, 0, 0, 0, 0, 'Angershade - On Reached WP1 - Attack Apprentice Mirveda');

DELETE FROM `creature_summon_groups` WHERE `summonerId`=15402;
INSERT INTO `creature_summon_groups` (`summonerId`, `summonerType`, `groupId`, `entry`, `position_x`, `position_y`, `position_z`, `orientation`, `summonType`, `summonTime`) VALUES 
(15402, 0, 0, 15958, 8749.505, -7132.595, 35.31983, 3.816502, 1, 180000), -- Gharsul the Remorseless
(15402, 0, 0, 15656, 8755.38, -7131.521, 35.30957, 3.816502, 1, 180000), -- Angershade
(15402, 0, 0, 15656, 8753.199, -7125.975, 35.31986, 3.816502, 1, 180000); -- Angershade

DELETE FROM `waypoints` WHERE `entry` IN(15958,15656);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(15958, 1, 8706.201172, -7157.467773, 44.203865, 'Gharsul the Remorseless'),
(15656, 1, 8705.161133, -7155.801270, 44.329075, 'Angershade');


UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='' WHERE `entry` IN(16196,16183, 15951);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN(16196,16183, 15951) and `source_type`=0;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(16183, 0, 0, 0, 38, 0, 100, 0, 1, 1, 0, 0, 91, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Courier Dawnstrider - On Data Set  - Remove Bytes 1'),
(16183, 0, 1, 0, 38, 0, 100, 0, 2, 2, 0, 0, 90, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Courier Dawnstrider - On Data Set  - Set Bytes 1'),
(16196, 0, 0, 1, 20, 0, 100, 0, 9147, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 19, 16183, 0, 0, 0, 0, 0, 0, 'Apothecary Thedra - On Quest Reward (The Fallen Courier)  - Set Data 1 1 on Courier Dawnstrider'),
(16196, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 7000, 0, 0, 0, 0, 19, 16183, 0, 0, 0, 0, 0, 0, 'Apothecary Thedra - Linked with Previous Event  - Say Line 1 on Courier Dawnstrider'),
(16196, 0, 2, 3, 52, 0, 100, 0, 0, 16183, 0, 0, 45, 2, 2, 0, 0, 0, 0, 19, 16183, 0, 0, 0, 0, 0, 0, 'Apothecary Thedra - On Text Over  - Set Data 2 2 on Courier Dawnstrider'),
(16196, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Apothecary Thedra - Linked with Previous Event  - Say Line 1'),
(15951, 0, 0, 1, 20, 0, 100, 0, 8891, 0, 0, 0, 50, 181012, 4000, 0, 0, 0, 0, 8, 0, 0, 0, 9049.713, -7434.266, 84.65627, 2.094393, 'Magister Duskwither - On Quest Reward (Abandoned Investigations)  - Spawn Magister Duskwithers Journal'),
(15951, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Magister Duskwither - Linked with Previous Event  - Say Line 1'),
(15951, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 26660, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0,0 , 0, 'Magister Duskwither - Linked with Previous Event  - Cast Duskwither''s Fireball');

DELETE FROM `creature_text` WHERE `entry` IN (16183,15951,16196);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(16183, 0, 0, 'Where... where am I?', 12, 0, 100, 0, 0, 0, 'Courier Dawnstrider'),
(15951, 0, 0, 'Good riddance... now none shall be able to repeat my mistakes!', 12, 0, 100, 0, 0, 0, 'Magister Duskwither'),
(16196, 0, 0, 'You''re not going anywhere just yet, handsome.  Not until you regain your strength.', 12, 0, 100, 0, 0, 0, 'Apothecary Thedra');


-- Gordunni Ogre Mage SAI
SET @ENTRY := 5237;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2400,3800,11,9532,64,0,0,0,0,2,0,0,0,0,0,0,0,"Gordunni Ogre Mage - In Combat CMC - Cast 'Lightning Bolt'"),
(@ENTRY,0,1,0,2,0,100,1,0,30,0,0,11,6742,1,0,0,0,0,1,0,0,0,0,0,0,0,"Gordunni Ogre Mage - Between 0-30% Health - Cast 'Bloodlust' (No Repeat)");

-- Gordunni Mage-Lord SAI
SET @ENTRY := 5239;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2400,3800,11,20823,64,0,0,0,0,2,0,0,0,0,0,0,0,"Gordunni Mage-Lord - In Combat CMC - Cast 'Fireball'"),
(@ENTRY,0,1,0,0,0,100,0,5000,9000,20000,26000,11,20827,1,0,0,0,0,2,0,0,0,0,0,0,0,"Gordunni Mage-Lord - In Combat - Cast 'Flamestrike'"),
(@ENTRY,0,2,0,2,0,100,1,0,30,0,0,11,6742,1,0,0,0,0,1,0,0,0,0,0,0,0,"Gordunni Mage-Lord - Between 0-30% Health - Cast 'Bloodlust' (No Repeat)");

-- Woodpaw Mystic SAI
SET @ENTRY := 5254;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2400,3800,11,9532,64,0,0,0,0,2,0,0,0,0,0,0,0,"Woodpaw Mystic - In Combat CMC - Cast 'Lightning Bolt'"),
(@ENTRY,0,1,0,14,0,100,0,800,30,45000,45000,11,8005,1,0,0,0,0,7,0,0,0,0,0,0,0,"Woodpaw Mystic - Friendly At 800 Health - Cast 'Healing Wave'"),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Woodpaw Mystic - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Atal'ai Witch Doctor SAI
SET @ENTRY := 5259;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,3500,5200,11,9532,64,0,0,0,0,2,0,0,0,0,0,0,0,"Atal'ai Witch Doctor - In Combat CMC - Cast 'Lightning Bolt' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,2,4900,13100,13100,18400,11,12058,1,0,0,0,0,2,0,0,0,0,0,0,0,"Atal'ai Witch Doctor - In Combat - Cast 'Chain Lightning' (Normal Dungeon)"),
(@ENTRY,0,2,0,0,0,100,2,10900,26100,17100,35100,11,11641,1,0,0,0,0,5,0,0,0,0,0,0,0,"Atal'ai Witch Doctor - In Combat - Cast 'Hex' (Normal Dungeon)"),
(@ENTRY,0,3,0,14,0,100,2,1800,40,12700,23100,11,11986,1,0,0,0,0,7,0,0,0,0,0,0,0,"Atal'ai Witch Doctor - Friendly At 1800 Health - Cast 'Healing Wave' (Normal Dungeon)"),
(@ENTRY,0,4,0,2,0,100,3,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Atal'ai Witch Doctor - Between 0-15% Health - Flee For Assist (No Repeat) (Normal Dungeon)");

-- Enthralled Atal'ai SAI
SET @ENTRY := 5261;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,5000,12000,18000,25000,11,12021,0,0,0,0,0,2,0,0,0,0,0,0,0,"Enthralled Atal'ai - In Combat - Cast 'Fixate' (Normal Dungeon)");

-- Mummified Atal'ai SAI
SET @ENTRY := 5263;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,8000,15000,4000,10000,11,16186,32,0,0,0,0,2,0,0,0,0,0,0,0,"Mummified Atal'ai - In Combat - Cast 'Fevered Plague' (Normal Dungeon)");

-- Atal'ai Priest SAI
SET @ENTRY := 5269;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,2,1000,1000,1800000,1800000,11,31976,1,0,0,0,0,1,0,0,0,0,0,0,0,"Atal'ai Priest - Out of Combat - Cast 'Shadow Shield' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,2,0,0,2400,3800,11,9613,64,0,0,0,0,2,0,0,0,0,0,0,0,"Atal'ai Priest - In Combat CMC - Cast 'Shadow Bolt' (Normal Dungeon)"),
(@ENTRY,0,2,0,14,0,100,2,1000,30,11000,15000,11,11642,1,0,0,0,0,7,0,0,0,0,0,0,0,"Atal'ai Priest - Friendly At 1000 Health - Cast 'Heal' (Normal Dungeon)"),
(@ENTRY,0,3,0,2,0,100,3,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Atal'ai Priest - Between 0-15% Health - Flee For Assist (No Repeat) (Normal Dungeon)");

-- Atal'ai Corpse Eater SAI
SET @ENTRY := 5270;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,100,3,0,30,12000,12000,11,12134,1,0,0,0,0,1,0,0,0,0,0,0,0,"Atal'ai Corpse Eater - Between 0-30% Health - Cast 'Atal'ai Corpse Eat' (No Repeat) (Normal Dungeon)");

-- Atal'ai Deathwalker SAI
SET @ENTRY := 5271;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,7300,14500,15900,32200,11,11639,0,0,0,0,0,2,0,0,0,0,0,0,0,"Atal'ai Deathwalker - In Combat - Cast 'Shadow Word: Pain' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,2,9000,13000,13000,18000,11,12096,1,0,0,0,0,6,0,0,0,0,0,0,0,"Atal'ai Deathwalker - In Combat - Cast 'Fear' (Normal Dungeon)"),
(@ENTRY,0,2,0,6,0,100,3,0,0,0,0,11,12095,7,0,0,0,0,1,0,0,0,0,0,0,0,"Atal'ai Deathwalker - On Just Died - Cast 'Summon Atal'ai Deathwalker's Spirit' (No Repeat) (Normal Dungeon)");

-- Atal'ai High Priest SAI
SET @ENTRY := 5273;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,3600,3600,11,9613,64,0,0,0,0,2,0,0,0,0,0,0,0,"Atal'ai High Priest - In Combat CMC - Cast 'Shadow Bolt' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,40,2,10000,20000,75000,75000,11,12151,1,0,0,0,0,1,0,0,0,0,0,0,0,"Atal'ai High Priest - In Combat - Cast 'Summon Atal'ai Skeleton' (Normal Dungeon)"),
(@ENTRY,0,2,0,14,0,100,2,2500,40,20000,30000,11,12039,1,0,0,0,0,7,0,0,0,0,0,0,0,"Atal'ai High Priest - Friendly At 2500 Health - Cast 'Heal' (Normal Dungeon)"),
(@ENTRY,0,3,0,2,0,100,3,0,30,0,0,11,12040,1,0,0,0,0,1,0,0,0,0,0,0,0,"Atal'ai High Priest - Between 0-30% Health - Cast 'Shadow Shield' (No Repeat) (Normal Dungeon)"),
(@ENTRY,0,4,0,2,0,100,3,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Atal'ai High Priest - Between 0-15% Health - Flee For Assist (No Repeat) (Normal Dungeon)");

-- Ironfur Patriarch SAI
SET @ENTRY := 5274;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,60,0,8000,8000,12000,12000,11,10968,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ironfur Patriarch - In Combat - Cast 'Demoralizing Roar'");

-- Nightmare Scalebane SAI
SET @ENTRY := 5277;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,4500,10900,11900,17100,11,3639,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nightmare Scalebane - In Combat - Cast 'Improved Blocking' (Normal Dungeon)");

-- Nightmare Wyrmkin SAI
SET @ENTRY := 5280;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,3400,4800,11,9591,64,0,0,0,0,2,0,0,0,0,0,0,0,"Nightmare Wyrmkin - In Combat CMC - Cast 'Acid Spit' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,2,9000,14000,23000,27000,11,12098,1,0,0,0,0,6,0,0,0,0,0,0,0,"Nightmare Wyrmkin - In Combat - Cast 'Sleep' (Normal Dungeon)");

-- Nightmare Wanderer SAI
SET @ENTRY := 5283;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,13900,16700,12100,19900,11,11976,0,0,0,0,0,2,0,0,0,0,0,0,0,"Nightmare Wanderer - In Combat - Cast 'Strike' (Normal Dungeon)"),
(@ENTRY,0,1,0,9,0,100,2,0,5,23800,38200,11,12097,33,0,0,0,0,2,0,0,0,0,0,0,0,"Nightmare Wanderer - Within 0-5 Range - Cast 'Pierce Armor' (Normal Dungeon)");

-- Areatrigger SAI
SET @ENTRY := 5284;
DELETE FROM `areatrigger_scripts` WHERE `entry`=@ENTRY;
INSERT INTO `areatrigger_scripts` VALUES (@ENTRY,"SmartTrigger");
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=2;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,2,0,0,46,0,100,0,5284,0,0,0,85,60111,2,0,0,0,0,7,0,0,0,0,0,0,0,"Areatrigger - On Trigger - Cast 'Kill Credit South'");

-- Areatrigger SAI
SET @ENTRY := 5285;
DELETE FROM `areatrigger_scripts` WHERE `entry`=@ENTRY;
INSERT INTO `areatrigger_scripts` VALUES (@ENTRY,"SmartTrigger");
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=2;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,2,0,0,46,0,100,0,5285,0,0,0,85,60112,2,0,0,0,0,7,0,0,0,0,0,0,0,"Areatrigger - On Trigger - Cast 'Kill Credit Central'");

-- Areatrigger SAI
SET @ENTRY := 5286;
DELETE FROM `areatrigger_scripts` WHERE `entry`=@ENTRY;
INSERT INTO `areatrigger_scripts` VALUES (@ENTRY,"SmartTrigger");
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=2;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,2,0,0,46,0,100,0,5286,0,0,0,85,60115,2,0,0,0,0,7,0,0,0,0,0,0,0,"Areatrigger - On Trigger - Cast 'Kill Credit North'");

-- Areatrigger SAI
SET @ENTRY := 5287;
DELETE FROM `areatrigger_scripts` WHERE `entry`=@ENTRY;
INSERT INTO `areatrigger_scripts` VALUES (@ENTRY,"SmartTrigger");
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=2;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,2,0,0,46,0,100,0,5287,0,0,0,85,60117,2,0,0,0,0,7,0,0,0,0,0,0,0,"Areatrigger - On Trigger - Cast 'Kill Credit Northwest'");

-- Hakkari Frostwing SAI
SET @ENTRY := 5291;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,5900,9700,15900,32200,11,8398,0,0,0,0,0,2,0,0,0,0,0,0,0,"Hakkari Frostwing - In Combat - Cast 'Frostbolt Volley' (Normal Dungeon)"),
(@ENTRY,0,1,0,9,0,100,2,0,5,8000,17800,11,5708,0,0,0,0,0,2,0,0,0,0,0,0,0,"Hakkari Frostwing - Within 0-5 Range - Cast 'Swoop' (Normal Dungeon)"),
(@ENTRY,0,2,0,0,0,100,2,6900,16800,16800,29600,11,11831,1,0,0,0,0,1,0,0,0,0,0,0,0,"Hakkari Frostwing - In Combat - Cast 'Frost Nova' (Normal Dungeon)");

-- Ferocious Rage Scar SAI
SET @ENTRY := 5299;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,60,0,15000,15000,45000,45000,11,3147,0,0,0,0,0,5,0,0,0,0,0,0,0,"Ferocious Rage Scar - In Combat - Cast 'Rend Flesh'");

-- Dunemaul Ogre Mage SAI
SET @ENTRY := 5473;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2400,3800,11,9053,64,0,0,0,0,2,0,0,0,0,0,0,0,"Dunemaul Ogre Mage - In Combat CMC - Cast 'Fireball'"),
(@ENTRY,0,1,0,0,0,100,0,4000,9000,18000,26000,11,11436,1,0,0,0,0,2,0,0,0,0,0,0,0,"Dunemaul Ogre Mage - In Combat - Cast 'Slow'"),
(@ENTRY,0,2,0,2,0,100,1,0,30,0,0,11,6742,1,0,0,0,0,1,0,0,0,0,0,0,0,"Dunemaul Ogre Mage - Between 0-30% Health - Cast 'Bloodlust' (No Repeat)");

-- Dunemaul Brute SAI
SET @ENTRY := 5474;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,4000,7000,9000,12000,11,10966,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dunemaul Brute - In Combat - Cast 'Uppercut'");

-- Dunemaul Warlock SAI
SET @ENTRY := 5475;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2400,3800,11,9613,64,0,0,0,0,2,0,0,0,0,0,0,0,"Dunemaul Warlock - In Combat CMC - Cast 'Shadow Bolt'"),
(@ENTRY,0,1,0,0,0,100,0,7000,11000,21000,26000,11,2941,1,0,0,0,0,2,0,0,0,0,0,0,0,"Dunemaul Warlock - In Combat - Cast 'Immolate'"),
(@ENTRY,0,2,0,0,0,100,0,3000,5000,180000,188000,11,6909,1,0,0,0,0,2,0,0,0,0,0,0,0,"Dunemaul Warlock - In Combat - Cast 'Curse of Thorns'");

-- Thistleshrub Dew Collector SAI
SET @ENTRY := 5481;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,500,2500,22000,26000,11,11922,0,0,0,0,0,2,0,0,0,0,0,0,0,"Thistleshrub Dew Collector - In Combat - Cast 'Entangling Roots'");

-- Thistleshrub Rootshaper SAI
SET @ENTRY := 5485;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,500,2500,25000,35000,11,8376,0,0,0,0,0,1,0,0,0,0,0,0,0,"Thistleshrub Rootshaper - In Combat - Cast 'Earthgrab Totem'");

-- Wastewander Rogue SAI
SET @ENTRY := 5615;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,1000,1000,0,0,11,30831,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wastewander Rogue - Out of Combat - Cast 'Stealth'"),
(@ENTRY,0,1,0,0,0,100,0,3000,6000,6000,10000,11,8721,0,0,0,0,0,2,0,0,0,0,0,0,0,"Wastewander Rogue - In Combat - Cast 'Backstab'");

-- Wastewander Thief SAI
SET @ENTRY := 5616;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,6000,9000,7000,12000,11,6713,0,0,0,0,0,2,0,0,0,0,0,0,0,"Wastewander Thief - In Combat - Cast 'Disarm'");

-- Wastewander Shadow Mage SAI
SET @ENTRY := 5617;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,1000,1000,0,0,11,12746,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wastewander Shadow Mage - Out of Combat - Cast 'Summon Voidwalker' (No Repeat)"),
(@ENTRY,0,1,0,0,0,100,0,0,0,2400,3800,11,20825,64,0,0,0,0,2,0,0,0,0,0,0,0,"Wastewander Shadow Mage - In Combat CMC - Cast 'Shadow Bolt'"),
(@ENTRY,0,2,0,0,0,100,0,6000,9000,19000,26000,11,20826,0,0,0,0,0,2,0,0,0,0,0,0,0,"Wastewander Shadow Mage - In Combat - Cast 'Immolate'"),
(@ENTRY,0,3,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wastewander Shadow Mage - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Wastewander Bandit SAI
SET @ENTRY := 5618;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,4000,8000,7000,12000,11,8629,0,0,0,0,0,2,0,0,0,0,0,0,0,"Wastewander Bandit - In Combat - Cast 'Gouge'"),
(@ENTRY,0,1,0,0,0,100,0,3000,6000,6000,10000,11,8721,0,0,0,0,0,2,0,0,0,0,0,0,0,"Wastewander Bandit - In Combat - Cast 'Backstab'");

-- Sandfury Hideskinner SAI
SET @ENTRY := 5645;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,6000,6000,10000,11,7159,0,0,0,0,0,2,0,0,0,0,0,0,0,"Sandfury Hideskinner - In Combat - Cast 'Backstab'");

-- Sandfury Axe Thrower SAI
SET @ENTRY := 5646;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2200,3900,11,10277,64,0,0,0,0,2,0,0,0,0,0,0,0,"Sandfury Axe Thrower - In Combat CMC - Cast 'Throw'"),
(@ENTRY,0,1,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sandfury Axe Thrower - Between 0-15% Health - Flee For Assist (No Repeat)");


-- Sandfury Firecaller SAI
SET @ENTRY := 5647;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2400,3800,11,20823,64,0,0,0,0,2,0,0,0,0,0,0,0,"Sandfury Firecaller - In Combat CMC - Cast 'Fireball'"),
(@ENTRY,0,1,0,0,0,85,0,8000,14000,20000,26000,11,11990,1,0,0,0,0,2,0,0,0,0,0,0,0,"Sandfury Firecaller - In Combat - Cast 'Rain of Fire'"),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sandfury Firecaller - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Sandfury Shadowcaster SAI
SET @ENTRY := 5648;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,2,1000,1000,1800000,1800000,11,20798,1,0,0,0,0,1,0,0,0,0,0,0,0,"Sandfury Shadowcaster - Out of Combat - Cast 'Demon Skin' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,2,0,0,2400,3800,11,12471,64,0,0,0,0,2,0,0,0,0,0,0,0,"Sandfury Shadowcaster - In Combat CMC - Cast 'Shadow Bolt' (Normal Dungeon)"),
(@ENTRY,0,2,0,0,0,100,2,6000,9000,23000,28000,11,14032,1,0,0,0,0,5,0,0,0,0,0,0,0,"Sandfury Shadowcaster - In Combat - Cast 'Shadow Word: Pain' (Normal Dungeon)"),
(@ENTRY,0,3,0,2,0,100,3,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sandfury Shadowcaster - Between 0-15% Health - Flee For Assist (No Repeat) (Normal Dungeon)");

-- Sandfury Blood Drinker SAI
SET @ENTRY := 5649;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,85,2,5500,8000,8000,10000,11,11898,0,0,0,0,0,2,0,0,0,0,0,0,0,"Sandfury Blood Drinker - In Combat - Cast 'Blood Leech' (Normal Dungeon)");

-- Sandfury Witch Doctor SAI
SET @ENTRY := 5650;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,6000,6000,45000,45000,11,11899,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sandfury Witch Doctor - In Combat - Cast 'Healing Ward' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,85,2,3000,3000,35000,35000,11,8264,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sandfury Witch Doctor - In Combat - Cast 'Lava Spout Totem' (Normal Dungeon)"),
(@ENTRY,0,2,0,2,0,100,2,0,50,12000,12000,11,17843,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sandfury Witch Doctor - Between 0-50% Health - Cast 'Flash Heal' (Normal Dungeon)");


-- Death's Head Adept SAI
SET @ENTRY := 4516;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,2400,3800,11,9672,64,0,0,0,0,2,0,0,0,0,0,0,0,"Death's Head Adept - In Combat CMC - Cast 'Frostbolt' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,2,3000,6000,10000,15000,11,113,1,0,0,0,0,5,0,0,0,0,0,0,0,"Death's Head Adept - In Combat - Cast 'Chains of Ice' (Normal Dungeon)"),
(@ENTRY,0,2,0,2,0,100,3,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Death's Head Adept - Between 0-15% Health - Flee For Assist (No Repeat) (Normal Dungeon)");

-- Death's Head Priest SAI
SET @ENTRY := 4517;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,2,1000,1000,1800000,1800000,11,1245,0,0,0,0,0,1,0,0,0,0,0,0,0,"Death's Head Priest - Out of Combat - Cast 'Power Word: Fortitude' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,2,0,0,2400,3800,11,9613,64,0,0,0,0,2,0,0,0,0,0,0,0,"Death's Head Priest - In Combat CMC - Cast 'Shadow Bolt' (No Repeat) (Normal Dungeon)"),
(@ENTRY,0,2,0,2,0,100,2,0,40,14000,20000,11,6063,1,0,0,0,0,1,0,0,0,0,0,0,0,"Death's Head Priest - Between 0-40% Health - Cast 'Heal' (Normal Dungeon)"),
(@ENTRY,0,3,0,2,0,100,3,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Death's Head Priest - Between 0-15% Health - Flee For Assist (No Repeat) (Normal Dungeon)");

-- Burning Blade Augur SAI
SET @ENTRY := 4663;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2400,3800,11,20807,64,0,0,0,0,2,0,0,0,0,0,0,0,"Burning Blade Augur - In Combat CMC - Cast 'Shadow Bolt'"),
(@ENTRY,0,1,0,0,0,100,0,3000,6000,25000,25000,11,6909,32,0,0,0,0,2,0,0,0,0,0,0,0,"Burning Blade Augur - In Combat - Cast 'Curse of Thorns'"),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Burning Blade Augur - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Burning Blade Adept SAI
SET @ENTRY := 4665;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2400,3800,11,19816,64,0,0,0,0,2,0,0,0,0,0,0,0,"Burning Blade Adept - In Combat CMC - Cast 'Fireball'"),
(@ENTRY,0,1,0,2,0,100,1,0,20,0,0,11,6742,0,0,0,0,0,1,0,0,0,0,0,0,0,"Burning Blade Adept - Between 0-20% Health - Cast 'Bloodlust'"),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Burning Blade Adept - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Burning Blade Shadowmage SAI
SET @ENTRY := 4667;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2400,3800,11,20816,64,0,0,0,0,2,0,0,0,0,0,0,0,"Burning Blade Shadowmage - In Combat CMC - Cast 'Shadow Bolt'"),
(@ENTRY,0,1,0,0,0,100,0,5000,12000,18000,26000,11,9657,1,0,0,0,0,1,0,0,0,0,0,0,0,"Burning Blade Shadowmage - In Combat - Cast 'Shadow Shell'"),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Burning Blade Shadowmage - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Burning Blade Summoner SAI
SET @ENTRY := 4668;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,1000,1000,0,0,11,688,0,0,0,0,0,1,0,0,0,0,0,0,0,"Burning Blade Summoner - Out of Combat - Cast 'Summon Imp'"),
(@ENTRY,0,1,0,0,0,100,0,0,0,2400,3800,11,20825,64,0,0,0,0,2,0,0,0,0,0,0,0,"Burning Blade Summoner - In Combat CMC - Cast 'Shadow Bolt'"),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Burning Blade Summoner - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Fallenroot Hellcaller SAI
SET @ENTRY := 4799;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,2400,3800,11,9613,64,0,0,0,0,2,0,0,0,0,0,0,0,"Fallenroot Hellcaller - In Combat CMC - Cast 'Shadow Bolt' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,2,12000,15000,30000,45000,11,8129,1,0,0,0,0,5,0,0,0,0,0,0,0,"Fallenroot Hellcaller - In Combat - Cast 'Mana Burn' (Normal Dungeon)");

-- Blackfathom Tide Priestess SAI
SET @ENTRY := 4802;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4800,11,9672,64,0,0,0,0,2,0,0,0,0,0,0,0,"Blackfathom Tide Priestess - In Combat CMC - Cast 'Frostbolt'"),
(@ENTRY,0,1,0,2,0,100,0,0,30,25000,35000,11,11642,1,0,0,0,0,1,0,0,0,0,0,0,0,"Blackfathom Tide Priestess - Between 0-30% Health - Cast 'Heal'"),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Blackfathom Tide Priestess - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Twilight Aquamancer SAI
SET @ENTRY := 4811;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,3,1000,1000,0,0,11,8372,1,0,0,0,0,1,0,0,0,0,0,0,0,"Twilight Aquamancer - Out of Combat - Cast 'Summon Aqua Guardian' (No Repeat)"),
(@ENTRY,0,1,0,0,0,100,2,0,40,2400,3800,11,9672,64,0,0,0,0,2,0,0,0,0,0,0,0,"Twilight Aquamancer - In Combat CMC - Cast 'Frostbolt' (Normal Dungeon)"),
(@ENTRY,0,2,0,2,0,100,3,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Twilight Aquamancer - Between 0-15% Health - Flee For Assist (No Repeat) (Normal Dungeon)");

-- Twilight Shadowmage SAI
SET @ENTRY := 4813;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,3,1000,1000,0,0,11,12746,1,0,0,0,0,1,0,0,0,0,0,0,0,"Twilight Shadowmage - Out of Combat - Cast 'Summon Voidwalker' (No Repeat) (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,2,0,0,2400,3800,11,9613,64,0,0,0,0,2,0,0,0,0,0,0,0,"Twilight Shadowmage - In Combat CMC - Cast 'Shadow Bolt' (Normal Dungeon)"),
(@ENTRY,0,2,0,0,0,100,2,18000,26000,24000,30000,11,7645,1,0,0,0,0,6,0,0,0,0,0,0,0,"Twilight Shadowmage - In Combat - Cast 'Dominate Mind' (Normal Dungeon)"),
(@ENTRY,0,3,0,2,0,100,3,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Twilight Shadowmage - Between 0-15% Health - Flee For Assist (No Repeat) (Normal Dungeon)");

-- Blindlight Oracle SAI
SET @ENTRY := 4820;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,2400,3800,11,9532,64,0,0,0,0,2,0,0,0,0,0,0,0,"Blindlight Oracle - In Combat CMC - Cast 'Lightning Bolt' (Normal Dungeon)"),
(@ENTRY,0,1,0,14,0,100,2,1000,40,30000,40000,11,6063,1,0,0,0,0,7,0,0,0,0,0,0,0,"Blindlight Oracle - Friendly At 1000 Health - Cast 'Heal' (Normal Dungeon)"),
(@ENTRY,0,2,0,2,0,100,2,0,49,22000,22000,11,8362,1,0,0,0,0,1,0,0,0,0,0,0,0,"Blindlight Oracle - Between 0-50% Health - Cast 'Renew' (Normal Dungeon)"),
(@ENTRY,0,3,0,2,0,100,3,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Blindlight Oracle - Between 0-15% Health - Flee For Assist (No Repeat) (Normal Dungeon)");

-- Lady Sarevess SAI
SET @ENTRY := 4831;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,3,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sarevess - On Aggro - Say Line 0 (No Repeat) (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,2,0,0,2300,3900,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,"Lady Sarevess - In Combat CMC - Cast 'Shoot' (Normal Dungeon)"),
(@ENTRY,0,2,0,0,0,100,2,9000,12000,12000,15000,11,8435,1,0,0,0,0,2,0,0,0,0,0,0,0,"Lady Sarevess - In Combat - Cast 'Forked Lightning' (Normal Dungeon)"),
(@ENTRY,0,3,0,0,0,100,2,6000,8500,9000,13000,11,865,1,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sarevess - In Combat - Cast 'Frost Nova' (Normal Dungeon)"),
(@ENTRY,0,4,0,0,0,100,2,7000,9000,9000,13000,11,246,33,0,0,0,0,6,0,0,0,0,0,0,0,"Lady Sarevess - In Combat - Cast 'Slow' (Normal Dungeon)"),
(@ENTRY,0,5,0,6,0,100,3,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sarevess - On Just Died - Say Line 1 (Normal Dungeon)");

-- Earthcaller Halmgar SAI
SET @ENTRY := 4842;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,3,1000,1000,0,0,11,8270,1,0,0,0,0,1,0,0,0,0,0,0,0,"Earthcaller Halmgar - Out of Combat - Cast 'Summon Earth Rumbler' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,2,0,0,2400,3800,11,9532,64,0,0,0,0,2,0,0,0,0,0,0,0,"Earthcaller Halmgar - In Combat CMC - Cast 'Lightning Bolt' (Normal Dungeon)"),
(@ENTRY,0,2,0,0,0,100,2,0,2000,50000,60000,11,2484,1,0,0,0,0,1,0,0,0,0,0,0,0,"Earthcaller Halmgar - In Combat - Cast 'Earthbind Totem' (Normal Dungeon)"),
(@ENTRY,0,3,0,2,0,100,3,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Earthcaller Halmgar - Between 0-15% Health - Flee For Assist (No Repeat) (Normal Dungeon)");

-- Shadowforge Surveyor SAI
SET @ENTRY := 4844;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,1000,1000,1800000,1800000,11,12544,1,0,0,0,0,1,0,0,0,0,0,0,0,"Shadowforge Surveyor - Out of Combat - Cast 'Frost Armor' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,0,0,0,3400,5000,11,9053,64,0,0,0,0,2,0,0,0,0,0,0,0,"Shadowforge Surveyor - In Combat CMC - Cast 'Fireball'"),
(@ENTRY,0,2,0,0,0,100,0,10700,20100,20300,22600,11,11831,1,0,0,0,0,1,0,0,0,0,0,0,0,"Shadowforge Surveyor - In Combat - Cast 'Frost Nova'"),
(@ENTRY,0,3,0,2,0,100,3,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Shadowforge Surveyor - Between 0-15% Health - Flee For Assist (No Repeat) (Normal Dungeon)");

-- Shadowforge Darkcaster SAI
SET @ENTRY := 4848;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,2400,3800,11,9081,64,0,0,0,0,2,0,0,0,0,0,0,0,"Shadowforge Darkcaster - In Combat CMC - Cast 'Shadow Bolt Volley' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,2,9000,13000,11000,15000,11,15800,1,0,0,0,0,5,0,0,0,0,0,0,0,"Shadowforge Darkcaster - In Combat - Cast 'Mana Burn' (Normal Dungeon)"),
(@ENTRY,0,2,0,2,0,100,3,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Shadowforge Darkcaster - Between 0-15% Health - Flee For Assist (No Repeat) (Normal Dungeon)");

-- Stonevault Geomancer SAI
SET @ENTRY := 4853;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,2400,3800,11,9053,64,0,0,0,0,2,0,0,0,0,0,0,0,"Stonevault Geomancer - In Combat CMC - Cast 'Fireball' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,2,4000,8000,30000,38000,11,10452,1,0,0,0,0,2,0,0,0,0,0,0,0,"Stonevault Geomancer - In Combat - Cast 'Flame Buffet' (Normal Dungeon)"),
(@ENTRY,0,2,0,2,0,100,3,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Stonevault Geomancer - Between 0-15% Health - Flee For Assist (No Repeat) (Normal Dungeon)");

-- Grimlok SAI
SET @ENTRY := 4854;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,3,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grimlok - On Aggro - Say Line 0 (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,2,0,0,2400,3800,11,9532,64,0,0,0,0,2,0,0,0,0,0,0,0,"Grimlok - In Combat CMC - Cast 'Lightning Bolt' (Normal Dungeon)"),
(@ENTRY,0,2,0,0,0,100,2,8000,12000,21000,31000,11,8292,0,0,0,0,0,2,0,0,0,0,0,0,0,"Grimlok - In Combat - Cast 'Chain Bolt' (Normal Dungeon)"),
(@ENTRY,0,3,0,0,0,100,3,5000,7000,0,0,11,8143,1,0,0,0,0,1,0,0,0,0,0,0,0,"Grimlok - In Combat - Cast 'Tremor Totem' (No Repeat) (Normal Dungeon)"),
(@ENTRY,0,4,0,2,0,100,2,0,50,25000,35000,11,11892,33,0,0,0,0,5,0,0,0,0,0,0,0,"Grimlok - Between 0-50% Health - Cast 'Shrink' (Normal Dungeon)"),
(@ENTRY,0,5,0,2,0,100,2,0,30,30000,35000,11,6742,1,0,0,0,0,1,0,0,0,0,0,0,0,"Grimlok - Between 0-30% Health - Cast 'Bloodlust' (Normal Dungeon)"),
(@ENTRY,0,6,0,5,0,100,3,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grimlok - On Killed Unit - Say Line 2 (No Repeat) (Normal Dungeon)");

-- Stonevault Cave Hunter SAI
SET @ENTRY := 4856;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2800,4700,11,10277,64,0,0,0,0,2,0,0,0,0,0,0,0,"Stonevault Cave Hunter - In Combat CMC - Cast 'Throw'"),
(@ENTRY,0,1,0,0,0,100,0,5900,13200,20300,26700,11,6533,0,0,0,0,0,2,0,0,0,0,0,0,0,"Stonevault Cave Hunter - In Combat - Cast 'Net'"),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Stonevault Cave Hunter - Between 0-15% Health - Flee For Assist (No Repeat)");


UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='' WHERE `entry`=8696;
DELETE FROM `smart_scripts` WHERE `entryorguid` =8696 and `source_type`=0;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(8696,0,0,0,62,0,100,0,1443,2,0,0,85,13029,0,0,0,0,0,7,0,0,0,0,0,0,0,'Henry Stern - On Gossip Select - Cast Spell Goldthorn Tea'),
(8696,0,1,0,62,0,100,0,1443,3,0,0,85,13030,0,0,0,0,0,7,0,0,0,0,0,0,0,'Henry Stern - On Gossip Select - Cast Spell Major Trolls Blood Potion'),
(8696,0,2,0,38,0,100,0,1,1,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Henry Stern - On Data Set 1 1 - Set Phase 2'),
(8696,0,3,0,1,2,100,1,3000,3000,0,0,1,0,0,0,0,0,0,12,1,0,0,0,0,0,0,'Henry Stern - OOC (Phase 2) - Say (No Repeat)');

DELETE FROM `creature_text` WHERE `entry`=8696;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES 
(8696, 0, 0, 'Thank again, $n.  Now I''ll just wait here until it''s safe to leave.', 12, 0, 100, 0, 0, 0, 'Henry Stern');

UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI',`ScriptName`='' WHERE `entry`=157818;
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid`=157818;

INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(157818,1,0,1,70,0,100,0,2,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Holding Pen - On State Changed - Store target'),
(157818,1,1,2,61,0,100,0,0,0,0,0,100,1,0,0,0,0,0,19,8696,0,0,0,0,0,0, 'Holding Pen - On State Changed - Send targetlist to Henry Stern'),
(157818,1,2,0,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,8696,0,0,0,0,0,0,'Holding Pen - On State Changed - Set data 1 1 on Henry Stern');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry` =8696;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=1443;

INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,1443,0,0,0,7,0,185,1,0,0,0,'','Show gossip option only if player has cooking'),
(15,1443,0,0,0,25,0,13028,0,0,1,0,'','Show gossip option only if player does not already know goldthorn tea recipe'),
(15,1443,0,0,0,7,0,185,180,0,1,0,'','Show Gossip only if player does not have at least 180 skill in cooking'),
(15,1443,1,0,0,7,0,171,1,0,0,0,'','Show gossip option only if player has Alchemy'),
(15,1443,1,0,0,25,0,3451,0,0,1,0,'','Show gossip option only if player does not already know Major Trolls Blood Elixir'),
(15,1443,1,0,0,7,0,171,175,0,1,0,'','Show gossip only if player does not have at least 175 skill in Alchemy'),
(15,1443,2,0,0,7,0,185,1,0,0,0,'','Show gossip option only if player has cooking'),
(15,1443,2,0,0,25,0,13028,0,0,1,0,'','Show gossip option only if player does not already know goldthorn tea recipe'),
(15,1443,2,0,0,7,0,185,180,0,0,0,'','Show Gossip only if player has at least 180 skill in cooking'),
(15,1443,3,0,0,7,0,171,1,0,0,0,'','Show gossip option only if player has Alchemy'),
(15,1443,3,0,0,25,0,3451,0,0,1,0,'','Show gossip option only if player does not already know Major Trolls Blood Elixir'),
(15,1443,3,0,0,7,0,171,175,0,0,0,'','Show gossip only if player has at least 175 skill in Alchemy');

DELETE FROM `gossip_menu_option` WHERE `menu_id`=1443;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES 
(1443, 0, 0, 'You can cook?  So can I!  Is there a recipe you can teach me?',  1, 1, 1501, 0, 0, 0, NULL),
(1443, 1, 0, 'You''re an alchemist?  So am I.  Perhaps you can teach me what you know...',  1, 1, 1502, 0, 0, 0, NULL),
(1443, 2, 0, 'You can cook?  So can I!  Is there a recipe you can teach me?',  1, 1, 1444, 0, 0, 0, NULL),
(1443, 3, 0, 'You''re an alchemist?  So am I.  Perhaps you can teach me what you know...',  1, 1, 1442, 0, 0, 0, NULL);


SET @NPC := 45211;

-- SAI for Ulfang/Sage Mistwalker/Watcher Moonleaf
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=24261;
UPDATE `creature_template` SET `AIName`='SmartAI',`npcflag`=3 WHERE `entry` IN(24186, 24273);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN(24186,24261,24273) AND `source_type`=0;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(24261, 0, 0, 0, 19, 0, 100, 0, 11326, 0, 0, 0, 85, 50102, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Ulfang - On Quest Accept Alpha Worg - Invoker Cast Ulfang: Force Cast Player Eyes of the Eagle'),
(24261, 0, 1, 0, 19, 0, 100, 0, 11324, 0, 0, 0, 85, 50102, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Ulfang - On Quest Accept Alpha Worg - Invoker cast Ulfang: Force Cast Player Eyes of the Eagle'),
(24273, 0, 0, 1, 20, 0, 100, 0, 11326, 0, 0, 0, 28, 50102, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Watcher Moonleaf - On Quest Reward Alpha Worg - Remove Aura Ulfang: Force Cast Player Eyes of the Eagle'),
(24273, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 28, 43060, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Watcher Moonleaf - Linked with Previous Event - Remove Aura Eyes of the Eagle'),
(24273, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 28, 43369, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Watcher Moonleaf - Linked with Previous Event - Remove Aura Worg Disguise'),
(24273, 0, 3, 4, 62, 0, 100, 0, 8918, 0, 0, 0, 85, 43379, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Watcher Moonleaf - On Gossip Option Select - Invoker Cast The Cleansing: Create Worg Disguise'),
(24273, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Watcher Moonleaf - Linked with Previous Event - Close Gossip'),
(24186, 0, 0, 1, 20, 0, 100, 0, 11324, 0, 0, 0, 28, 50102, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Sage Mistwalker - On Quest Reward Alpha Worg - Remove Aura Ulfang: Force Cast Player Eyes of the Eagle'),
(24186, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 28, 43060, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Sage Mistwalker - Linked with Previous Event - Remove Aura Eyes of the Eagle'),
(24186, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 28, 43369, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Sage Mistwalker - Linked with Previous Event - Remove Aura Worg Disguise'),
(24186, 0, 3, 4, 62, 0, 100, 0, 8908, 0, 0, 0, 85, 43379, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Sage Mistwalker - On Gossip Option Select - Invoker Cast The Cleansing: Create Worg Disguise'),
(24186, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Sage Mistwalker - Linked with Previous Event - Close Gossip');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup` IN(8918,8908);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 8918, 0, 0, 0, 8, 0, 11322, 0, 0, 0, 0, 0, '', 'Gossip Option requires The Cleansing rewarded'),
(15, 8918, 0, 0, 0, 2, 0, 33618, 1, 0, 1, 0, 0, '', 'Gossip Option requires Player does not have worg disguise'),
(15, 8918, 0, 0, 0, 8, 0, 11326, 0, 0, 1, 0, 0, '', 'Gossip Option requires Alpha Worg not rewarded'),
(15, 8908, 0, 0, 0, 8, 0, 11317, 0, 0, 0, 0, 0, '', 'Gossip Option requires The Cleansing rewarded'),
(15, 8908, 0, 0, 0, 2, 0, 33618, 1, 0, 1, 0, 0, '', 'Gossip Option requires Player does not have worg disguise'),
(15, 8908, 0, 0, 0, 8, 0, 11324, 0, 0, 1, 0, 0, '', 'Gossip Option requires Alpha Worg not rewarded');


DELETE FROM `gossip_menu_option` WHERE `menu_id` IN(8918,8908);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`,  `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES 
(8918, 0, 0, 'I have misplaced my worg disguise.',  1, 1, 0, 0, 0, 0, ''),
(8908, 0, 0, 'I have misplaced my worg disguise.',  1, 1, 0, 0, 0, 0, '');

-- Pathing for Garwal Entry: 24277
SET @PATH := @NPC * 10;
DELETE FROM `creature_template_addon` WHERE `entry`=24277;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `bytes1`, `bytes2`, `auras`) VALUES
(24277, @PATH, 0x10000, 0x1, '43062'); -- Alpha Worg: Garwal's Invisibility is in spell_DBC but does not work so npc is friendly spell 43060 makes this creature hostile to player and is also the see invisibilty spell 

DELETE FROM `creature` WHERE `guid` = @NPC;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`MovementType`) VALUES
(@NPC, 24277,571,1,1,2724.867,-2996.879,91.80984,6.232399,120,0,2);

-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry`=24277;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(24277,0,0, 'Enough of this charade!',12,0,100,0,0,0, 'Garwal');

-- SAI for Garwal
SET @ENTRY  := 24277;
SET @SPELL1 := 6749;  -- Wide Swipe
SET @SPELL2 := 13443; -- Rend
SET @SPELL3 := 31279; -- Swipe
SET @SPELL4 := 50047; -- Broken Bone
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,25,0,100,0,0,0,0,0,3,0,22233,0,0,0,0,1,0,0,0,0,0,0,0, 'Garwal - On Reset - Set Model'),
(@ENTRY,0,1,2,2,0,100,1,0,50,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Garwal - On HP@50% - Say text'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,3,0,26791,0,0,0,0,1,0,0,0,0,0,0,0, 'Garwal - On HP@50% - Set Model'),
-- Combat (Needs Timing)
(@ENTRY,0,3,0,9,0,100,0,0,5,13000,18000,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Garwal - Combat - Cast Spell Wide Swipe'),  -- Duration 5 sec 
(@ENTRY,0,4,0,9,0,100,0,0,5,21000,31000,11,@SPELL2,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Garwal - Combat - Cast Spell Rend'),        -- Duration 15 sec
(@ENTRY,0,5,0,9,0,100,0,0,5,3000,7000,11,@SPELL3,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Garwal - Combat - Cast Spell Swipe'),
(@ENTRY,0,7,0,0,0,100,0,0,5,15000,26000,11,@SPELL4,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Garwal - Combat - Cast Spell Broken Bone'); -- Duration 8 sec

DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2724.867,-2996.879,91.80984,0,0,100,0),
(@PATH,2,2751.252,-3001.074,89.98224,0,0,100,0),
(@PATH,3,2779.356,-3012.149,91.01633,0,0,100,0),
(@PATH,4,2790.117,-3024.486,94.64133,0,0,100,0),
(@PATH,5,2793.189,-3046.271,97.17670,0,0,100,0);




-- Quest 9667 "Saving Princess Stillpine" 24099
-- Princess Stillpine Cage SAI
SET @ENTRY  := 181928; -- GO entry
SET @ENTRY2 := 17682; -- NPC entry

UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@ENTRY*100;

INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,1,70,0,100,0,2,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Princess Stillpine Cage - On StateChange 0 - Store target'),
(@ENTRY,1,1,2,61,0,100,0,0,0,0,0,100,1,0,0,0,0,0,19,@ENTRY2,0,0,0,0,0,0, 'Princess Stillpine Cage - On StateChange 0 - Send target'),
(@ENTRY,1,2,3,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,@ENTRY2,0,0,0,0,0,0,'Princess Stillpine Cage - On StateChange 0 - Set data 0 1 for entry 17682'),
(@ENTRY,1,3,0,61,0,100,0,0,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Princess Stillpine Cage - Run Script - Quest credit'),
(@ENTRY*100,9,0,0,0,0,100,0,5000,5000,0,0,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Princess Stillpine Cage - Script - Reset GO');

-- Princess Stillpine SAI
SET @SPELL := 31003;  -- Opening Princess Stillpine's Cage
UPDATE `creature` SET `spawntimesecs`=120 WHERE `guid`=63442;
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY2;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY2;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@ENTRY2*100;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY2,0,0,1,38,0,100,0,0,1,0,0,80,@ENTRY2*100,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Princess Stillpine - On dataset - run script'),
(@ENTRY2,0,1,0,61,0,100,0,0,0,0,0,33,@ENTRY2,0,0,0,0,0,12,1,0,0,0,0,0,0, 'Princess Stillpine - On dataset - run script'),
(@ENTRY2,0,2,0,25,0,100,0,0,0,0,0,82,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Princess Stillpine - On reset - add questgiver flag'),
(@ENTRY2,0,3,0,40,0,100,0,16,@ENTRY2,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Princess Stillpine - On Reached WP15 - Despawn'),
(@ENTRY2*100,9,0,0,0,0,100,0,100,100,100,100,83,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Princess Stillpine - Script - Remove questgiver flag'),
(@ENTRY2*100,9,1,0,0,0,100,0,2000,2000,2000,2000,1,0,0,0,0,0,0,12,1,0,0,0,0,0,0,'Princess Stillpine - Script - Say 0'),
(@ENTRY2*100,9,2,0,0,0,100,0,3000,3000,3000,3000,53,1,@ENTRY2,0,0,0,0,1,0,0,0,0,0,0,0,'Princess Stillpine - Script - Load path');

-- Waypoints for Princess Stillpine (From sniff)
DELETE FROM `waypoints` WHERE `entry`=@ENTRY2;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES

(@ENTRY2,1,-2548.469, -12304.25, 13.79256, 'Princess Stillpine'),
(@ENTRY2,2,-2548.579, -12304.57, 13.88506, 'Princess Stillpine'),
(@ENTRY2,3,-2550.079, -12304.57, 13.63506, 'Princess Stillpine'),
(@ENTRY2,4,-2555.079, -12305.82, 13.13506, 'Princess Stillpine'),
(@ENTRY2,5,-2564.135, -12308.1, 12.65816, 'Princess Stillpine'),
(@ENTRY2,6,-2600.635, -12304.1, 11.90816, 'Princess Stillpine'),
(@ENTRY2,7,-2600.886, -12303.71, 11.80368, 'Princess Stillpine'),
(@ENTRY2,8,-2602.636, -12303.71, 11.55368, 'Princess Stillpine'),
(@ENTRY2,9,-2612.636, -12299.71, 12.05368, 'Princess Stillpine'),
(@ENTRY2,10,-2614.386, -12299.46, 12.55368, 'Princess Stillpine'),
(@ENTRY2,11,-2617.386, -12298.21, 13.05368, 'Princess Stillpine'),
(@ENTRY2,12,-2620.136, -12297.21, 13.55368, 'Princess Stillpine'),
(@ENTRY2,13,-2626.813, -12294.75, 13.78559, 'Princess Stillpine'),
(@ENTRY2,14,-2635.313, -12289.5, 13.03559, 'Princess Stillpine'),
(@ENTRY2,15,-2647.063, -12282.5, 12.53559, 'Princess Stillpine'),
(@ENTRY2,16,-2657.313, -12276.25, 12.03559, 'Princess Stillpine');

-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry` IN(@ENTRY2,17702) AND `groupid`=0;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY2,0,0, 'Thank you for saving me, $N! My father will be delighted!',12,0,100,0,0,0, 'Princess Stillpine'),
(17702, 0, 0, 'Face the wrath of Bristlelimb!', 14, 0, 100, 0, 0, 0, 'High Chief Bristlelimb');

UPDATE `creature_template` SET `ainame`='SmartAI', `scriptname`='' WHERE `entry` IN(17320,17321,17702);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN(17320,17321,17702) AND `source_type`=0;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(17320,0,0,0,0,0,100,0,5000,15000,60000,75000,11,32968,0,0,0,0,0,1,0,0,0,0,0,0,0,'Bristlelimb Shaman - IC - Cast Scorching Totem'),
(17320,0,1,0,0,0,100,0,0,3000,11000,15000,11,32967,0,0,0,0,0,2,0,0,0,0,0,0,0,'Bristlelimb Shaman - IC - Cast Flame Shock'),
(17320,0,2,0,6,0,100,0,0,0,0,0,45,1,1,0,0,0,0,10,84085,17702,0,0,0,0,0,'Bristlelimb Shaman - On Death - Set Data High Chief Bristlelimb'),
(17321,0,0,0,9,0,100,0,0,5,3000,7000,11,11976,0,0,0,0,0,2,0,0,0,0,0,0,0,'Bristlelimb Warrior - IC - Cast Strike'),
(17321,0,1,0,6,0,100,0,0,0,0,0,45,1,1,0,0,0,0,10,84085,17702,0,0,0,0,0,'Bristlelimb Warriot - On Death - Set Data High Chief Bristlelimb'),
(17702,0,0,1,25,0,100,0,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'High Chief Bristlelimb - On Reset - Set Invisible'),
(17702,0,1,0,61,0,100,0,0,0,0,0,18,768,0,0,0,0,0,1,0,0,0,0,0,0,0,'High Chief Bristlelimb - On Reset - Set Unit Flags Immune to NPC/PC'),
(17702,0,2,3,38,0,20,0,1,1,0,0,47,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'High Chief Bristlelimb - On Data Set - Set Visible'),
(17702,0,3,4,61,0,100,0,0,0,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,'High Chief Bristlelimb - On Data set - Remove Unit Flags Immune to NPC/PC'),
(17702,0,4,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'High Chief Bristlelimb - On Data set - Say'),
(17702,0,5,0,4,0,100,0,0,0,0,0,11,20753,0,0,0,0,0,1,0,0,0,0,0,0,0,'High Chief Bristlelimb - On Agro - Cast Demoralizing Roar'),
(17702,0,6,0,9,0,100,0,0,5,3000,5000,11,15793,0,0,0,0,0,2,0,0,0,0,0,0,0,'High Chief Bristlelimb - IC - Cast Maul');


DELETE FROM `smart_scripts` WHERE `entryorguid`=17240 AND `source_type`=0 AND `id`=2;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(17240, 0, 2, 0, 64, 0, 100, 0, 0, 0, 0, 0, 33, 17240, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Admiral Odesyus - On Gossip Hello - Quest Credit \'The Kessel Run\'');


UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=4721;
DELETE FROM `smart_scripts` WHERE `entryorguid`=4721 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=472100 AND `source_type`=9;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(4721, 0, 0, 0,68, 0, 100, 0, 25, 0, 0, 0, 53, 0, 4721, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Zangen Stonehoof - On Event Start - Start WP'),
(4721, 0, 1, 2,40, 0, 100, 0, 1, 4721, 0, 0, 54, 25000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Zangen Stonehoof - On Reached WP1 - Pause WP'),
(4721, 0, 2, 3,61, 0, 100, 0, 0, 0, 0, 0, 80, 472100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Zangen Stonehoof - Linked with Previous Event - Run Script'),
(4721, 0, 3, 0,61, 0, 100, 0, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Zangen Stonehoof - Linked with Previous Event - Set Phase 2'),
(4721, 0, 4, 5,40, 0, 100, 0, 2, 4721, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 4.74729, 'Zangen Stonehoof - On Reached WP2 - Set Orientation'),
(4721, 0, 5, 0,61, 0, 100, 0, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Zangen Stonehoof - Linked with Previous Event - Set Phase 1'),
(4721, 0, 6, 0,1, 2, 100, 0, 0, 0, 3125, 3125, 4, 6675, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Zangen Stonehoof - OOC (Phase 2) - Play Sound'),
(472100, 9, 0, 0,0, 0, 100, 0, 7000, 7000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Zangen Stonehoof - Script - Say'),
(472100, 9, 1, 0,0, 0, 100, 0, 3000, 3000, 0, 0, 11, 21392, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Zangen Stonehoof - Script - Cast Fire Channeling'),
(472100, 9, 2, 0,0, 0, 100, 0, 11000, 11000, 0, 0, 9, 0, 0, 0, 0, 0, 0, 14, 20556, 178571, 0, 0, 0, 0, 0, 'Zangen Stonehoof - Script - Activate Bonfire'),
(472100, 9, 3, 0,0, 0, 100, 0, 1000, 1000, 0, 0, 28, 21392, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Zangen Stonehoof - Script - Remove Aura Fire Channeling');

DELETE FROM `creature_text` WHERE `entry`=4721;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(4721, 0, 0, 'The Earth Mother watch over us; under cover of the night as in the day. Let this fire illuminate both our bodies and spirits and remind us of our honored ancestors, who are ever present and guiding our way.', 12, 3, 100, 1, 0, 0, 'Zangen Stonehoof');

DELETE FROM `waypoints` WHERE `entry` =4721;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(4721, 1, -1207.747, -59.47412, 158.3598, 'Zangen Stonehoof'),
(4721, 2, -1207.755, -57.32731, 158.6144, 'Zangen Stonehoof');

SET @Guid := 84989;

UPDATE `creature_template` SET `ainame`='SmartAI', `scriptname`='' WHERE `entry` IN(16514,16516, 17071);

DELETE FROM `smart_scripts` WHERE `entryorguid`=16522 AND `source_type`=0 AND `id` IN(12,13);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN(16514,17071) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=-@Guid AND `source_type`=0;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(16522, 0, 12, 0, 4, 0, 100, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Surveyor Candress - On Agro - Say'),
(16522, 0, 13, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 31515, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Surveyor Candress - On Reset - Cast Red Beam'),
(16514, 0, 0, 0, 20, 0, 100, 0, 9294, 0, 0, 0, 1, 0, 5000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Botanist Taerix - On Quest Reward - Say Line 1'),
(16514, 0, 1, 2, 52, 0, 100, 0, 0, 16514, 0, 0, 1, 0, 5000, 0, 0, 0, 0, 19, 20227, 0, 0, 0, 0, 0, 0, 'Botanist Taerix - On Text Over - Say Line 1 (Apprentice Tedon)'),
(16514, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 14, 21645, 181370, 0, 0, 0, 0, 0, 'Botanist Taerix - On Text Over - Activate Volatile mutation cage'),
(16514, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 10, @Guid, 16516, 0, 0, 0, 0, 0, 'Botanist Taerix - On Text Over - Set Data on Volatile Mutation'),
(16514, 0, 4, 5, 52, 0, 100, 0, 0, 20227, 0, 0, 1, 1, 5000, 0, 0, 0, 0, 19, 20227, 0, 0, 0, 0, 0, 0, 'Botanist Taerix - On Text Over - Say Line 1 (Apprentice Tedon)'),
(16514, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 45, 2, 2, 0, 0, 0, 0, 10, @Guid, 16516, 0, 0, 0, 0, 0, 'Botanist Taerix - On Text Over - Set Data on Volatile Mutation'),
(16514, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 5, 133, 0, 0, 0, 0, 0, 19, 20227, 0, 0, 0, 0, 0, 0, 'Botanist Taerix - On Text Over - Play emote STATE_USESTANDING_NOSHEATHE(Apprentice Tedon)'),
(16514, 0, 7, 8, 52, 0, 100, 0, 1, 20227, 0, 0, 5, 30, 0, 0, 0, 0, 0, 19, 20227, 0, 0, 0, 0, 0, 0, 'Botanist Taerix - On Text Over - Play emote STATE_NONE (Apprentice Tedon)'),
(16514, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 2, 30000, 0, 0, 0, 0, 19, 20227, 0, 0, 0, 0, 0, 0, 'Botanist Taerix - On Text Over - Say Line 1 (Apprentice Tedon)'),
(17071, 0, 0, 0, 20, 0, 100, 0, 9294, 0, 0, 0, 1, 0, 5000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Botanist Taerix - On Quest Reward - Say Line 1'),
(-@Guid, 0, 0, 0, 38, 0, 100, 0, 1, 1, 0, 0, 46, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Volatile Mutation - On Data Set - Move out of cage'),
(-@Guid, 0, 1, 2, 38, 0, 100, 0, 2, 2, 0, 0, 11, 35068, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Volatile Mutation - On Data Set - Cast Quest - Volatile Mutation Transformation'),
(-@Guid, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 59, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Volatile Mutation - On Data Set - Cast Quest - Set Run'),
(-@Guid, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 46, 50, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Volatile Mutation - On Data Set - Cast Quest - Move'),
(-@Guid, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 10000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Volatile Mutation - On Data Set - Despawn');

UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI', `ScriptName`='' WHERE`entry`IN(181433);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (181433);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(181433, 1, 0 ,0,70, 0, 100, 0, 2, 0, 0,0,1,0,0,0,0,0,0,19,20239,0,0,0, 0, 0, 0, 'Irradiated Power Crystal - On State Changed - Say Line 1 (Neutralizing Emote Placeholder)');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=31515;

INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(13, 1, 31515, 0, 0, 31, 0, 3, 17947, 0, 0, 0, 0, '', 'Spell Red Beam targets Red Crystal Bunny');

DELETE FROM `creature_text` WHERE `entry` IN(16522, 20239, 16514,20227);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(16522, 0, 0, 'You''ll not take me alive, scum!', 12, 0, 100, 0, 0, 0, 'Surveyor Candress'),
(20239, 0, 0, 'As the neutralizing agent mixes into the waters of the lake, the water that was irradiated by the crystal seems to clear.', 16, 0, 100, 0, 0, 0, 'Neutralizing Emote Placeholder'),
(16514, 0, 0, 'Tedon, go ahead and try the neutralizing agent on the mutated creature.', 12, 0, 100, 1, 0, 0, 'Botanist Taerix'),
(20227, 0, 0, 'Looks like it''s time to let you out of this cage.', 12, 0, 100, 1, 0, 0, 'Apprentice Tedon'),
(20227, 1, 0, 'Now, to put the neutralizing agent on it...', 12, 0, 100, 0, 0, 0, 'Apprentice Tedon'),
(20227, 2, 0, 'Success!', 12, 0, 100, 71, 0, 0, 'Apprentice Tedon');

DELETE FROM `creature` WHERE `guid`=@Guid;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`,  `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@Guid, 16516, 530, 1, 1, -4059.076, -13711.39, 73.58478, 5.88176, 120, 0, 0); -- 16516 (Area: -1)


DELETE FROM `creature_text` WHERE `entry` IN(26531,24525);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(26531, 0, 0, '%s is entranced by the sun''s reflection on Zeh''gehn''s knife.', 16, 0, 100, 0, 0, 0, 'Mesmerized Frog'),
(26531, 1, 0, '%s croaks eagerly while directing its gaze to the docked ship.', 16, 0, 100, 0, 0, 0, 'Mesmerized Frog'),
(24525, 0, 0, 'Ku into me carver, ye ugly croaker!  Ku and show me who dares cross me brethren!', 12, 0, 100, 0, 0, 0, 'Zeh''gehn'),
(24525, 1, 0, 'Dis a rankin'' set, mon, no scurvy dog gonna kass-kass me buckos an'' walk aweh! ', 12, 0, 100, 0, 0, 0, 'Zeh''gehn');

UPDATE `creature_template` SET AIName='SmartAI' WHERE `entry`=24525;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=24525 AND `source_type`=0);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=2452500 AND `source_type`=9);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(24525, 0, 0, 0, 20, 0, 100, 0, 11476, 0, 0, 0, 80, 2452500, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Zeh''gehn - On Quest reward A Carver and a Croaker  - Run Script'),
(2452500, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 26531, 1, 30000, 0, 0, 0, 8, 0, 0, 0, -133.458, -3545.554, 2.894682, 4.520403, 'Zeh''gehn - Script  - Spawn Mesmerized Frog'),
(2452500, 9, 1, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Zeh''gehn - Script - Say Line 1'),
(2452500, 9, 2, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 19, 26531, 0, 0, 0, 0, 0, 0, 'Zeh''gehn - Script - Say Line 1 (Mesmerized Frog)'),
(2452500, 9, 3, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 19, 26531, 0, 0, 0, 0, 0, 0, 'Zeh''gehn - Script - Say Line 2 (Mesmerized Frog)'),
(2452500, 9, 4, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Zeh''gehn - Script - Say Line 2');

UPDATE `creature_template` SET `AIName`='SmartAI',`npcflag`=16777216 WHERE `entry`=26503;
DELETE FROM `smart_scripts` WHERE `entryorguid`=26503;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(26503,0,1,2,73,0,100,0,47121,0,0,0,56,35803,1,0,0,0,0,7,0,0,0,0,0,0,0,'Scalawag Frog - On Spellclick - Add Item Scalawag Frog'),
(26503,0,2,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Scalawag Frog - Linked with Previous Event - Despawn');

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=26503;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(26503, 47121, 0, 0);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=26503;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(18, 26503, 47121, 0, 0, 9, 0, 11476, 0, 0, 0, 0, 0, '', 'Required quest active for spellclick');

UPDATE `smart_scripts` SET `target_type`=1, `target_param1`=0 WHERE  `entryorguid`=36913 AND `source_type`=0 AND `id`=2;


SET @ENTRY := 8612;

-- Add missing gossip (by Malcrom)
DELETE FROM `gossip_menu` WHERE `entry`=1405;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (1405,2039);
UPDATE `creature_template` SET `gossip_menu_id`=1405 WHERE entry=@ENTRY;

-- SAI (by Rushor)
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,64,0,100,0,0,0,0,0,33,8612,0,0,0,0,0,7,0,0,0,0,0,0,0,"Screecher Spirit - On Gossip Hello - Quest Credit 'Screecher Spirits'"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,18,33554432,0,0,0,0,0,1,0,0,0,0,0,0,0,"Screecher Spirit - On Gossip Hello - Set Flag Not Selectable"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,41,3000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Screecher Spirit - On Gossip Hello - Despawn In 3000 ms");

-- Argus Shadow Mage SAI
SET @ENTRY := 2318;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Argus Shadow Mage - On Aggro - Set Event Phase 1"),
(@ENTRY,0,1,0,0,1,100,0,0,0,3500,4900,11,20816,64,0,0,0,0,2,0,0,0,0,0,0,0,"Argus Shadow Mage - In Combat CMC - Cast 'Shadow Bolt' (Phase 1)"),
(@ENTRY,0,2,0,2,0,100,1,0,30,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Argus Shadow Mage - Between 0-30% Health - Set Event Phase 2"),
(@ENTRY,0,3,4,0,2,100,1,0,0,0,0,11,4063,1,0,0,0,0,1,0,0,0,0,0,0,0,"Argus Shadow Mage - In Combat - Cast 'Argus Shadow Mage Transform' (Phase 2) (No Repeat)"),
(@ENTRY,0,4,5,61,2,100,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Argus Shadow Mage - In Combat - Enable Combat Movement"),
(@ENTRY,0,5,0,61,2,100,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Argus Shadow Mage - In Combat - Say Line 0"),
(@ENTRY,0,6,0,23,2,100,0,4063,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Argus Shadow Mage - Missing Aura - Set Event Phase 1");

-- Bael'dun Rifleman SAI
SET @ENTRY := 3377;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2300,3900,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,"Bael'dun Rifleman - In Combat CMC - Cast 'Shoot'"),
(@ENTRY,0,1,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bael'dun Rifleman - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Barak Kodobane SAI
SET @ENTRY := 3394;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2300,3900,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,"Barak Kodobane - In Combat CMC - Cast 'Shoot'"),
(@ENTRY,0,1,0,0,0,100,0,2000,5000,12000,15000,11,6533,0,0,0,0,0,2,0,0,0,0,0,0,0,"Barak Kodobane - In Combat - Cast 'Net'"),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Barak Kodobane - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Nak SAI
SET @ENTRY := 3434;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2400,3800,11,9532,64,0,0,0,0,2,0,0,0,0,0,0,0,"Nak - In Combat CMC - Cast 'Lightning Bolt'"),
(@ENTRY,0,1,0,2,0,100,0,0,100,17500,22500,11,8004,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nak - Between 0-100% Health - Cast 'Lesser Healing Wave'"),
(@ENTRY,0,2,0,0,0,100,1,6000,12000,0,0,11,8154,1,0,0,0,0,1,0,0,0,0,0,0,0,"Nak - In Combat - Cast 'Stoneskin Totem' (No Repeat)");

-- Kuz SAI
SET @ENTRY := 3436;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2400,3800,11,20792,64,0,0,0,0,2,0,0,0,0,0,0,0,"Kuz - In Combat CMC - Cast 'Frostbolt'"),
(@ENTRY,0,1,0,0,0,100,0,5000,9000,9000,12000,11,20795,0,0,0,0,0,2,0,0,0,0,0,0,0,"Kuz - In Combat - Cast 'Fire Blast'"),
(@ENTRY,0,2,0,0,0,100,0,8000,12000,12000,16000,11,11831,1,0,0,0,0,2,0,0,0,0,0,0,0,"Kuz - In Combat - Cast 'Frost Nova'");

-- Tonga Runetotem SAI
SET @ENTRY := 3448;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,20,0,100,0,880,0,0,0,1,0,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Tonga Runetotem - On Quest 'Altered Beings' Finished - Say Line 0"),
(@ENTRY,0,1,2,61,0,100,0,880,0,0,0,1,1,4000,0,0,0,0,1,0,0,0,0,0,0,0,"Tonga Runetotem - On Quest 'Altered Beings' Finished - Say Line 1"),
(@ENTRY,0,2,3,61,0,100,0,880,0,0,0,1,2,4000,0,0,0,0,1,0,0,0,0,0,0,0,"Tonga Runetotem - On Quest 'Altered Beings' Finished - Say Line 2"),
(@ENTRY,0,3,0,61,0,100,0,880,0,0,0,1,3,2000,0,0,0,0,1,0,0,0,0,0,0,0,"Tonga Runetotem - On Quest 'Altered Beings' Finished - Say Line 3");

-- Razormane Pathfinder SAI
SET @ENTRY := 3456;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2300,3900,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,"Razormane Pathfinder - In Combat CMC - Cast 'Shoot'"),
(@ENTRY,0,1,0,0,0,100,0,4000,6000,5000,7000,11,3391,0,0,0,0,0,2,0,0,0,0,0,0,0,"Razormane Pathfinder - In Combat - Cast 'Thrash'"),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Razormane Pathfinder - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Delmanis the Hated SAI
SET @ENTRY := 3662;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2400,3800,11,20792,64,0,0,0,0,2,0,0,0,0,0,0,0,"Delmanis the Hated - In Combat CMC - Cast 'Frostbolt'"),
(@ENTRY,0,1,0,0,0,100,0,6000,10000,12000,16000,11,7101,1,0,0,0,0,2,0,0,0,0,0,0,0,"Delmanis the Hated - In Combat - Cast 'Flame Blast'"),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Delmanis the Hated - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Ilkrud Magthrull SAI
SET @ENTRY := 3664;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,1000,1000,0,0,11,8722,1,0,0,0,0,1,0,0,0,0,0,0,0,"Ilkrud Magthrull - Out of Combat - Cast 'Summon Succubus' (No Repeat)"),
(@ENTRY,0,1,0,0,0,100,0,0,0,3400,4800,11,20791,64,0,0,0,0,2,0,0,0,0,0,0,0,"Ilkrud Magthrull - In Combat CMC - Cast 'Shadow Bolt'"),
(@ENTRY,0,2,0,2,0,100,0,0,50,66500,76300,11,6487,1,0,0,0,0,1,0,0,0,0,0,0,0,"Ilkrud Magthrull - Between 0-50% Health - Cast 'Ilkrud's Guardians'");

-- Boahn SAI
SET @ENTRY := 3672;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2400,3800,11,9532,64,0,0,0,0,2,0,0,0,0,0,0,0,"Boahn - In Combat CMC - Cast 'Lightning Bolt'0"),
(@ENTRY,0,1,0,2,0,100,0,0,40,30000,40000,11,5187,1,0,0,0,0,1,0,0,0,0,0,0,0,"Boahn - Between 0-40% Health - Cast 'Healing Touch'"),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Boahn - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Raene Wolfrunner SAI
SET @ENTRY := 3691;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2300,3900,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,"Raene Wolfrunner - In Combat CMC - Cast 'Shoot'"),
(@ENTRY,0,1,0,9,0,100,0,5,30,9000,13000,11,21390,0,0,0,0,0,5,0,0,0,0,0,0,0,"Raene Wolfrunner - Within 5-30 Range - Cast 'Multi-Shot'"),
(@ENTRY,0,2,0,9,0,100,0,5,30,12000,16000,11,15495,0,0,0,0,0,5,0,0,0,0,0,0,0,"Raene Wolfrunner - Within 5-30 Range - Cast 'Explosive Shot'"),
(@ENTRY,0,3,0,0,0,100,0,18000,25000,60000,70000,11,22908,1,0,0,0,0,5,0,0,0,0,0,0,0,"Raene Wolfrunner - In Combat - Cast 'Volley'"),
(@ENTRY,0,4,0,9,0,100,0,0,20,11000,13000,11,6533,1,0,0,0,0,2,0,0,0,0,0,0,0,"Raene Wolfrunner - Within 0-20 Range - Cast 'Net'"),
(@ENTRY,0,5,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Raene Wolfrunner - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Ran Bloodtooth SAI
SET @ENTRY := 3696;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2300,3900,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,"Ran Bloodtooth - In Combat CMC - Cast 'Shoot'"),
(@ENTRY,0,1,0,9,0,100,0,5,30,9000,14000,11,14443,0,0,0,0,0,5,0,0,0,0,0,0,0,"Ran Bloodtooth - Within 5-30 Range - Cast 'Multi-Shot'"),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ran Bloodtooth - Out of Combat - Flee For Assist (No Repeat)");

-- Wrathtail Sea Witch SAI
SET @ENTRY := 3715;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3500,5000,11,8598,64,0,0,0,0,2,0,0,0,0,0,0,0,"Wrathtail Sea Witch - In Combat CMC - Cast 'Lightning Blast'"),
(@ENTRY,0,1,0,9,0,100,0,0,10,20900,33500,11,2691,1,0,0,0,0,2,0,0,0,0,0,0,0,"Wrathtail Sea Witch - Within 0-10 Range - Cast 'Mana Burn'"),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wrathtail Sea Witch - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Wrathtail Sorceress SAI
SET @ENTRY := 3717;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4800,11,20792,64,0,0,0,0,2,0,0,0,0,0,0,0,"Wrathtail Sorceress - In Combat CMC - Cast 'Frostbolt'"),
(@ENTRY,0,1,0,0,0,100,0,4500,15700,14100,32600,11,11831,1,0,0,0,0,1,0,0,0,0,0,0,0,"Wrathtail Sorceress - In Combat - Cast 'Frost Nova'"),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wrathtail Sorceress - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Dark Strand Cultist SAI
SET @ENTRY := 3725;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,1000,1000,0,0,11,11939,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dark Strand Cultist - Out of Combat - Cast 'Summon Imp' (No Repeat)"),
(@ENTRY,0,1,0,0,0,100,0,0,0,3900,5900,11,20791,64,0,0,0,0,2,0,0,0,0,0,0,0,"Dark Strand Cultist - In Combat CMC - Cast 'Shadow Bolt'"),
(@ENTRY,0,2,0,0,0,100,0,3700,4600,10900,11300,11,6222,32,0,0,0,0,5,0,0,0,0,0,0,0,"Dark Strand Cultist - In Combat - Cast 'Corruption'");

-- Dark Strand Adept SAI
SET @ENTRY := 3728;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,1000,1000,0,0,11,12746,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dark Strand Adept - Out of Combat - Cast 'Summon Voidwalker' (No Repeat)"),
(@ENTRY,0,1,0,0,0,100,0,0,0,3400,5800,11,20791,64,0,0,0,0,2,0,0,0,0,0,0,0,"Dark Strand Adept - In Combat CMC - Cast 'Shadow Bolt'"),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dark Strand Adept - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Apothecary Falthis SAI
SET @ENTRY := 3735;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4800,11,20791,64,0,0,0,0,2,0,0,0,0,0,0,0,"Apothecary Falthis - In Combat CMC - Cast 'Shadow Bolt'"),
(@ENTRY,0,1,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Apothecary Falthis - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Saltspittle Muckdweller SAI
SET @ENTRY := 3740;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2300,3900,11,10277,64,0,0,0,0,2,0,0,0,0,0,0,0,"Saltspittle Muckdweller - In Combat CMC - Cast 'Throw'"),
(@ENTRY,0,1,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Saltspittle Muckdweller - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Foulweald Pathfinder SAI
SET @ENTRY := 3745;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,1,1000,1000,0,0,11,6820,32,0,0,0,0,1,0,0,0,0,0,0,0,"Foulweald Pathfinder - Out of Combat - Cast 'Corrupted Agility Passive' (No Repeat)"),
(@ENTRY,0,1,0,0,0,100,0,0,0,2300,3900,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,"Foulweald Pathfinder - In Combat CMC - Cast 'Shoot'"),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Foulweald Pathfinder - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Xavian Hellcaller SAI
SET @ENTRY := 3757;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,0,0,0,0,11,6925,1,0,0,0,0,1,0,0,0,0,0,0,0,"Xavian Hellcaller - Out of Combat - Cast 'Gift of the Xavian' (No Repeat)"),
(@ENTRY,0,1,0,0,0,100,0,0,0,4700,5800,11,9053,64,0,0,0,0,2,0,0,0,0,0,0,0,"Xavian Hellcaller - In Combat CMC - Cast 'Fireball'"),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Xavian Hellcaller - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Severed Druid SAI
SET @ENTRY := 3799;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4800,11,9739,64,0,0,0,0,2,0,0,0,0,0,0,0,"Severed Druid - In Combat CMC - Cast 'Wrath'"),
(@ENTRY,0,1,0,2,0,100,0,0,75,20600,80800,11,1430,1,0,0,0,0,1,0,0,0,0,0,0,0,"Severed Druid - Between 0-75% Health - Cast 'Rejuvenation'");

-- Forsaken Dark Stalker SAI
SET @ENTRY := 3808;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,25,0,100,0,0,0,0,0,11,8218,0,0,0,0,0,1,0,0,0,0,0,0,0,"Forsaken Dark Stalker - On Reset - Cast 'Sneak'"),
(@ENTRY,0,1,0,0,0,100,0,0,0,2300,3900,11,10277,64,0,0,0,0,2,0,0,0,0,0,0,0,"Forsaken Dark Stalker - In Combat CMC - Cast 'Throw'"),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Forsaken Dark Stalker - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Druid of the Fang SAI
SET @ENTRY := 3840;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Druid of the Fang - On Aggro - Set Event Phase 1 (Normal Dungeon)"),
(@ENTRY,0,1,0,0,1,100,2,0,0,2400,3800,11,9532,64,0,0,0,0,2,0,0,0,0,0,0,0,"Druid of the Fang - In Combat CMC - Cast 'Lightning Bolt' (Phase 1) (Normal Dungeon)"),
(@ENTRY,0,2,0,0,1,100,2,8000,11000,10000,20000,11,8040,33,0,0,0,0,6,0,0,0,0,0,0,0,"Druid of the Fang - In Combat - Cast 'Druid's Slumber' (Normal Dungeon)"),
(@ENTRY,0,3,0,74,1,100,2,0,40,12000,18000,11,5187,1,0,0,0,0,9,0,0,0,0,0,0,0,"Druid of the Fang - On Friendly Between 0-40% Health - Cast 'Healing Touch' (Normal Dungeon)"),
(@ENTRY,0,4,5,2,0,100,3,0,50,20000,25000,11,8041,1,0,0,0,0,1,0,0,0,0,0,0,0,"Druid of the Fang - Between 0-50% Health - Cast 'Serpent Form' (Normal Dungeon)"),
(@ENTRY,0,5,6,61,0,100,2,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Druid of the Fang - Between 0-50% Health - Enable Combat Movement"),
(@ENTRY,0,6,0,61,0,100,2,0,0,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Druid of the Fang - Between 0-50% Health - Set Event Phase 3 (Normal Dungeon)"),
(@ENTRY,0,7,0,23,0,100,2,8041,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Druid of the Fang - On has aura 'Serpent Form' stack 0 - Set Event Phase 1 (Normal Dungeon)");

-- Thistlefur Pathfinder SAI
SET @ENTRY := 3926;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,25,0,100,1,0,0,0,0,11,6813,1,0,0,0,0,1,0,0,0,0,0,0,0,"Thistlefur Pathfinder - On Reset - Cast 'Coat of Thistlefur' (No Repeat)"),
(@ENTRY,0,1,0,0,0,100,0,0,0,2300,2800,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,"Thistlefur Pathfinder - In Combat CMC - Cast 'Shoot'"),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Thistlefur Pathfinder - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Bloodfury Storm Witch SAI
SET @ENTRY := 4027;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2400,3800,11,9532,64,0,0,0,0,2,0,0,0,0,0,0,0,"Bloodfury Storm Witch - In Combat CMC - Cast 'Lightning Bolt'"),
(@ENTRY,0,1,0,0,0,100,0,6000,10000,40000,45000,11,6535,0,0,0,0,0,2,0,0,0,0,0,0,0,"Bloodfury Storm Witch - In Combat - Cast 'Lightning Cloud'");

-- Daughter of Cenarius SAI
SET @ENTRY := 4053;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2300,3900,11,10277,64,0,0,0,0,2,0,0,0,0,0,0,0,"Daughter of Cenarius - In Combat CMC - Cast 'Throw'"),
(@ENTRY,0,1,0,0,0,100,0,6000,6000,10000,12000,11,527,1,0,0,0,0,2,0,0,0,0,0,0,0,"Daughter of Cenarius - In Combat - Cast 'Dispel Magic'"),
(@ENTRY,0,2,0,0,0,100,0,4500,4500,6000,10000,11,527,1,0,0,0,0,1,0,0,0,0,0,0,0,"Daughter of Cenarius - In Combat - Cast 'Dispel Magic'"),
(@ENTRY,0,3,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daughter of Cenarius - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Archmage Koreln SAI
SET @ENTRY := 37582;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,3400,4800,11,51779,64,0,0,0,0,2,0,0,0,0,0,0,0,"Archmage Koreln - In Combat CMC - Cast 'Frostfire Bolt' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,4,0,0,3400,4800,11,70616,64,0,0,0,0,2,0,0,0,0,0,0,0,"Archmage Koreln - In Combat CMC - Cast 'Frostfire Bolt' (Heroic Dungeon)"),
(@ENTRY,0,2,0,9,0,100,6,0,8,10000,14000,11,22645,1,0,0,0,0,1,0,0,0,0,0,0,0,"Archmage Koreln - Within 0-8 Range - Cast 'Frost Nova' (Dungeon)"),
(@ENTRY,0,3,0,0,0,100,6,8000,12000,13000,16000,11,22746,1,0,0,0,0,1,0,0,0,0,0,0,0,"Archmage Koreln - In Combat - Cast 'Cone of Cold' (Dungeon)");

-- Dark Ranger Kalira SAI
SET @ENTRY := 37583;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,2300,3900,11,31942,64,0,0,0,0,2,0,0,0,0,0,0,0,"Dark Ranger Kalira - In Combat CMC - Cast 'Multi-Shot' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,4,0,0,2300,3900,11,31942,64,0,0,0,0,2,0,0,0,0,0,0,0,"Dark Ranger Kalira - In Combat CMC - Cast 'Multi-Shot' (Heroic Dungeon)");

-- Archmage Elandra SAI
SET @ENTRY := 37774;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,3400,4800,11,51779,64,0,0,0,0,2,0,0,0,0,0,0,0,"Archmage Elandra - In Combat CMC - Cast 'Frostfire Bolt' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,4,0,0,3400,4800,11,70616,64,0,0,0,0,2,0,0,0,0,0,0,0,"Archmage Elandra - In Combat CMC - Cast 'Frostfire Bolt' (Heroic Dungeon)"),
(@ENTRY,0,2,0,0,0,100,6,8000,12000,13000,16000,11,22746,1,0,0,0,0,1,0,0,0,0,0,0,0,"Archmage Elandra - In Combat - Cast 'Cone of Cold' (Dungeon)");

-- Dark Ranger Loralen SAI
SET @ENTRY := 37779;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,2300,3900,11,31942,64,0,0,0,0,2,0,0,0,0,0,0,0,"Dark Ranger Loralen - In Combat CMC - Cast 'Multi-Shot' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,4,0,0,2300,3900,11,70513,64,0,0,0,0,2,0,0,0,0,0,0,0,"Dark Ranger Loralen - In Combat CMC - Cast 'Multi-Shot' (Heroic Dungeon)");


-- Fix Hunter Trainers offering Hunter quest to Rogues
UPDATE `quest_template` SET `RequiredClasses`=4 WHERE `id` IN (6721,6722);

--
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `Id`= 315;

--
UPDATE `quest_template` SET `RequestItemsText` = '<Nipsy puts his index finger through one of the air holes in the carton.>$b$bAlive and kicking... and just in time!' WHERE `id` = 6662;

--
UPDATE `quest_template` SET `OfferRewardText`='You are a quick study in our ways. I look forward to continuing your training in the future. Return to me when the time is right.' WHERE `Id`=26947;
UPDATE `quest_template` SET `OfferRewardText`='So, the king has heard our plea? Thank Elune! We can use all the help we can get.' WHERE `Id`=28490;
UPDATE `quest_template` SET `OfferRewardText`='A disciple of the arcane always finds a way forward.  I''m glad to see you, $N.' WHERE `Id`=14277;
UPDATE `quest_template` SET `OfferRewardText`='You''ve learned with such speed and ease.  Soon you''ll be the one doing the teaching.' WHERE `Id`=14281;
UPDATE `quest_template` SET `OfferRewardText`='You''ve done well in coming here.  If we Gilneans stick together we might yet defeat this terrible enemy.' WHERE `Id`=14288;
UPDATE `quest_template` SET `OfferRewardText`='You did the impossible, $N.  You convinced Grandma Wahl to leave her home.$B$BYou are something else, let me tell you.' WHERE `Id`=14402;

UPDATE `quest_template` SET `RequestItemsText`='Their pride kept them in Auberdine for this long, but none deserve such a cruel fate.' WHERE `Id`=13518;
UPDATE `quest_template` SET `RequestItemsText`='Are their numbers weakened?' WHERE `Id`=13945;
UPDATE `quest_template` SET `RequestItemsText`='Did you have any success in routing those grellkin for us?' WHERE `Id`=13946;
UPDATE `quest_template` SET `RequestItemsText`='Did you find the source of the corruption?' WHERE `Id`=14005;
UPDATE `quest_template` SET `RequestItemsText`='This is grim work. It pains me to have to inflict such violence on creature of the forest, corrupt or not.' WHERE `Id`=28726;
UPDATE `quest_template` SET `RequestItemsText`='I adore these forests. I want to see the corruption purged from them completely. When next I return, I wand to do so with a lighter heart.' WHERE `Id`=28727;
UPDATE `quest_template` SET `RequestItemsText`='I hate quilboar!' WHERE `Id`=25190;
UPDATE `quest_template` SET `RequestItemsText`='Is it done yet, $N?' WHERE `Id`=14204;
UPDATE `quest_template` SET `RequestItemsText`='What is it then, $N?' WHERE `Id`=24930;
UPDATE `quest_template` SET `RequestItemsText`='There aren''t many of us left, $N.  We have to look out for those remaining Gilneans.' WHERE `Id`=14395;
UPDATE `quest_template` SET `RequestItemsText`='Is it done, $N?' WHERE `Id`=24920;

--
UPDATE `quest_template` SET `OfferRewardText` = 'Very good, very good! You''ve done well, $N. Perhaps the interest that is being shown in you is deserved, after all.$b$bThat''ll be for the others to decide--assuming your imp doesn''t overpower you and nip your career in the bud. For now, I''m satisfied that you''ll probably survive your first few months as a %C.$b$bA word about the imp, $N. As a $R knows, don''t let its size fool you, its magic can be very dangerous.' WHERE `id` = 1599;

--
UPDATE `quest_template` SET `RequiredRaces`=0 WHERE `Id`=1127;

--
UPDATE `quest_template` SET `PrevQuestId`=0 WHERE `Id` IN (9303,9305);

--
UPDATE `quest_template` SET `PrevQuestId`=0 WHERE  `Id`=10302;


--
UPDATE `quest_template` SET `RequestItemsText` = 'Wonderful! You got my memorandum obviously.$b$bIgnore the fools around you, $N. The Holy Light?! The sword and shield?! These aren''t paths for ones as open minded as us. Look at what "normal" magic did to our home. Coupled with those damned tinkerers, our race almost became extinct. And now we have to rely on the dwarves-- they''d rather spend time allying with humans than help us rebuild our own home. We''re like second-class citizens. Have you seen the way they look at us?' WHERE `id` = 3115;
UPDATE `quest_template` SET `OfferRewardText` = 'But none of that matters. What matters is that you''ve seen your own Holy Light! You know where power truly comes from. You realize that having our own allies is much more... prudent. Special allies. Allies that, no matter the task, will obey till their last breath.$b$bAnd that''s where I come in, $N. I can train you in the beginnings of those special powers. Seek me out often and I will do what I can to teach you more spells.' WHERE `id` = 3115;

--
UPDATE `quest_template` SET `NextQuestId`=13722 WHERE `Id` =13696;
UPDATE `quest_template` SET `NextQuestId`=13593 WHERE `Id` =13593;
-- The below is to fix the alliance chain, horde chain works fine with above 2 changes, but http://www.wowhead.com/quest=13593
-- Valiant Of Stormwind had `NextQuestIdChain` set to http://www.wowhead.com/quest=13722 The Valiant's Charge which is
-- Horde (Bloodelf) quest, wowhead says quest is horde but wrongly says it grants stormwind rep too so maybe someone got this wrong
-- whole chain worked fine for humans but for non-humans chain would break after turning in http://www.wowhead.com/quest=13593 as 
-- http://www.wowhead.com/quest=13718 would never be offered to non humans once they picked to champion stormwind after doing own faction

-- Basically the non human quest for starting stormwind chain had nextquestchainid pointing to horde quest and thats what
-- was breaking it for alliance.
UPDATE `quest_template` SET `NextQuestIdChain`=13718 WHERE  `Id`=13593;

--
UPDATE `quest_template` SET `OfferRewardText` = '<Thrall begins to read the letter.>$b$bSo the blood elves finally took care of their little problem.  It is no surprise that it took your help as well as that of an entire Forsaken regiment to get the job done.$b$b<The Warchief breaks into laughter.>$b$bI suppose there''s no stopping this.  In the end we need them just as much as they need us.' WHERE `id` = 9813;

--
UPDATE `quest_template` SET `RequestItemsText` = 'I was told a visitor from Quel''Thalas was coming. I was expecting a blood elf, to tell you the truth.$b$bWhat news do you bring?' WHERE `id` = 9812;

UPDATE quest_template SET RequiredRaces = 690 WHERE id IN (12375,12381,12383,12362,12378,12379,12377,12374,12361,12386,12366,12367,12380,12365,12373,12387,12369,12382,12363,12385,12364,12376,12370,12371,12384,12368,12394,12389,12388,12391,12393,12392,12395,12390);
UPDATE quest_template SET RequiredRaces = 1101 WHERE id IN (12345,12341,12334,12349,12350,12331,12333,12338,12348,12337,12347,12332,12286,12351,12339,12336,12343,12344,12346,12335,12342,12340,12358,12352,12357,12356,12354,12359,12353,12360,12355,12340);
































