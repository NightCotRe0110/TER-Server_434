UPDATE `creature_template` SET `unit_flags` = 774, `unit_flags2` = 133120 WHERE `entry` = 582;
UPDATE `creature_template` SET `dynamicflags` = 32 WHERE `entry` = 582;
UPDATE `creature_template` SET `unit_flags` = 896 WHERE `entry` = 237;

DELETE FROM `gossip_menu_option` WHERE menu_id IN(8510,8524);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES 
(8510, 0, 0, 'Yes Scryer, You may possess me', 1, 1, 0, 0, 0, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (22258,22259,22273,22267,22366);

-- UPDATE `spell_dbc` SET `Effect1`=28,`EffectMiscValueB1`=64 WHERE  `Id`IN(38674,38675,38676,38677,38678,38679,38709,38681);


DELETE FROM `smart_scripts` WHERE `entryorguid` IN (22258,22259,22273,22267,22366,2225800);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(22258, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 80, 2225800, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Demoniac Scryer - On Spawn - Run Script'),
(22258, 0, 1, 2 ,62,0, 100, 0, 8510,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Demoniac Scryer - On Gossip Select - Close Gossip'),
(22258, 0, 2, 0, 61,0, 100, 0,0,0,0,0,85,38708,1,0,0,0,0,7,0,0,0,0,0,0,0,'Demoniac Scryer - On Gossip Select - Cast Demoniac Visitation'),
(22258, 0, 3, 7, 11,0, 100, 0,0,0,0,0,81,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Demoniac Scryer - On Spawn - Set NPC Flags'),
(22258, 0, 4, 5, 7,0, 100, 0,0,0,0,0,11,38672,0,0,0,0,0,1,0,0,0,0,0,0,0,'Demoniac Scryer - On Evade  - Cast Magic Sucker Device timer'),
(22258, 0, 5, 0, 61,0, 100, 0,0,0,0,0,11,38690,0,0,0,0,0,1,0,0,0,0,0,0,0,'Demoniac Scryer - On Evade  - Cast Magic Sucker Device Bunny Appearance'),
(22258, 0, 6 ,0, 6, 0, 100, 0, 0, 0, 0, 0, 11, 38691, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Demoniac Scryer - On Death - Cast Magic Sucker Device Despawner, Mob AE'), 
(22258, 0, 7 ,8, 61, 0, 100, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Demoniac Scryer - On Spawn - Disable Auto Attack'), 
(22258, 0, 8 ,9, 61, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Demoniac Scryer - On Death - Disable Combatmovement'), 
(22258, 0, 9 ,0, 61, 0, 100, 0, 0, 0, 0, 0, 18, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Demoniac Scryer - On Death - Disable Combatmovement'), 
(22258, 0, 10 ,0, 64, 0, 100, 0, 0, 0, 0, 0, 98, 8510, 10643, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Demoniac Scryer - On Death - Disable Combatmovement'), 
(22366, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Demoniac Visitation - On Just Summoned - Say'),
(22259, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 11, 38683, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hellfire Wardling - On Just Summoned - Cast Magic Sucker Device Despawner, Mob'),
(22259, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hellfire Wardling - On Just Summoned - Say'),
(22259, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 7741, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hellfire Wardling - On Just Summoned - Cast Summoned Demon'),
(22259, 0, 3, 4, 6, 0, 100, 0, 0, 0, 0, 0, 11, 38891, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hellfire Wardling - On Death - Cast Magic Sucker Device (Despawn Visual)'),
(22259, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hellfire Wardling - On Death - Despawn'),
(22259, 0, 5, 0, 8, 0, 100, 0, 38691, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hellfire Wardling - On Spellhit (Magic Sucker Device Despawner, Mob AE) - Despawn'),
(22273, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 11, 38683, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fel Warden - On Just Summoned - Cast Magic Sucker Device Despawner, Mob'),
(22273, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fel Warden - On Just Summoned - Say'),
(22273, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 7741, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fel Warden - On Just Summoned - Cast Summoned Demon'),
(22273, 0, 3, 0, 8, 0, 100, 0, 38691, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fel Warden - On Spellhit (Magic Sucker Device Despawner, Mob AE) - Despawn'),
(22267, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 11, 38719, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Magic Sucker Device Buttress - On Just Summoned - Cast Magic Sucker Device Buttress Appearance'),
(22267, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 19, 22258, 0, 0, 0, 0, 0, 0, 'Magic Sucker Device Buttress - On Just Summoned - Set Orientation'),
(22267, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 11, 30259, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Magic Sucker Device Buttress - On Just Summoned - Cast Statue (dnd)'),
(22267, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 38721, 0, 0, 0, 0, 0, 19, 22258, 0, 0, 0, 0, 0, 0, 'Magic Sucker Device Buttress - On Just Summoned - Cast Magic Sucker Device Channel(dnd)'),
(22267, 0, 4, 0, 8, 0, 100, 0, 38691, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Magic Sucker Device Buttress - On Spellhit (Magic Sucker Device Despawner, Mob AE) - Despawn'),
(22267, 0, 5, 3, 1, 0, 100, 0, 0, 0, 3000, 3000, 11, 38719, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Magic Sucker Device Buttress - IC - Cast Magic Sucker Device Buttress Appearance'),
(22267, 0, 6, 3, 0, 0, 100, 0, 0, 0, 3000, 3000, 11, 38919, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Magic Sucker Device Buttress - OOC - Cast Magic Sucker Device Buttress Appearance'),

(2225800, 9, 0 ,0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 38672, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Demoniac Scryer - Script - Cast Magic Sucker Device timer'), -- 15:36:21
(2225800, 9, 1 ,0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 38690, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Demoniac Scryer - Script - Cast Magic Sucker Device Bunny Appearance'), -- 15:36:21
(2225800, 9, 2 ,0, 0, 0, 100, 0, 8000, 8000, 0, 0, 11, 38681, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Demoniac Scryer - Script - Cast Spawn Magic Sucker Spawner, Device'), -- 15:36:29
(2225800, 9, 3 ,0, 0, 0, 100, 0, 7000, 7000, 0, 0, 11, 38679, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Demoniac Scryer - Script - Cast Spawn Magic Sucker Device Mob'), -- 15:36:36 *
(2225800, 9, 4 ,0, 0, 0, 100, 0, 15000, 15000, 0, 0, 11, 38679, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Demoniac Scryer - Script - Cast Spawn Magic Sucker Device Mob'), -- 15:36:51 *
(2225800, 9, 5 ,0, 0, 0, 100, 0, 15000, 15000, 0, 0, 11, 38679, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Demoniac Scryer - Script - Cast Spawn Magic Sucker Device Mob'), -- 15:37:06 *
(2225800, 9, 6 ,0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 38675, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Demoniac Scryer - Script - Cast Create Magic Sucker Device Buttress (N)'), -- 15:37:06 *
(2225800, 9, 7 ,0, 0, 0, 100, 0, 15000, 15000, 0, 0, 11, 38679, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Demoniac Scryer - Script - Cast Spawn Magic Sucker Device Mob'), -- 15:37:21 *
(2225800, 9, 8 ,0, 0, 0, 100, 0, 15000, 15000, 0, 0, 11, 38679, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Demoniac Scryer - Script - Cast Spawn Magic Sucker Device Mob'), -- 15:37:36 *
(2225800, 9, 9 ,0, 0, 0, 100, 0, 15000, 15000, 0, 0, 11, 38679, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Demoniac Scryer - Script - Cast Spawn Magic Sucker Device Mob'), -- 15:37:51 *
(2225800, 9, 10 ,0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 38676, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Demoniac Scryer - Script - Cast Create Magic Sucker Device Buttress (S)'), -- 15:37:51 *
(2225800, 9, 11 ,0, 0, 0, 100, 0, 15000, 15000, 0, 0, 11, 38679, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Demoniac Scryer - Script - Cast Spawn Magic Sucker Device Mob'), -- 15:38:06 *
(2225800, 9, 12 ,0, 0, 0, 100, 0, 15000, 15000, 0, 0, 11, 38679, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Demoniac Scryer - Script - Cast Spawn Magic Sucker Device Mob'), -- 15:38:21 *
(2225800, 9, 13 ,0, 0, 0, 100, 0, 15000, 15000, 0, 0, 11, 38679, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Demoniac Scryer - Script - Cast Spawn Magic Sucker Device Mob'), -- 15:38:36 *
(2225800, 9, 14 ,0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 38709, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Demoniac Scryer - Script - Cast Spawn Magic Sucker Device Boss'), -- 15:38:36 *
(2225800, 9, 15 ,0, 0, 0, 100, 0, 15000, 15000, 0, 0, 11, 38679, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Demoniac Scryer - Script - Cast Spawn Magic Sucker Device Mob'), -- 15:38:51 *
(2225800, 9, 16 ,0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 38677, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Demoniac Scryer - Script - Cast Create Magic Sucker Device Buttress (E)'), -- 15:38:51 *
(2225800, 9, 17 ,0, 0, 0, 100, 0, 15000, 15000, 0, 0, 11, 38679, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Demoniac Scryer - Script - Cast Spawn Magic Sucker Device Mob'), -- 15:39:06 *
(2225800, 9, 18 ,0, 0, 0, 100, 0, 15000, 15000, 0, 0, 11, 38679, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Demoniac Scryer - Script - Cast Spawn Magic Sucker Device Mob'), -- 15:39:21 *
(2225800, 9, 19 ,0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 38678, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Demoniac Scryer - Script - Cast Create Magic Sucker Device Buttress (W)'), -- 15:39:21 *
(2225800, 9, 20 ,0, 0, 0, 100, 0, 15000, 15000, 0, 0, 11, 38679, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Demoniac Scryer - Script - Cast Spawn Magic Sucker Device Mob'), -- 15:39:36 *
(2225800, 9, 21 ,0, 0, 0, 100, 0, 15000, 15000, 0, 0, 11, 38679, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Demoniac Scryer - Script - Cast Spawn Magic Sucker Device Mob'), -- 15:39:51 *
(2225800, 9, 22 ,0, 0, 0, 100, 0, 15000, 15000, 0, 0, 11, 38691, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Demoniac Scryer - Script - Cast Magic Sucker Device Despawner, Mob AE'), -- 15:40:06 *
(2225800, 9, 23 ,0, 0, 0, 100, 0, 1000, 1000, 0, 0, 11, 38727, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Demoniac Scryer - Script - Cast Magic Sucker Device (Success Visual timer)'), -- 15:40:07 *
(2225800, 9, 24 ,0, 0, 0, 100, 0, 0, 0, 0, 0, 18, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Demoniac Scryer - Script - Set Unit Flags'),
(2225800, 9, 25 ,0, 0, 0, 100, 0, 0, 0, 0, 0, 28, 38672, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Demoniac Scryer - Script - Remove Aura Magic Sucker Device timer'),
(2225800, 9, 26 ,0, 0, 0, 100, 0, 3000, 3000, 0, 0, 11, 38727, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Demoniac Scryer - Script - Cast Magic Sucker Device (Success Visual timer)'), -- 15:40:07 *
(2225800, 9, 27 ,0, 0, 0, 100, 0, 0, 0, 0, 0, 28, 38672, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Demoniac Scryer - Script - Remove Aura Magic Sucker Device timer'),
(2225800, 9, 28 ,0, 0, 0, 100, 0, 3000, 3000, 0, 0, 11, 38727, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Demoniac Scryer - Script - Cast Magic Sucker Device (Success Visual timer)'), -- 15:40:07 *
(2225800, 9, 29 ,0, 0, 0, 100, 0, 0, 0, 0, 0, 28, 38672, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Demoniac Scryer - Script - Remove Aura Magic Sucker Device timer'),
(2225800, 9, 30 ,0, 0, 0, 100, 0, 84000, 84000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Demoniac Scryer - Script - Remove Aura Magic Sucker Device timer');
  
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry`=22258;

INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 11, 22258, 0, 0, 9, 0, 10838, 0, 0, 0, 0, 0, '', 'Demoniac Scryer - Only run SAI if player has the Demoniac Scryer Taken'),
(22, 11, 22258, 0, 0, 2, 0, 31607, 1, 0, 1, 0, 0, '', 'Demoniac Scryer - Only run SAI if player does not have Demoniac Scryer Reading'),
(22, 11, 22258, 0, 0, 1, 0, 38708, 0, 0, 1, 0, 0, '', 'Demoniac Scryer - Only run SAI if player does not have Aura Demonaic Visitation'),
(22, 11, 22258, 0, 0, 1, 1, 38672, 0, 0, 1, 0, 0, '', 'Demoniac Scryer - Only run SAI if Demoniac Scryer does not have Aura Magic Sucker Device timer');

DELETE FROM `creature_text` WHERE `entry` IN (22259,22273,22366);

INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(22273, 0, 0, 'Die, interloper!  Your puny device cannot pierce the dark magics of Hellfire Citadel!', 12, 0, 100, 397, 0, 0, 'Fel Warden'),
(22259, 0, 0, 'Your end has come!', 12, 0, 100, 0, 0, 0, 'Hellfire Wardling'),
(22259, 0, 1, 'An intruder!  Begone!', 12, 0, 100, 0, 0, 0, 'Hellfire Wardling'),
(22259, 0, 2, 'An intruder!  Begone!', 12, 0, 100, 0, 0, 8152, 'Hellfire Wardling'),
(22259, 0, 3, 'You will burn!', 12, 0, 100, 0, 0, 0, 'Hellfire Wardling'),
(22259, 0, 4, 'Die!', 12, 0, 100, 0, 0, 0, 'Hellfire Wardling'),
(22259, 0, 5, 'Your end has come!', 12, 0, 100, 0, 0, 8152, 'Hellfire Wardling'),
(22259, 0, 6, 'Die!', 12, 0, 100, 0, 0, 8152, 'Hellfire Wardling'),
(22366, 0, 0, 'Thank you for allowing me to visit, $n.  You have a very colorful soul, but it''s a little brighter than I prefer... or I might have stayed longer!', 15, 0, 100, 0, 0, 0, 'Demoniac Visitation');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`IN(-38708);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(-38708, 38991, 0,'Upon Demoniac Visitation expiring cast Summon Demonaic Visitation');

DELETE FROM `creature_text` WHERE `entry` IN(35361,35372,35368,35321,35320,33853,35501,33417);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
-- Horde
(35361, 0, 0, 'Welcome, Warchief Thrall. Overlord Hellscream.', 12, 0, 100, 2, 0, 16056, 'Highlord Tirion Fordring'),
(35361, 1, 0, 'I hope you''ll see the merit of these events in time, Garrosh. We cannot win against the Scourge if we continue to war against one another.', 12, 0, 100, 0, 0, 16057, 'Highlord Tirion Fordring'),
(35361, 2, 0, 'Under my roof, gentlemen, I trust you will behave.', 12, 0, 100, 0, 0, 16058, 'Highlord Tirion Fordring'),
(35361, 3, 0, 'If you will follow me, then.', 12, 0, 100, 1, 0, 16059, 'Highlord Tirion Fordring'),
(35372, 0, 0, 'Pah! That was a show of strength, worthy of a leader. I only regret I did not kill that human before the mage interfered.', 12, 0, 100, 5, 0, 16027, 'Garrosh Hellscream'),
(35372, 1, 0, 'What honor is there in thrashing about with blunted sticks? This is a waste of time.', 12, 0, 100, 1, 0, 16028, 'Garrosh Hellscream'),
(35372, 2, 0, 'Speak for yourself, Thrall.', 12, 0, 100, 1, 0, 16029, 'Garrosh Hellscream'),
(35372, 3, 0, 'Words of a fool, you mean. The Horde will destroy the undead without your aid, human, or that of the pompous king.', 12, 0, 100, 274, 0, 16030, 'Garrosh Hellscream'),
(35372, 4, 0, 'Bah.', 12, 0, 100, 1, 0, 16031, 'Garrosh Hellscream'),
(35368, 0, 0, 'Garrosh, I expect you to control yourself here. I do not want a repeat of the Violet Citadel.', 12, 0, 100, 1, 0, 16181, 'Thrall'),
(35368, 1, 0, 'We are guests here, Garrosh, and you will conduct yourself honorably.', 12, 0, 100, 0, 0, 16182, 'Thrall'),
(35368, 2, 0, 'Thank you for the invitation, Lord Fordring. We look forward to observing these games.', 12, 0, 100, 66, 0, 16183, 'Thrall'),
(35368, 3, 0, 'Wise words.', 12, 0, 100, 1, 0, 16184, 'Thrall'),
(35368, 4, 0, 'Garrosh, enough!', 12, 0, 100, 5, 0, 16185, 'Thrall'),
(35368, 5, 0, 'Of course, Tirion. I apologize for his outburst.  It will not be repeated.', 12, 0, 100, 0, 0, 16186, 'Thrall'),
-- Alliance
(35361, 4, 0, 'King Varian, Lady Jaina. Welcome to the tournament. Your place in the coliseum is waiting.', 12, 0, 100, 1, 0, 16054, 'Highlord Tirion Fordring'),
(35361, 5, 0, 'My people are here to ensure they honor the rules of engagement. It will do your subjects well to see you in the stands.', 12, 0, 100, 1, 0, 16055, 'Highlord Tirion Fordring'),
(35361, 6, 0, '%s nods and gestures for his guests to follow.', 16, 0, 100, 273, 0, 0, 'Highlord Tirion Fordring'),
(35321, 0, 0, 'Tirion.', 12, 0, 100, 1, 0, 16070, 'King Varian Wrynn'),
(35321, 1, 0, 'You ask much of me, Tirion, to sit and watch, trusting the savages to keep themselves in check.', 12, 0, 100, 1, 0, 16071, 'King Varian Wrynn'),
(35321, 2, 0, 'Perhaps. I doubt the effectiveness of this gambit. We would be better served preparing our armies for the final assault.', 12, 0, 100, 1, 0, 16072, 'King Varian Wrynn'),
(35321, 3, 0, 'But if my presence is required in these games to gain your support in the battle, then I will remain.  For now.', 12, 0, 100, 1, 0, 0, 'King Varian Wrynn'),
(35320, 0, 0, 'Thank you. It''s the least I can do to support this; we need to stand together.', 12, 0, 100, 2, 0, 16120, 'Lady Jaina Proudmoore'), -- Broadcast text 35523 but text fails with broadcast text id even though text is female text?
(35320, 1, 0, 'I''m sure Thrall will have his people under control...', 12, 0, 100, 274, 0, 16121, 'Lady Jaina Proudmoore'), -- Broadcast text 35529 but text fails with broadcast text id even though text is female text?
-- Speech
(35361, 7, 0, 'Combatants of the Alliance and Horde! You are welcome under the banner of the Argent Crusade.', 12, 0, 100, 5, 0, 0, 'Highlord Tirion Fordring'),
(35361, 8, 0, 'To the south lies our goal. We will march to the Citadel and cut out the heart of the Scourge where it dwells.', 12, 0, 100, 25, 0, 0, 'Highlord Tirion Fordring'),
(35361, 9, 0, 'But this is no task to be taken lightly.', 12, 0, 100, 0, 0, 0, 'Highlord Tirion Fordring'),
(35361, 10, 0, 'A massive attack with every able-bodied man would end in needless slaughter. Every soldier lost would rise as the enemy. Azeroth would be left defenseless against the undead threat.', 12, 0, 100, 0, 0, 0, 'Highlord Tirion Fordring'),
(35361, 11, 0, 'Instead, we require a small, concentrated strike force for the attack to succeed. For that reason, we have created the Argent Tournament.', 12, 0, 100, 0, 0, 0, 'Highlord Tirion Fordring'),
(35361, 12, 0, 'Within these walls, you will be tested. Your skill in combat will be matched against the fiercest dangers Northrend has to offer under the watchful eyes of your leaders.', 12, 0, 100, 0, 0, 0, 'Highlord Tirion Fordring'),
(35361, 13, 0, 'Your prowess, your might, and your cunning will be under close watch. These games will determine the best Azeroth has to offer.', 12, 0, 100, 0, 0, 0, 'Highlord Tirion Fordring'),
(35361, 14, 0, 'The victors will take their rightful place in the assault upon the Citadel. We will stand together in the face of evil, and Arthas WILL fall!', 12, 0, 100, 0, 0, 0, 'Highlord Tirion Fordring'),
-- Other texts
(33853, 0, 0, 'This tournament is the biggest event in ages! Buy something to bring home to your family and show your kids.', 12, 0, 100, 1, 0, 0, 'Broxel Goldgrasp'),
(33853, 0, 1, 'Hey! Check out these doublets! Now you can sport your city''s colors without having a tabard flapping around and getting in the way!', 12, 0, 100, 1, 0, 0, 'Broxel Goldgrasp'),
(33853, 0, 2, 'Want to show your pride without flailing around on one of those beasts? Whichever city you''re rooting for, I got what you need!', 12, 0, 100, 1, 0, 0, 'Broxel Goldgrasp'),
(35501, 0, 0, 'The Warchief of the Horde, Thrall, and Overlord Garrosh Hellscream have arrived upon the tournament grounds! Clear the way to the entrance!', 14, 0, 100, 22, 0, 0, 'Herald Beluus'),
(35501, 1, 0, 'Highlord Tirion Fordring approaches the stage to address those gathered upon the tournament grounds! Make way to the stage area to attend him!', 14, 0, 100, 22, 0, 0, 'Herald Beluus'),
(35501, 2, 0, 'His Majesty, King Varian Wrynn, and Lady Jaina Proudmoore have touched down upon the tournament grounds! Make way!', 14, 0, 100, 22, 0, 0, 'Herald Beluus'),
(33417, 0, 0, 'Now, I will imbue this crystal with the Light''s power to cut through lies and deceit.', 12, 0, 100, 1, 0, 0, 'Crusader Rhydalla'),
(33417, 1, 0, 'Grant us the ability to know the truth. If a murderer walks in our midst, guide us in our search for justice.', 12, 0, 100, 1, 0, 0, 'Crusader Rhydalla');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (35361,35372,35368,35321,35320,33853,35501,35460,35322,33417);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (35361,35372,35368,35321,35320,33853,35501,35460,35322,33417) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (3536100,3536800,3536801,3532100,3550100,3550101,3550102) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33417,0,0,0,20,0,100,0,13641,0,0,0,1,0,8000,0,0,0,0,1,0,0,0,0,0,0,0,'Crusader Rhydalla - On Quest Complete (The Seers Crystal) - Say line 0'),
(33417,0,1,0,52,0,100,0,0,33417,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Crusader Rhydalla - On Text Over Line 0 - Say line 1'),
(33853,0,0,0,1,0,100,0,30000,90000,120000,180000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Broxel Goldgrasp - OOC - Say'),
(35460,0,0,0,38,0,100,0,2,2,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Kor Kron Elite - on Data Set 2 2 - Despawn'),
(35322,0,0,0,38,0,100,0,2,2,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stormwind Royal Guard - on Data Set 2 2 - Despawn'),
(35460,0,1,0,38,0,100,0,1,1,0,0,29,0,0,0,0,0,0,19,35368,0,0,0,0,0,0,'Kor Kron Elite - on Data Set 1 1 - Follow Thrall'),
(35322,0,1,0,38,0,100,0,1,1,0,0,29,0,0,0,0,0,0,19,35321,0,0,0,0,0,0,'Stormwind Royal Guard - on Data Set 1 1 - Follow King Varian Wrynn'),
(35501,0,0,4,38,0,100,0,1,1,900000,900000,107,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Herald Beluus - On Data Set 1 1 - Spawn Summon Group 1'),
(35501,0,1,5,38,0,100,0,2,2,900000,900000,107,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Herald Beluus - On Data Set 2 2 - Spawn Summon Group 2'),
(35501,0,2,6,38,0,100,0,3,3,900000,900000,107,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Herald Beluus - On Data Set 3 3 - Spawn Summon Group 3'),
(35501,0,4,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Herald Beluus - On Data Set 1 1 - Say Line 0'),
(35501,0,5,0,61,0,100,0,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Herald Beluus - On Data Set 2 2 - Say Line 2'),
(35501,0,6,7,61,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Herald Beluus - On Data Set 3 3 - Say Line 1'),
(35501,0,7,0,61,0,100,0,0,0,0,0,45,3,3,0,0,0,0,19,35361,0,0,0,0,0,0,'Herald Beluus - On Data Set 3 3 - Set Data 3 3 on Tirion Fordring'),
(35501,0,8,0,68,0,100,0,67,0,0,0,80,3550100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Herald Beluus - On Event Start 67 - Run Script'),
(35501,0,9,0,68,0,100,0,68,0,0,0,80,3550101,2,0,0,0,0,1,0,0,0,0,0,0,0,'Herald Beluus - On Event Start 68 - Run Script 2'),
(35501,0,10,0,68,0,100,0,69,0,0,0,80,3550102,2,0,0,0,0,1,0,0,0,0,0,0,0,'Herald Beluus - On Event Start 69 - Run Script 3'),
(35361,0,0,0,38,0,100,0,1,1,0,0,53,0,3536101,0,0,0,0,1,0,0,0,0,0,0,0,'Highlord Tirion Fordring - On Data Set 1 1 - Start WP (Path 1)'),
(35361,0,1,0,38,0,100,0,2,2,0,0,53,0,3536102,0,0,0,0,1,0,0,0,0,0,0,0,'Highlord Tirion Fordring - On Data Set 2 2 - Start WP (Path 2)'),
(35361,0,2,0,38,0,100,0,3,3,0,0,53,0,3536103,0,0,0,0,1,0,0,0,0,0,0,0,'Highlord Tirion Fordring - On Data Set 3 3 - Start WP (Path 3)'),
(35361,0,3,0,40,0,100,0,5,3536101,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Highlord Tirion Fordring - On Reached WP 5 (Path 1) - Despawn'),
(35361,0,4,0,40,0,100,0,7,3536102,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Highlord Tirion Fordring - On Reached WP 7 (Path 2) - Despawn'),
(35361,0,5,0,40,0,100,0,53,3536103,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Highlord Tirion Fordring - On Reached WP 53 (Path 3) - Despawn'),
(35361,0,6,7,40,0,100,0,26,3536103,0,0,54,76000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Highlord Tirion Fordring - On Reached WP 26 (Path 3) - Pause WP'),
(35361,0,7,0,61,0,100,0,0,0,0,0,80,3536100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Highlord Tirion Fordring - On Reached WP 26 (Path 3) - Run Script'),
(35368,0,0,1,54,0,100,0,0,0,0,0,45,1,1,0,0,0,0,9,35460,0,200,0,0,0,0,'Thrall - On Just Summoned - Set Data 1 1 on Kor Kron Elite'),
(35368,0,1,0,61,0,100,0,0,0,0,0,53,0,35368,0,0,0,0,1,0,0,0,0,0,0,0,'Thrall - On Just Summoned - Start WP'),
(35368,0,2,3,40,0,100,0,7,35368,0,0,54,39000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Thrall - On Reached WP7 - Pause WP'),
(35368,0,3,0,61,0,100,0,0,0,0,0,80,3536800,2,0,0,0,0,1,0,0,0,0,0,0,0,'Thrall - On Reached WP7 - Run Script 1'),
(35368,0,4,5,40,0,100,0,12,35368,0,0,54,85000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Thrall - On Reached WP12 - Pause WP'),
(35368,0,5,0,61,0,100,0,0,0,0,0,80,3536801,2,0,0,0,0,1,0,0,0,0,0,0,0,'Thrall - On Reached WP15 - Run Script 2'),
(35368,0,6,7,40,0,100,0,19,35368,0,0,45,2,2,0,0,0,0,9,35460,0,200,0,0,0,0,'Thrall - On Reached WP19 - Set Data 2 2 on Kor Kron Elite'),
(35368,0,7,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Thrall - On Reached WP19 - Despawn'),
(35372,0,0,0,54,0,100,0,0,0,0,0,53,0,35372,0,0,0,0,1,0,0,0,0,0,0,0,'Garrosh Hellscream - On Just Summoned - Start WP'),
(35372,0,1,0,40,0,100,0,7,35372,0,0,54,39000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Garrosh Hellscream - On Reached WP10 - Pause WP'),
(35372,0,3,0,40,0,100,0,12,35372,0,0,54,85000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Garrosh Hellscream - On Reached WP15 - Pause WP'),
(35372,0,4,0,40,0,100,0,19,35372,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Garrosh Hellscream - On Reached WP22 - Despawn'),
(35372,0,5,0,38,0,100,0,1,1,0,0,66,0,0,0,0,0,0,19,35368,0,0,0,0,0,0,'Garrosh Hellscream - On Data Set 1 1 - Face Thrall'),
(35372,0,6,0,38,0,100,0,2,2,0,0,66,0,0,0,0,0,0,19,35361,0,0,0,0,0,0,'Garrosh Hellscream - On Data Set 2 2 - Face Tirion'),
(35321,0,0,1,54,0,100,0,0,0,0,0,45,1,1,0,0,0,0,9,35322,0,200,0,0,0,0,'King Varian Wrynn - On Just Summoned - Set Data 1 1 on Stormwind Royal Guard'),
(35321,0,1,0,61,0,100,0,0,0,0,0,53,0,35321,0,0,0,0,1,0,0,0,0,0,0,0,'King Varian Wrynn - On Just Summoned - Start WP'),
(35321,0,2,3,40,0,100,0,11,35321,0,0,54,70000,0,0,0,0,0,1,0,0,0,0,0,0,0,'King Varian Wrynn - On Reached WP11 - Pause WP'),
(35321,0,3,0,61,0,100,0,0,0,0,0,80,3532100,2,0,0,0,0,1,0,0,0,0,0,0,0,'King Varian Wrynn - On Reached WP11 - Run Script 1'),
(35321,0,4,5,40,0,100,0,19,35321,0,0,45,2,2,0,0,0,0,9,35322,0,200,0,0,0,0,'King Varian Wrynn - On Reached WP19 - Set Data 2 2 on Stormwind Royal Guard'),
(35321,0,5,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'King Varian Wrynn - On Reached WP19 - Despawn'),
(35320,0,0,0,54,0,100,0,0,0,0,0,53,0,35320,0,0,0,0,1,0,0,0,0,0,0,0,'Lady Jaina Proudmoore - On Just Summoned - Start WP'),
(35320,0,1,0,40,0,100,0,11,35320,0,0,54,70000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Lady Jaina Proudmoore - On Reached WP13 - Pause WP'),
(35320,0,2,0,40,0,100,0,16,35320,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Lady Jaina Proudmoore - On Reached WP18 - Despawn'),
(35320,0,3,0,38,0,100,0,1,1,0,0,66,0,0,0,0,0,0,19,35361,0,0,0,0,0,0,'Lady Jaina Proudmoore - On Data Set 1 1 - Face Tirion'),
(3550100,9,0,0,0,0,100,0,1000,1000,0,0,45,3,3,0,0,0,0,1,0,0,0,0,0,0,0,'Herald Beluus - Script - Set Data 3 3'),
(3550101,9,0,0,0,0,100,0,1000,1000,0,0,45,1,1,0,0,0,0,1,0,0,0,0,0,0,0,'Herald Beluus - Script 2 - Set Data 1 1'),
(3550102,9,0,0,0,0,100,0,1000,1000,0,0,45,2,2,0,0,0,0,1,0,0,0,0,0,0,0,'Herald Beluus - Script 3 - Set Data 2 2'),
(3536800,9,0,0,0,0,100,0,2000,2000,0,0,66,0,0,0,0,0,0,19,35372,0,0,0,0,0,0,'Thrall - Script 1 - Set Orientation'),
(3536800,9,1,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Thrall - Script 1 - Say Line 0'),
(3536800,9,2,0,0,0,100,0,2000,2000,0,0,45,1,1,0,0,0,0,19,35732,0,0,0,0,0,0,'Thrall - Script 1 - Set Data 1 1 on Garrosh Hellscream'),
(3536800,9,3,0,0,0,100,0,2000,2000,0,0,66,0,0,0,0,0,0,19,35372,0,0,0,0,0,0,'Thrall - Script 1 - Set Orientation'),
(3536800,9,4,0,0,0,100,0,5000,5000,0,0,1,0,0,0,0,0,0,19,35372,0,0,0,0,0,0,'Thrall - Script 1 - Say Line 0 on Garrosh Hellscream'),
(3536800,9,5,0,0,0,100,0,10000,10000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Thrall - Script 1 - Say Line 1'),
(3536800,9,6,0,0,0,100,0,9000,9000,0,0,1,1,0,0,0,0,0,19,35372,0,0,0,0,0,0,'Thrall - Script 1 - Say Line 1 on Garrosh Hellscream'),
(3536801,9,0,0,0,0,100,0,2000,2000,0,0,66,0,0,0,0,0,0,19,35361,0,0,0,0,0,0,'Thrall - Script 2 - Set Orientation'),
(3536801,9,1,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,19,35361,0,0,0,0,0,0,'Thrall - Script 2 - Say Line 0 on Tirion Fordring'),
(3536801,9,2,0,0,0,100,0,2000,2000,0,0,45,2,2,0,0,0,0,19,35732,0,0,0,0,0,0,'Thrall - Script 2 - Set Data 2 2 on Garrosh Hellscream'),
(3536801,9,3,0,0,0,100,0,6000,6000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Thrall - Script 2 - Say Line 2'),
(3536801,9,6,0,0,0,100,0,9000,9000,0,0,1,2,0,0,0,0,0,19,35372,0,0,0,0,0,0,'Thrall - Script 1 - Say Line 1 on Garrosh Hellscream'),
(3536801,9,7,0,0,0,100,0,9000,9000,0,0,1,1,0,0,0,0,0,19,35361,0,0,0,0,0,0,'Thrall - Script 2 - Say Line 1 on Tirion Fordring'),
(3536801,9,8,0,0,0,100,0,9000,9000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Thrall - Script 2 - Say Line 3'),
(3536801,9,9,0,0,0,100,0,5000,5000,0,0,1,3,0,0,0,0,0,19,35372,0,0,0,0,0,0,'Thrall - Script 2 - Say Line 3 on Garrosh Hellscream'),
(3536801,9,10,0,0,0,100,0,9000,9000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,'Thrall - Script 2 - Say Line 4'),
(3536801,9,11,0,0,0,100,0,9000,9000,0,0,1,2,0,0,0,0,0,19,35361,0,0,0,0,0,0,'Thrall - Script 2 - Say Line 2 on Tirion Fordring'),
(3536801,9,12,0,0,0,100,0,9000,9000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,'Thrall - Script 2 - Say Line 5'),
(3536801,9,13,0,0,0,100,0,7000,7000,0,0,1,4,0,0,0,0,0,19,35372,0,0,0,0,0,0,'Thrall - Script 2 - Say Line 4 on Garrosh Hellscream'),
(3536801,9,14,0,0,0,100,0,9000,9000,0,0,1,3,0,0,0,0,0,19,35361,0,0,0,0,0,0,'Thrall - Script 2 - Say Line 3 on Tirion Fordring'),
(3536801,9,15,0,0,0,100,0,2000,2000,0,0,45,2,2,0,0,0,0,19,35361,0,0,0,0,0,0,'Thrall - Script 2 - Set Data 2 2 On Tirion Fordring'),
(3532100,9,0,0,0,0,100,0,2000,2000,0,0,66,0,0,0,0,0,0,19,35361,0,0,0,0,0,0,'King Varian Wrynn - Script - Set Orientation'),
(3532100,9,1,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'King Varian Wrynn - Script - Say Line 0'),
(3532100,9,2,0,0,0,100,0,3000,3000,0,0,45,1,1,0,0,0,0,19,35320,0,0,0,0,0,0,'King Varian Wrynn - Script - Set Data 1 1 on Lady Jaina Proudmoore'),
(3532100,9,3,0,0,0,100,0,3000,3000,0,0,1,4,0,0,0,0,0,19,35361,0,0,0,0,0,0,'King Varian Wrynn - Script - Say Line 4 on Tirion Fordring'),
(3532100,9,4,0,0,0,100,0,9000,9000,0,0,1,0,0,0,0,0,0,19,35320,0,0,0,0,0,0,'King Varian Wrynn - Script - Say Line 0 on Lady Jaina Proudmoore'),
(3532100,9,5,0,0,0,100,0,9000,9000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'King Varian Wrynn - Script - Say Line 1'),
(3532100,9,6,0,0,0,100,0,9000,9000,0,0,1,5,0,0,0,0,0,19,35361,0,0,0,0,0,0,'King Varian Wrynn - Script - Say Line 5 on Tirion Fordring'),
(3532100,9,7,0,0,0,100,0,9000,9000,0,0,1,1,0,0,0,0,0,19,35320,0,0,0,0,0,0,'King Varian Wrynn - Script - Say Line 1 on Lady Jaina Proudmoore'),
(3532100,9,8,0,0,0,100,0,9000,9000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'King Varian Wrynn - Script - Say Line 2'),
(3532100,9,9,0,0,0,100,0,9000,9000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'King Varian Wrynn - Script - Say Line 3'),
(3532100,9,10,0,0,0,100,0,5000,5000,0,0,1,6,0,0,0,0,0,19,35361,0,0,0,0,0,0,'King Varian Wrynn - Script - Say Line 6 on Tirion Fordring'),
(3532100,9,11,0,0,0,100,0,1000,1000,0,0,45,2,2,0,0,0,0,19,35361,0,0,0,0,0,0,'King Varian Wrynn - Script - Set Data 2 2 on Tirion Fordring'),
(3536100,9,0,0,0,0,100,0,2000,2000,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tirion Fordring - Script - Say Line 7'),
(3536100,9,1,0,0,0,100,0,9000,9000,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tirion Fordring - Script - Say Line 8'),
(3536100,9,2,0,0,0,100,0,9000,9000,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tirion Fordring - Script - Say Line 9'),
(3536100,9,3,0,0,0,100,0,9000,9000,0,0,1,10,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tirion Fordring - Script - Say Line 10'),
(3536100,9,4,0,0,0,100,0,9000,9000,0,0,1,11,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tirion Fordring - Script - Say Line 11'),
(3536100,9,5,0,0,0,100,0,9000,9000,0,0,1,12,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tirion Fordring - Script - Say Line 12'),
(3536100,9,6,0,0,0,100,0,9000,9000,0,0,1,13,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tirion Fordring - Script - Say Line 13'),
(3536100,9,7,0,0,0,100,0,9000,9000,0,0,1,14,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tirion Fordring - Script - Say Line 14');

DELETE FROM `creature_summon_groups` WHERE `summonerId`=35501;
INSERT INTO `creature_summon_groups` (`summonerId`, `summonerType`, `groupId`, `entry`, `position_x`, `position_y`, `position_z`, `orientation`, `summonType`, `summonTime`) VALUES 
(35501, 0, 1, 35372, 8378.492, 857.5355, 548.197, 6.158272, 1, 300000), -- Garrosh Hellscream <Overlord of the Warsong Offensive>
(35501, 0, 1, 35368, 8378.619, 857.5087, 548.1897, 0.1038857, 1, 300000), -- Thrall <Warchief>
(35501, 0, 1, 35460, 8431.85, 783.5225, 547.1886, 4.800064, 1, 300000), -- Kor'kron Elite
(35501, 0, 1, 35460, 8431.819, 786.1658, 547.0226, 4.752929, 1, 300000), -- Kor'kron Elite
(35501, 0, 1, 35460, 8432.082, 788.9749, 547.0226, 4.72544, 1, 300000), -- Kor'kron Elite
(35501, 0, 1, 35460, 8431.932, 792.5201, 547.0226, 4.731718, 1, 300000), -- Kor'kron Elite
(35501, 0, 1, 35361, 8514.482, 1002.043, 547.5427, 1.54998, 1, 300000), -- Tirion Fordring
(35501, 0, 2, 35321, 8627.393, 825.6207, 547.844, 6.001378, 1, 300000), -- King Varian Wrynn <King of Stormwind>
(35501, 0, 2, 35320, 8627.415, 825.7189, 547.8445, 6.09736, 1, 300000), -- Lady Jaina Proudmoore
(35501, 0, 2, 35322, 8598.433, 782.7703, 547.2332, 4.035077, 1, 300000), -- Stormwind Royal Guard
(35501, 0, 2, 35322, 8599.854, 786.8993, 547.106, 0, 1, 300000), -- Stormwind Royal Guard
(35501, 0, 2, 35322, 8599.948, 789.8871, 547.1022, 0, 1, 300000), -- Stormwind Royal Guard
(35501, 0, 2, 35322, 8600.094, 792.9618, 547.0916, 0, 1, 300000), -- Stormwind Royal Guard
(35501, 0, 2, 35361, 8514.867, 999.8611, 547.5361, 1.564039, 1, 300000), -- Tirion Fordring
(35501, 0, 3, 35361, 8516.173, 857.1208, 558.224, 1.620469, 1, 300000); -- Tirion Fordring

DELETE FROM `waypoints` WHERE `entry` IN(35372,35368,35321,35320,3536101,3536102,3536103);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(35372, 1,8378.492, 853.5355, 548.197, 'Garrosh Hellscream'),
(35372, 2,8383.742, 860.5355, 548.947, 'Garrosh Hellscream'),
(35372, 3,8387.742, 863.0355, 548.197, 'Garrosh Hellscream'),
(35372, 4,8395.488, 867.5789, 547.4661, 'Garrosh Hellscream'),
(35372, 5,8429.673, 868.0316, 547.5607, 'Garrosh Hellscream'),
(35372, 6,8456.814, 868.2816, 547.5472, 'Garrosh Hellscream'),
(35372, 7,8471.326, 874.7925, 547.3564, 'Garrosh Hellscream'), -- event 1
(35372, 8,8474.354, 965.6163, 547.5648, 'Garrosh Hellscream'),
(35372, 9,8474.914, 994.8466, 547.569, 'Garrosh Hellscream'),
(35372, 10,8475.963, 1015.37, 547.4027, 'Garrosh Hellscream'),
(35372, 11,8491.083, 1023.574, 547.6857, 'Garrosh Hellscream'),
(35372, 12,8505.541, 1017.326, 547.4875, 'Garrosh Hellscream'), -- Event 2
(35372, 13,8514.845, 967.8865, 547.6021, 'Garrosh Hellscream'),
(35372, 14,8513.313, 908.7572, 547.0596, 'Garrosh Hellscream'),
(35372, 15,8515.025, 903.334, 549.4037, 'Garrosh Hellscream'),
(35372, 16,8515.025, 883.334, 558.4037, 'Garrosh Hellscream'),
(35372, 17,8515.248, 883.068, 558.2806, 'Garrosh Hellscream'),
(35372, 18,8515.248, 881.818, 558.2806, 'Garrosh Hellscream'),
(35372, 19,8515.248, 869.818, 558.2806, 'Garrosh Hellscream'), -- Despawn
(35368, 1,8378.619, 857.5087, 548.1897, 'Thrall'),
(35368, 2,8383.619, 860.5087, 548.9397, 'Thrall'),
(35368, 3,8387.619, 863.0087, 548.1897, 'Thrall'),
(35368, 4,8395.587, 867.5353, 547.5248, 'Thrall'),
(35368, 5,8429.74, 868.0476, 547.556, 'Thrall'),
(35368, 6,8456.637, 868.2863, 547.5472, 'Thrall'),
(35368, 7,8471.311, 879.7035, 547.3566, 'Thrall'), -- Event 1
(35368, 8,8474.318, 965.5286, 547.5663, 'Thrall'),
(35368, 9,8474.676, 995.0491, 547.5669, 'Thrall'),
(35368, 10,8476.174, 1015.247, 547.4014, 'Thrall'),
(35368, 11,8491.046, 1023.52, 547.6807, 'Thrall'),
(35368, 12,8505.436, 1023.33, 547.49, 'Thrall'), -- Event 2
(35368, 13,8514.709, 967.9902, 547.6022, 'Thrall'),
(35368, 14,8513.313, 908.8455, 547.0592, 'Thrall'),
(35368, 15,8515.005, 903.3881, 549.3793, 'Thrall'),
(35368, 16,8515.005, 883.3881, 558.3793, 'Thrall'),
(35368, 17,8515.248, 883.1051, 558.2639, 'Thrall'),
(35368, 18,8515.248, 881.8551, 558.2639, 'Thrall'),
(35368, 19,8515.248, 869.8551, 558.2639, 'Thrall'), -- Despawn
(35321, 1,8627.393, 825.6207, 547.844, 'King Varian Wrynn '),
(35321, 2,8613.393, 837.8707, 548.344, 'King Varian Wrynn '),
(35321, 3,8608.143, 842.6207, 547.844, 'King Varian Wrynn '),
(35321, 4,8601.045, 848.5384, 547.8608, 'King Varian Wrynn '),
(35321, 5,8568.619, 877.0317, 547.8453, 'King Varian Wrynn '),
(35321, 6,8568.803, 905.2659, 547.8437, 'King Varian Wrynn '),
(35321, 7,8575.408, 931.527, 547.8807, 'King Varian Wrynn '),
(35321, 8,8574.291, 978.2374, 547.7904, 'King Varian Wrynn '),
(35321, 9,8573.76, 996.1445, 547.6873, 'King Varian Wrynn '),
(35321, 10,8547.205, 1025.768, 547.6677, 'King Varian Wrynn '),
(35321, 11,8522.588, 1025.523, 547.4802, 'King Varian Wrynn '), -- event
(35321, 12,8515.861, 966.6905, 547.7981, 'King Varian Wrynn '),
(35321, 13,8515.839, 933.1519, 547.6201, 'King Varian Wrynn '),
(35321, 14,8515.781, 909.5035, 547.7239, 'King Varian Wrynn '),
(35321, 15,8515.281, 908.2535, 547.7239, 'King Varian Wrynn '),
(35321, 16,8515.281, 907.7535, 547.4739, 'King Varian Wrynn '),
(35321, 17,8515.781, 883.2535, 558.2239, 'King Varian Wrynn '),
(35321, 18,8515.781, 882.5035, 558.2239, 'King Varian Wrynn '),
(35321, 19,8515.863, 874.8201, 558.4, 'King Varian Wrynn '), -- Despawn
(35320, 1,8627.415, 821.7189, 547.8445, 'Lady Jaina Proudmoore'),
(35320, 2,8613.415, 837.9689, 548.3445, 'Lady Jaina Proudmoore'),
(35320, 3,8608.165, 842.4689, 547.8445, 'Lady Jaina Proudmoore'),
(35320, 4,8601.23, 848.7488, 547.8608, 'Lady Jaina Proudmoore'),
(35320, 5,8568.586, 876.9446, 547.8464, 'Lady Jaina Proudmoore'),
(35320, 6,8568.813, 905.3264, 547.8437, 'Lady Jaina Proudmoore'),
(35320, 7,8575.418, 931.5242, 547.8807, 'Lady Jaina Proudmoore'),
(35320, 8,8574.326, 978.1571, 547.7883, 'Lady Jaina Proudmoore'),
(35320, 9,8573.799, 996.0771, 547.7056, 'Lady Jaina Proudmoore'),
(35320, 10,8547.209, 1025.604, 547.6677, 'Lady Jaina Proudmoore'),
(35320, 11,8522.485, 1022.519, 547.4802, 'Lady Jaina Proudmoore'), -- event
(35320, 12,8510.441, 962.6707, 547.7096, 'Lady Jaina Proudmoore'),
(35320, 13,8512.931, 908.6326, 547.1065, 'Lady Jaina Proudmoore'),
(35320, 14,8509.26, 890.199, 555.392, 'Lady Jaina Proudmoore'),
(35320, 15,8509.51, 882.949, 558.392, 'Lady Jaina Proudmoore'),
(35320, 16,8509.76, 866.949, 558.392, 'Lady Jaina Proudmoore'), -- Despawn
(3536101, 1,8515.837, 966.2322, 547.8004, 'Tirion Fordring Path 1 (A)'),
(3536101, 2,8515.438, 933.1854, 547.6211, 'Tirion Fordring Path 1 (A)'),
(3536101, 3,8515.114, 907.5914, 547.7163, 'Tirion Fordring Path 1 (A)'),
(3536101, 4,8515.231, 883.113, 558.3371, 'Tirion Fordring Path 1 (A)'),
(3536101, 5,8515.231, 876.113, 558.3371, 'Tirion Fordring Path 1 (A)'), -- Despawn
(3536102, 1,8514.69, 967.8665, 547.6022, 'Tirion Fordring Path 2 (H)'),
(3536102, 2,8513.313, 908.7299, 547.0597, 'Tirion Fordring Path 2 (H)'),
(3536102, 3,8515.041, 903.2933, 549.4221, 'Tirion Fordring Path 2 (H)'),
(3536102, 4,8515.041, 883.2933, 558.4221, 'Tirion Fordring Path 2 (H)'),
(3536102, 5,8515.248, 883.0287, 558.2983, 'Tirion Fordring Path 2 (H)'),
(3536102, 6,8515.248, 881.7787, 558.2983, 'Tirion Fordring Path 2 (H)'),
(3536102, 7,8515.248, 870.0287, 558.2983, 'Tirion Fordring Path 2 (H)'), -- Despawn
(3536103, 1,8515.115, 882.241, 558.4219, 'Tirion Fordring Path 3'),
(3536103, 2,8515.115, 883.241, 558.4219, 'Tirion Fordring Path 3'),
(3536103, 3,8515.398, 907.9827, 547.7035, 'Tirion Fordring Path 3'),
(3536103, 4,8515.627, 933.3921, 547.7746, 'Tirion Fordring Path 3'),
(3536103, 5,8515.333, 964.9823, 547.7904, 'Tirion Fordring Path 3'),
(3536103, 6,8515.431, 997.7224, 547.7899, 'Tirion Fordring Path 3'),
(3536103, 7,8515.498, 1012.836, 547.7288, 'Tirion Fordring Path 3'),
(3536103, 8,8504.991, 1024.238, 547.6447, 'Tirion Fordring Path 3'),
(3536103, 9,8488.602, 1022.55, 547.5944, 'Tirion Fordring Path 3'),
(3536103, 10,8477.459, 1011.274, 547.5656, 'Tirion Fordring Path 3'),
(3536103, 11,8477.004, 979.2046, 547.566, 'Tirion Fordring Path 3'),
(3536103, 12,8477.207, 957.4761, 547.6188, 'Tirion Fordring Path 3'),
(3536103, 13,8476.936, 932.0121, 547.5994, 'Tirion Fordring Path 3'),
(3536103, 14,8472.096, 895.4807, 547.5532, 'Tirion Fordring Path 3'),
(3536103, 15,8469.525, 875.2735, 547.5472, 'Tirion Fordring Path 3'),
(3536103, 16,8458.682, 869.0731, 547.5482, 'Tirion Fordring Path 3'),
(3536103, 17,8447.49, 869.5849, 547.3584, 'Tirion Fordring Path 3'),
(3536103, 18,8439.665, 864.4185, 547.6384, 'Tirion Fordring Path 3'),
(3536103, 19,8435.665, 840.2815, 547.6621, 'Tirion Fordring Path 3'),
(3536103, 20,8428.504, 828.4578, 548.1788, 'Tirion Fordring Path 3'),
(3536103, 21,8422.17, 820.4958, 548.2007, 'Tirion Fordring Path 3'),
(3536103, 22,8418.17, 819.9958, 547.7007, 'Tirion Fordring Path 3'),
(3536103, 23,8411.133, 821.0222, 547.7149, 'Tirion Fordring Path 3'),
(3536103, 24,8411.133, 822.7722, 548.7149, 'Tirion Fordring Path 3'),
(3536103, 25,8410.857, 822.8849, 548.9045, 'Tirion Fordring Path 3'),
(3536103, 26,8410.857, 823.6349, 549.1545, 'Tirion Fordring Path 3'), -- Speech
(3536103, 27,8413.572, 823.3403, 549.1307, 'Tirion Fordring Path 3'),
(3536103, 28,8414.322, 822.5903, 547.8807, 'Tirion Fordring Path 3'),
(3536103, 29,8416.822, 822.0903, 547.8807, 'Tirion Fordring Path 3'),
(3536103, 30,8424.572, 823.8403, 548.1307, 'Tirion Fordring Path 3'),
(3536103, 31,8431.322, 825.3403, 547.8807, 'Tirion Fordring Path 3'),
(3536103, 32,8431.529, 825.5197, 547.485, 'Tirion Fordring Path 3'),
(3536103, 33,8434.029, 826.0197, 547.485, 'Tirion Fordring Path 3'),
(3536103, 34,8441.018, 861.8821, 547.6302, 'Tirion Fordring Path 3'),
(3536103, 35,8464.893, 873.6819, 547.5815, 'Tirion Fordring Path 3'),
(3536103, 36,8466.393, 882.6819, 548.0815, 'Tirion Fordring Path 3'),
(3536103, 37,8467.893, 889.1819, 547.5815, 'Tirion Fordring Path 3'),
(3536103, 38,8470.238, 900.28, 547.3839, 'Tirion Fordring Path 3'),
(3536103, 39,8476.566, 926.4999, 547.6122, 'Tirion Fordring Path 3'),
(3536103, 40,8476.942, 953.2826, 547.5696, 'Tirion Fordring Path 3'),
(3536103, 41,8477.261, 987.5072, 547.3844, 'Tirion Fordring Path 3'),
(3536103, 42,8478.745, 1009.749, 547.8503, 'Tirion Fordring Path 3'),
(3536103, 43,8480.495, 1010.499, 548.3503, 'Tirion Fordring Path 3'),
(3536103, 44,8488.745, 1013.249, 548.8503, 'Tirion Fordring Path 3'),
(3536103, 45,8497.431, 1016.098, 548.8865, 'Tirion Fordring Path 3'),
(3536103, 46,8507.181, 1016.098, 548.1365, 'Tirion Fordring Path 3'),
(3536103, 47,8515.092, 1016.158, 547.686, 'Tirion Fordring Path 3'),
(3536103, 48,8514.816, 985.2982, 547.7898, 'Tirion Fordring Path 3'),
(3536103, 49,8514.082, 960.7643, 547.6128, 'Tirion Fordring Path 3'),
(3536103, 50,8513.166, 908.7978, 546.937, 'Tirion Fordring Path 3'),
(3536103, 51,8515.26, 891.7044, 554.6902, 'Tirion Fordring Path 3'),
(3536103, 52,8515.26, 882.9544, 558.4402, 'Tirion Fordring Path 3'),
(3536103, 53,8515.26, 854.9544, 558.1902, 'Tirion Fordring Path 3'); -- Despawn

DELETE FROM `creature_template_addon` WHERE `entry`=35361;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `auras`) VALUES
(35361, 0, 0x0, 0x0, '57545'); -- 35361 - 57545, 57550

DELETE FROM `game_event` WHERE `eventEntry` BETWEEN 67 AND 69;
INSERT INTO `game_event` (`eventEntry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES 
(67, '2010-01-02 00:40:00', '2020-12-31 06:00:00', 60, 5, 0, 'AT Event Trigger (Tirion Speech)', 0),
(68, '2010-01-02 00:55:00', '2020-12-31 06:00:00', 60, 5, 0, 'AT Event Trigger (Horde Event)', 0),
(69, '2010-01-02 00:10:00', '2020-12-31 06:00:00', 60, 5, 0, 'AT Event Trigger (Alliance Event)', 0);


DELETE FROM `creature_text` WHERE `entry` IN (26666,27221,27227);
DELETE FROM `creature_text` WHERE `entry` =26484 and `groupid`>1;

INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(27227, 0, 0, 'Where... where am I?', 12, 0, 100, 0, 0, 0, 'Prospector Rokar'),
(27227, 1, 0, 'Wait a minute here! You promised to spare me if I helped you. I held up my end o'' the bargain!', 12, 0, 100, 5, 0, 0, 'Prospector Rokar'),
(27227, 2, 0, 'By the Light, Brann''s alive? I''d never help you capture him!', 12, 0, 100, 1, 0, 0, 'Prospector Rokar'),
(26666, 0, 0, 'Stay your blade, Chieftain. He may yet have value to us.', 12, 0, 100, 1, 0, 0, 'Scout Vor''takh'),
(26666, 1, 0, 'Remember the dwarven journal that was discovered? Well, this dwarf could be exactly what we need to track down Brann Bronzebeard and capture him.', 12, 0, 100, 1, 0, 0, 'Scout Vor''takh'),
(26666, 2, 0, 'You will if you wish to keep your head attached to your shoulders.', 12, 0, 100, 1, 0, 0, 'Scout Vor''takh'),
(26666, 3, 0, 'Does that satisfy you, Tormak?', 12, 0, 100, 6, 0, 0, 'Scout Vor''takh'),
(27221, 0, 0, 'Let''s see if this works.', 12, 0, 100, 1, 0, 0, 'Tormak the Scarred'),
(27221, 1, 0, 'You are among the Taunka of Camp Oneqwah, dwarf.', 12, 0, 100, 1, 0, 0, 'Tormak the Scarred'),
(27221, 2, 0, 'If you agree to help us against our mutual enemy, you will come to no harm here.', 12, 0, 100, 1, 0, 0, 'Tormak the Scarred'),
(27221, 3, 0, 'Think about it, prospector, but make up your mind swiftly. We must act soon.', 12, 0, 100, 25, 0, 0, 'Tormak the Scarred'),
(27221, 4, 0, 'I''ll admit, dwarf, I was pleasantly surprised to see your plan succeed.', 12, 0, 100, 1, 0, 0, 'Tormak the Scarred'),
(27221, 5, 0, 'We can''t just let you return to your companions and we can''t take you with us...', 12, 0, 100, 1, 0, 0, 'Tormak the Scarred'),
(27221, 6, 0, 'He will live so long as he proves useful. I''d be careful if I was you, dwarf.', 12, 0, 100, 273, 0, 0, 'Tormak the Scarred'),
(26484, 2, 0, 'By the Light, you killed Limpy Joe and took the meat! How did you know where to find us?', 12, 0, 100, 5, 0, 0, 'Hugh Glass'),
(26484, 3, 0, 'Well, if you''ve come to kill me, too, can you at least wait until I''ve fed Griselda? Poor girl hasn''t eaten in days.', 12, 0, 100, 20, 0, 0, 'Hugh Glass'),
(26484, 4, 0, 'Here, girl. I''ve got one last meal for you before Limpy Joe''s killer does us in!', 12, 0, 100, 22, 0, 0, 'Hugh Glass'),
(26484, 5, 0, 'How could you kill poor, defenseless old Joe? And why did you bring the meat back?', 12, 0, 100, 6, 0, 0, 'Hugh Glass'),
(26484, 6, 0, 'You''re an enigma, that''s what you are... And let me tell you, enigmas and I don''t get along....', 12, 0, 100, 1, 0, 0, 'Hugh Glass'),
(26484, 7, 0, 'I think you''d best leave before Griselda decides she''s in the mood for dessert.', 12, 0, 100, 25, 0, 0, 'Hugh Glass'),
(26484, 8, 0, 'Wake up, Griselda. Here, girl.', 12, 0, 100, 0, 0, 0, 'Hugh Glass'),
(26484, 9, 0, 'They''ll never find us here, will they? We won''t let them get us like they got Limpy Joe and Flannel McGee!', 12, 0, 100, 5, 0, 0, 'Hugh Glass'),
(26484, 9, 1, 'No, we escaped from those monsters! They''re nothing like us, Griselda.', 12, 0, 100, 1, 0, 0, 'Hugh Glass'),
(26484, 9, 2, 'We''re hunters, you and I. No wolfmen here, no ma''am.', 12, 0, 100, 274, 0, 0, 'Hugh Glass'),
(26484, 9, 3, 'Keep an eye out for them, girl! Don''t let them get us!', 12, 0, 100, 25, 0, 0, 'Hugh Glass');

UPDATE `creature_text` SET `emote`=396 WHERE  `entry`=26604;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (26666,27221);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (26666,27221) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` =26484 AND `source_type`=0 and `id`IN(1,2);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2722100,2722101,2648401) AND `source_type`=9;
UPDATE `smart_scripts` SET `event_type`=20, `event_param1`=12484, `event_param2`=0, `event_param3`=0, `event_param4`=0, `comment`='Mack Fearsen - On Quest Complete (Scourgekabob)  - Say Line 0' WHERE  `entryorguid`=26604 AND `source_type`=0 AND `id`=2 AND `link`=0;

INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(27221, 0, 0, 0, 20, 0, 100, 0, 12195, 0, 0, 0, 80, 2722100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Tormak the Scarred - On Quest Reward (The Unexpected Guest) - Run Script'),
(27221, 0, 1, 0, 20, 0, 100, 0, 12199, 0, 0, 0, 80, 2722101, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Tormak the Scarred - On Quest Reward (Bringing Down The Iron Thane) - Run Script 2'),
(26666, 0, 0, 0, 38, 0, 100, 0, 1, 1, 0, 0, 53, 0, 26666, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Scout Vor''takh - On Data Set 1 1 - Start WP'),
(26666, 0, 1, 0, 40, 0, 100, 0, 6, 26666, 0, 0, 54, 32000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Scout Vor''takh - On On reached wp6 - Pause WP'),
(26666, 0, 2, 0, 40, 0, 100, 0, 7, 26666, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 4.55531, 'Scout Vor''takh - On On reached wp7 - Set Orientation'),
(26484, 0, 1, 0, 20, 0, 100, 0, 12279, 0, 0, 0, 80, 2648401, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hugh Glass - On Quest reward (A Bear of an Appetite) - Run Script'),
(26484, 0, 2, 0, 1, 0, 100, 0, 15000, 60000, 90000, 120000, 1, 9, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hugh Glass - OOC - Say'),
(2722100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 19, 27227, 0, 0, 0, 0, 0, 0, 'Tormak the Scarred - Script - Set Orientation'),
(2722100, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Tormak the Scarred - Script - Set NPC Flags'),
(2722100, 9, 2, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Tormak the Scarred - Script - Say Line 1'),
(2722100, 9, 3, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 19, 27227, 0, 0, 0, 0, 0, 0, 'Tormak the Scarred - Script - Say Line 1 on Prospector Rokar'),
(2722100, 9, 4, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Tormak the Scarred - Script - Say Line 2'),
(2722100, 9, 5, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Tormak the Scarred - Script - Say Line 3'),
(2722100, 9, 6, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Tormak the Scarred - Script - Say Line 4'),
(2722100, 9, 7, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 81, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Tormak the Scarred - Script - Set NPC Flags'),
(2722100, 9, 8, 0, 0, 0, 100, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 2.80998, 'Tormak the Scarred - Script - Set Orientation'),
(2722101, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 19, 27227, 0, 0, 0, 0, 0, 0, 'Tormak the Scarred - Script 2 - Set Orientation'),
(2722101, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Tormak the Scarred - Script 2 - Set NPC Flags'),
(2722101, 9, 2, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Tormak the Scarred - Script 2 - Say Line 5'),
(2722101, 9, 3, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 1, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Tormak the Scarred - Script 2 - Say Line 6'),
(2722101, 9, 4, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 19, 27227, 0, 0, 0, 0, 0, 0, 'Tormak the Scarred - Script 2 - Say Line 2 on Prospector Rokar'),
(2722101, 9, 5, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 45, 1, 1, 0, 0, 0, 0, 19, 26666, 0, 0, 0, 0, 0, 0, 'Tormak the Scarred - Script 2 - Set Data 1 1 on Scout Vor''takh'),
(2722101, 9, 6, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 19, 26666, 0, 0, 0, 0, 0, 0, 'Tormak the Scarred - Script - Say Line 1 on Scout Vor''takh'),
(2722101, 9, 7, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 19, 26666, 0, 0, 0, 0, 0, 0, 'Tormak the Scarred - Script - Say Line 2 on Scout Vor''takh'),
(2722101, 9, 8, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 19, 27227, 0, 0, 0, 0, 0, 0, 'Tormak the Scarred - Script 2 - Say Line 3 on Prospector Rokar'),
(2722101, 9, 9, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 19, 26666, 0, 0, 0, 0, 0, 0, 'Tormak the Scarred - Script - Say Line 3 on Scout Vor''takh'),
(2722101, 9, 10, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 19, 26666, 0, 0, 0, 0, 0, 0, 'Tormak the Scarred - Script 2 - Say Line 3 on Scout Vor''takh'),
(2722101, 9, 11, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 1, 6, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Tormak the Scarred - Script 2 - Say Line 7'),
(2722101, 9, 12, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 81, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Tormak the Scarred - Script 2 - Set NPC Flags'),
(2722101, 9, 13, 0, 0, 0, 100, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 2.80998, 'Tormak the Scarred - Script 2 - Set Orientation'),
(2648401, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hugh Glass - Script 2 - Set NPC Flags'),
(2648401, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hugh Glass - Script 2 - Say Line 3'),
(2648401, 9, 2, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hugh Glass - Script 2 - Say Line 4'),
(2648401, 9, 3, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hugh Glass - Script 2 - Say Line 4'),
(2648401, 9, 4, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 1, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hugh Glass - Script 2 - Say Line 4'),
(2648401, 9, 5, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 1, 6, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hugh Glass - Script 2 - Say Line 4'),
(2648401, 9, 6, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 1, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hugh Glass - Script 2 - Say Line 4'),
(2648401, 9, 7, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 1, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hugh Glass - Script 2 - Say Line 4'),
(2648401, 9, 8, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 81, 643, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hugh Glass - Script 2 - Set NPC Flags');

DELETE FROM `waypoints` WHERE `entry` =26666;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(26666, 1,3849.295, -4532.052, 209.5975, 'Scout Vor''takh'),
(26666, 2,3850.295, -4531.552, 209.5975, 'Scout Vor''takh'),
(26666, 3,3851.545, -4530.302, 210.3475, 'Scout Vor''takh'),
(26666, 4,3851.795, -4530.052, 210.3475, 'Scout Vor''takh'),
(26666, 5,3853.545, -4529.802, 209.5975, 'Scout Vor''takh'),
(26666, 6,3855.295, -4529.802, 209.5975, 'Scout Vor''takh'),
(26666, 7,3848.19, -4531.66, 209.344, 'Scout Vor''takh');



--
SET @ENTRY := 17589;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,12000,14000,11,21067,64,0,0,0,0,2,0,0,0,0,0,0,0,'Veridian Broodling - In combat CMC - Spellcast Poison Bolt');

SET @Xarantaur    := 30381;
SET @Stormhoof    := 30388;
SET @Wind         := 30474;
SET @WindImage    := 30550;
SET @Spirit       := 30479;
SET @Ride         := 46598;
SET @DropHorn     := 56892;
SET @Stun         := 46957;

DELETE FROM `creature_text` WHERE `entry` IN (@Xarantaur,@Wind,@Stormhoof,@Spirit,@WindImage);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@Xarantaur, 0, 0, 'And it very nearly didn''t remember you. $N fought bravely against the North Wind to protect your story.', 12, 0, 100, 1, 0, 0, 'Xarantaur'),
(@Xarantaur, 1, 0, 'Your battle with the wind was hundreds of years ago, Stormhoof. You weakened it so much that it has been silent all these years.', 12, 0, 100, 273, 0, 0, 'Xarantaur'),
(@Xarantaur, 2, 0, 'But the North Wind did not silently accept defeat. Instead, it gathered power and bided its time, deciding the best revenge was to destroy your memory, and with it, your village.', 12, 0, 100, 1, 0, 0, 'Xarantaur'),
(@Xarantaur, 3, 0, 'The wind used its minions to distort the history of this place, changing the stories your people told, destroying the spirits of the honored dead.', 12, 0, 100, 1, 0, 0, 'Xarantaur'),
(@Xarantaur, 4, 0, 'It would''ve succeeded if $N and I hadn''t tracked the North Wind''s historical corruptions to their source: your ancient battle.', 12, 0, 100, 1, 0, 0, 'Xarantaur'),
(@Xarantaur, 5, 0, 'With my help, $N travelled back in time to your battle, and ensured that history was set right. The North Wind''s fate was sealed, and your story restored.', 12, 0, 100, 1, 0, 0, 'Xarantaur'),
(@Xarantaur, 6, 0, 'Rest well, hero.', 12, 0, 100, 273, 0, 0, 'Xarantaur'),
(@Xarantaur, 7, 0, 'This isn''t right at all, $n. In the tale Wind Tamer Barah told me, Stormhoof was a hero, not a villain.', 12, 0, 100, 6, 0, 0, 'Xarantaur'),
(@Xarantaur, 8, 0, 'The North Wind is the ancient enemy of the taunka, a ruler among the elements, and the very force which bleeds the life from these ancient people.', 12, 0, 100, 1, 0, 0, 'Xarantaur'),
(@Xarantaur, 9, 0, 'They would rather die than bow before the North Wind. Something is amiss here.', 12, 0, 100, 274, 0, 0, 'Xarantaur'),
(@Xarantaur, 10, 0, 'The Lorehammer...', 12, 0, 100, 25, 0, 0, 'Xarantaur'),
(@Xarantaur, 11, 0, 'It confirms our suspicions. The threads of time have been severed and rewoven in the wrong pattern. But, how?', 12, 0, 100, 1, 0, 0, 'Xarantaur'),
(@Xarantaur, 12, 0, 'There''s no doubt that something has distorted the true history of Stormhoof and the warriors of Camp Tunka''lo. But, what?', 12, 0, 100, 1, 0, 0, 'Xarantaur'),
(@Xarantaur, 13, 0, 'No! The true voice of history will triumph. We will restore all you have destroyed!', 12, 0, 100, 25, 0, 0, 'Xarantaur'),
(@Xarantaur, 14, 0, '$n, we must hurry and discover when the North Wind has started distorting the timeline. Only then can we defeat him and correct it.', 12, 0, 100, 1, 0, 0, 'Xarantaur'),
(@Stormhoof, 0, 0, 'The horn! Use the horn on it while it''s weak!', 14, 0, 100, 0, 0, 0, 'Stormhoof'),
(@Stormhoof, 1, 0, 'Go to the center of the temple and use the Horn of Elemental Fury!', 41, 0, 100, 0, 0, 0, 'Stormhoof'),
(@WindImage, 0, 0, 'Do not trouble yourself, little tauren. Neither Stormhoof, nor you and your ally will stand in my way.', 12, 0, 100, 1, 0, 0, 'Image of the North Wind'),
(@WindImage, 1, 0, 'Even now, my power grows. I have long waited for the day when my revenge would be complete.', 12, 0, 100, 1, 0, 0, 'Image of the North Wind'),
(@WindImage, 2, 0, 'Stormhoof and his kin will be erased from history and these lands will be restored to their rightful owner!', 12, 0, 100, 1, 0, 0, 'Image of the North Wind'),
(@Wind, 0, 0, 'Fool! You will never defeat me!', 14, 0, 100, 0, 0, 0, 'North Wind'),
(@Wind, 1, 0, 'I will never allow you to use the Horn of Elemental Fury against us! Die, weakling!', 14, 0, 100, 0, 0, 0, 'North Wind'),
(@Spirit, 0, 0, 'This is Camp Tunka''lo, the village ruled by my brother, but I... I don''t remember you.', 12, 0, 100, 6, 0, 0, 'Stormhoof''s Spirit'),
(@Spirit, 1, 0, 'The North Wind? It still troubles my people?', 12, 0, 100, 6, 0, 0, 'Stormhoof''s Spirit'),
(@Spirit, 2, 0, 'You both have my thanks and that of the village, though many will never know of your deeds.', 12, 0, 100, 2, 0, 0, 'Stormhoof''s Spirit'),
(@Spirit, 3, 0, 'I cannot remain here. I must return to my cairn where I belong, but when I see the ancestors again, it is I who will tell your story.', 12, 0, 100, 1, 0, 0, 'Stormhoofs Spirit');


UPDATE `creature_model_info` SET `bounding_radius`=0.6249996, `combat_reach`=2.7 WHERE `modelid`=26979;
UPDATE `creature_model_info` SET `bounding_radius`=0.6597218, `combat_reach`=2.85 WHERE `modelid`=26980;

DELETE FROM `creature_equip_template` WHERE `entry`=@Spirit;
INSERT INTO `creature_equip_template` (`entry`,`id`,`itemEntry1`,`itemEntry2`,`itemEntry3`) VALUES
(@Spirit,1,42873,0,0);

UPDATE `creature_template` SET `spell1`=56897,`spell2`=61668,`spell3`=56896,`AIName`='' WHERE `entry`=@Stormhoof;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (@Xarantaur,@Wind,@Spirit,@WindImage);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@Xarantaur,@Stormhoof,@Wind,@Spirit,@WindImage) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@Xarantaur*100,(@Xarantaur*100)+1) AND `source_type`=9;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@Spirit*100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Wind,0,0,0,0,0,100,0,1000,3000,8000,11000,11,61662,0,0,0,0,0,2,0,0,0,0,0,0,0,'North Wind - IC - Cast Cyclone'),
(@Wind,0,1,0,0,0,100,0,1000,8000,12000,16000,11,61663,0,0,0,0,0,2,0,0,0,0,0,0,0,'North Wind - IC - Gust of Wind'),
(@Wind,0,2,3,2,0,100,1,10,20,20000,20000,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,'North Wind - Between 10 and 20% HP - Set faction'),
(@Wind,0,3,4,61,0,100,0,0,0,0,0,1,0,1000,0,0,0,0,1,0,0,0,0,0,0,0,'North Wind - Between 10 and 20% HP - Say line 0'),
(@Wind,0,4,5,61,0,100,0,0,0,0,0,20,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'North Wind - Between 10 and 20% HP - Stop autoattack'),
(@Wind,0,5,6,61,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'North Wind - Between 10 and 20% HP - Stop combat movement'),
(@Wind,0,6,7,61,0,100,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'North Wind - Between 10 and 20% HP - Set homeposition'),
(@Wind,0,7,0,61,0,100,0,0,0,0,0,102,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'North Wind - Between 10 and 20% HP - Stop health regen'),
(@Wind,0,8,9,52,0,100,0,0,@Wind,0,0,1,0,0,0,0,0,0,19,@Stormhoof,20,0,0,0,0,0,'North Wind - Text over - Stormhoof say line 0'),
(@Wind,0,9,10,61,0,100,0,0,0,0,0,1,1,1000,0,0,0,0,19,@Stormhoof,20,0,0,0,0,0,'North Wind - Text over - Spellcast Drop Horn of Elemental Fury'),
(@Wind,0,10,0,61,0,100,0,0,0,0,0,11,@DropHorn,0,0,0,0,0,1,0,0,0,0,0,0,0,'North Wind - Text over - Spellcast Drop Horn of Elemental Fury'),
(@Wind,0,11,12,52,0,100,0,1,@Stormhoof,0,0,28,@Ride,0,0,0,0,0,19,@Stormhoof,20,0,0,0,0,0,'North Wind - Text over - Remove aura Ride Vehicle Hardcoded'),
(@Wind,0,12,13,61,0,100,0,0,0,0,0,11,@Stun,0,0,0,0,0,1,0,0,0,0,0,0,0,'North Wind - Text Over - Spellcast Cosmetic - Stun (Permanent)'),
(@Wind,0,13,0,61,0,100,0,0,0,0,0,1,1,60000,0,0,0,0,1,0,0,0,0,0,0,0,'North Wind - Text Over - Say line 1'),
(@Wind,0,14,15,52,0,100,0,1,@Wind,0,0,2,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'North Wind - Text over - Restore faction'),
(@Wind,0,15,16,61,0,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'North Wind - Text over - Enable autocombat'),
(@Wind,0,16,17,61,0,100,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'North Wind - Text over - Enable combat movement'),
(@Wind,0,17,18,61,0,100,0,0,0,0,0,28,@Stun,0,0,0,0,0,1,0,0,0,0,0,0,0,'North Wind - Text over - Remove aura Cosmetic - Stun (Permanent)'),
(@Wind,0,18,19,61,0,100,0,0,0,0,0,102,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'North Wind - Text over - Start health regen'),
(@Wind,0,19,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'North Wind - Text over - Despawn'),
(@Xarantaur,0,0,1,20,1,100,0,13058,0,0,0,12,@Spirit,8,0,0,0,0,8,0,0,0,7765.307,-2831.78,1216.812,3.577925,'Xarantaur - Quest rewarded (phase 1)- Summon Stormhoof''s Spirit'),
(@Xarantaur,0,1,2,61,0,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Xarantaur - Quest rewarded (phase 1) - Set event phase 0'),
(@Xarantaur,0,2,0,61,0,100,0,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,'Xarantaur - Quest rewarded (phase 1) - Store targetlist'),
(@Xarantaur,0,3,0,11,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Xarantaur - Respawn - Set event phase 1'),
(@Xarantaur,0,4,0,38,0,100,0,0,1,0,0,1,0,0,0,0,0,0,12,1,0,0,0,0,0,0,'Xarantaur - Data 0 1 set - Say line 0'),
(@Xarantaur,0,5,0,38,0,100,0,0,2,0,0,1,4,0,0,0,0,0,12,1,0,0,0,0,0,0,'Xarantaur - Data 0 2 set - Say line 4'),
(@Xarantaur,0,6,0,38,0,100,0,0,3,0,0,1,5,0,0,0,0,0,12,1,0,0,0,0,0,0,'Xarantaur - Data 0 2 set - Say line 5'),
(@Xarantaur,0,7,8,20,1,100,0,13034,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,'Xarantaur - Quest rewarded (The Witness and the Hero)- Store Targetlist'),
(@Xarantaur,0,8,0,61,1,100,0,0,0,0,0,80,@Xarantaur*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Xarantaur - Quest rewarded (The Witness and the Hero)- Run Script 1'),
(@Xarantaur,0,9,10,20,1,100,0,13038,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,'Xarantaur - Quest rewarded (Distortions in Time)- Store Targetlist'),
(@Xarantaur,0,10,0,61,1,100,0,0,0,0,0,80,(@Xarantaur*100)+1,2,0,0,0,0,1,0,0,0,0,0,0,0,'Xarantaur - Quest rewarded (Distortions in Time)- Run Script 2'),
(@Xarantaur*100,9,0,0,0,0,100,0,1000,1000,0,0,1,7,0,0,0,0,0,12,1,0,0,0,0,0,0,'Xarantaur - Script - Say Line 7'),
(@Xarantaur*100,9,1,0,0,0,100,0,6000,6000,0,0,1,8,0,0,0,0,0,12,1,0,0,0,0,0,0,'Xarantaur - Script - Say Line 8'),
(@Xarantaur*100,9,2,0,0,0,100,0,6000,6000,0,0,1,9,0,0,0,0,0,12,1,0,0,0,0,0,0,'Xarantaur - Script - Say Line 9'),
(@Xarantaur*100,9,3,0,0,0,100,0,6000,6000,0,0,1,10,0,0,0,0,0,12,1,0,0,0,0,0,0,'Xarantaur - Script - Say Line 10'),
(@Xarantaur*100,9,4,0,0,0,100,0,6000,6000,0,0,1,11,0,0,0,0,0,12,1,0,0,0,0,0,0,'Xarantaur - Script - Say Line 11'),
(@WindImage, 0, 0, 0, 38, 0, 100, 0, 1, 1, 0, 16000, 11, 57322, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Image of the North Wind - On Data Set - Cast Lightning Nova'),
((@Xarantaur*100)+1,9,0,0,0,0,100,0,1000,1000,0,0,1,12,0,0,0,0,0,12,1,0,0,0,0,0,0,'Xarantaur - Script 2 - Say Line 12'),
((@Xarantaur*100)+1,9,1,0,0,0,100,0,4000,4000,0,0,12,@WindImage,1,18000,0,0,0,8,0,0,0,7761.913, -2830.313, 1216.813, 4.310963,'Xarantaur - Script - Summon Image of the Northwind'),
((@Xarantaur*100)+1,9,2,0,0,0,100,0,1000,1000,0,0,45,1,1,0,0,0,0,19,@WindImage,0,0,0,0,0,0,'Xarantaur - Script 2- Set Data 1 1 to Image of the Northwind'),
((@Xarantaur*100)+1,9,3,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,19,@WindImage,0,0,0,0,0,0,'Xarantaur - Script 2- Say Line 1 (Image of the North Wind)'),
((@Xarantaur*100)+1,9,4,0,0,0,100,0,6000,6000,0,0,1,1,0,0,0,0,0,19,@WindImage,0,0,0,0,0,0,'Xarantaur - Script 2- Say Line 2 (Image of the North Wind)'),
((@Xarantaur*100)+1,9,5,0,0,0,100,0,6000,6000,0,0,1,2,0,0,0,0,0,19,@WindImage,0,0,0,0,0,0,'Xarantaur - Script 2- Say Line 3 (Image of the North Wind)'),
((@Xarantaur*100)+1,9,6,0,0,0,100,0,3000,3000,0,0,45,1,1,0,0,0,0,19,@WindImage,0,0,0,0,0,0,'Xarantaur - Script 2- Set Data 1 1 to Image of the Northwind'),
((@Xarantaur*100)+1,9,7,0,0,0,100,0,3000,3000,0,0,1,13,0,0,0,0,0,12,1,0,0,0,0,0,0,'Xarantaur - Script2 - Say Line 13'),
((@Xarantaur*100)+1,9,8,0,0,0,100,0,6000,6000,0,0,1,14,0,0,0,0,0,12,1,0,0,0,0,0,0,'Xarantaur - Script 2- Say Line 14'),
(@Spirit,0,0,0,54,0,100,0,0,0,0,0,80,@Spirit*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Stormhoof''s Spirit - Just summoned - Run script'),
(@Spirit*100,9,0,0,0,0,100,0,2000,2000,0,0,69,0,0,0,0,0,0,8,0,0,0,7762.596,-2834.026,1216.85,0,'Stormhoof''s Spirit script - Move to position'),
(@Spirit*100,9,1,0,0,0,100,0,2500,2500,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stormhoof''s Spirit script - Say line 0'),
(@Spirit*100,9,2,0,0,0,100,0,6000,6000,0,0,45,0,1,0,0,0,0,19,@Xarantaur,20,0,0,0,0,0,'Stormhoof''s Spirit script - Set data 0 1 Xarantaur'),
(@Spirit*100,9,3,0,0,0,100,0,6000,6000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stormhoof''s Spirit script - Say line 1'),
(@Spirit*100,9,4,0,0,0,100,0,4500,4500,0,0,1,1,0,0,0,0,0,19,@Xarantaur,20,0,0,0,0,0,'Stormhoof''s Spirit script - Xarantaur say line 1'),
(@Spirit*100,9,5,0,0,0,100,0,7000,7000,0,0,1,2,0,0,0,0,0,19,@Xarantaur,20,0,0,0,0,0,'Stormhoof''s Spirit script - Xarantaur say line 2'),
(@Spirit*100,9,6,0,0,0,100,0,7000,7000,0,0,1,3,0,0,0,0,0,19,@Xarantaur,20,0,0,0,0,0,'Stormhoof''s Spirit script - Xarantaur say line 3'),
(@Spirit*100,9,7,0,0,0,100,0,6000,6000,0,0,45,0,2,0,0,0,0,19,@Xarantaur,20,0,0,0,0,0,'Stormhoof''s Spirit script - Set data 0 2 Xarantaur'),
(@Spirit*100,9,8,0,0,0,100,0,6000,6000,0,0,45,0,3,0,0,0,0,19,@Xarantaur,20,0,0,0,0,0,'Stormhoof''s Spirit script - Set data 0 3 Xarantaur'),
(@Spirit*100,9,9,0,0,0,100,0,6000,6000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stormhoof''s Spirit script - Say line 2'),
(@Spirit*100,9,10,0,0,0,100,0,6000,6000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stormhoof''s Spirit script - Say line 3'),
(@Spirit*100,9,11,0,0,0,100,0,6000,6000,0,0,1,6,0,0,0,0,0,19,@Xarantaur,20,0,0,0,0,0,'Stormhoof''s Spirit script - Xarantaur say line 6'),
(@Spirit*100,9,12,0,0,0,100,0,3000,3000,0,0,5,66,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stormhoof''s Spirit script - Play emote'),
(@Spirit*100,9,13,0,0,0,100,0,3000,3000,0,0,69,0,0,0,0,0,0,8,0,0,0,7765.107,-2832.312,1216.809,0,'Stormhoof''s Spirit script - Move to position'),
(@Spirit*100,9,14,0,0,0,100,0,2500,2500,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stormhoof''s Spirit script - Set orientation');


DELETE FROM `creature_template_addon` WHERE `entry`=@WindImage;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `auras`) VALUES
(@WindImage, 0, 0x2000000, 0x1, ''); -- 30550


UPDATE `creature_template` SET `unit_flags`=768,`AIName`='SmartAI' WHERE  `entry`=29775;

DELETE FROM `smart_scripts` WHERE `entryorguid` =2977500 AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=29775 AND `source_type`=0;

INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(29775,0,0,0,54,0,100,0,0,0,0,0,80,2977500,2,0,0,0,0,1,0,0,0,0,0,0,0,"Archivist Mechaton - On Just Summoned - Run Script"),
(29775,0,1,0,7,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Archivist Mechaton - On Evade - Despawn"),
(2977500,9,0,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Archivist Mechaton - Script - Say Line 1"),
(2977500,9,1,0,0,0,100,0,6000,6000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Archivist Mechaton - Script - Say Line 2"),
(2977500,9,2,0,0,0,100,0,6000,6000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Archivist Mechaton - Script - Say Line 3"),
(2977500,9,3,0,0,0,100,0,6000,6000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Archivist Mechaton - Script - Say Line 4"),
(2977500,9,4,0,0,0,100,0,6000,6000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Archivist Mechaton - Script - Say Line 5"),
(2977500,9,5,0,0,0,100,0,6000,6000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,"Archivist Mechaton - Script - Say Line 6"),
(2977500,9,6,0,0,0,100,0,6000,6000,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"Archivist Mechaton - Script - Say Line 7"),
(2977500,9,7,0,0,0,100,0,0,0,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Archivist Mechaton - Script - Remove Unit Flags"),
(2977500,9,8,0,0,0,100,0,0,0,0,0,49,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Archivist Mechaton - Script - Remove Unit Flags");

DELETE FROM `creature_text` WHERE `entry`=29775;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(29775, 0, 0, 'Use of the Inventor''s Disk detected. Emergency protocol gamma activated.', 12, 0, 100, 0, 0, 0, 'Archivist Mechaton'),
(29775, 1, 0, 'Verifying status of Norgannon''s shell.', 12, 0, 100, 0, 0, 0, 'Archivist Mechaton'),
(29775, 2, 0, 'Norgannon''s shell accounted for and secure. It will be available for transfer once user''s identity has been verified.', 12, 0, 100, 1, 0, 0, 'Archivist Mechaton'),
(29775, 3, 0, 'Standby to verify identity as Keeper Mimir.', 12, 0, 100, 1, 0, 0, 'Archivist Mechaton'),
(29775, 4, 0, 'Identity verification failed. User is not Keeper Mimir.', 12, 0, 100, 25, 0, 0, 'Archivist Mechaton'),
(29775, 5, 0, 'The Inventor''s Disk has fallen into the hands of an unauthorized user.  Activating defense protocol.', 12, 0, 100, 0, 0, 0, 'Archivist Mechaton'),
(29775, 6, 0, 'Impostor must be dealt with. The Inventor''s Disk must be recovered.', 12, 0, 100, 5, 0, 0, 'Archivist Mechaton');


UPDATE `smart_scripts` SET `action_param2`=77 WHERE  `entryorguid`=3019000 AND `source_type`=9 AND `id`=2;
UPDATE `smart_scripts` SET `action_param2`=30 WHERE  `entryorguid`=2856608 AND `source_type`=9 AND `id`=1;
UPDATE `smart_scripts` SET `action_param2`=20 WHERE  `entryorguid`=1814200 AND `source_type`=9 AND `id` IN(0,3,4,5);
UPDATE `smart_scripts` SET `action_param2`=20 WHERE  `entryorguid`=1814300 AND `source_type`=9 AND `id` IN(0,1,2,4,5);
UPDATE `smart_scripts` SET `action_param2`=20 WHERE  `entryorguid`=1814400 AND `source_type`=9 AND `id` IN(0,2,3,4);
UPDATE `smart_scripts` SET `action_param2`=20 WHERE  `entryorguid`=1811000 AND `source_type`=9 AND `id` IN(0,1,2,3,4,5,6);
UPDATE `smart_scripts` SET `action_param2`=60 WHERE  `entryorguid`=24170 AND `source_type`=0 AND `id`=0;
UPDATE `smart_scripts` SET `action_param2`=60 WHERE  `entryorguid`=177490 AND `source_type`=1 AND `id` IN(0,2);
UPDATE `smart_scripts` SET `action_param2`=42 WHERE  `entryorguid`=3327300 AND `source_type`=9 AND `id`=0;
UPDATE `smart_scripts` SET `action_param2`=20 WHERE  `entryorguid`=3327300 AND `source_type`=9 AND `id`=5;
UPDATE `smart_scripts` SET `action_param2`=30 WHERE  `entryorguid`=3249702 AND `source_type`=9 AND `id`=0;
UPDATE `smart_scripts` SET `action_param2`=30 WHERE  `entryorguid` IN(3249700,3249701) AND `source_type`=9 AND `id`=0;
UPDATE `smart_scripts` SET `action_param2`=120 WHERE  `entryorguid` IN(2397400,2397401,2397402,2397403) AND `source_type`=9 AND `id`=0;
UPDATE `smart_scripts` SET `action_param2`=30 WHERE  `entryorguid`=21926 AND `source_type`=0 AND `id`=0;
UPDATE `smart_scripts` SET `action_param2`=60 WHERE  `entryorguid`=3685607 AND `source_type`=9 AND `id`=4;
UPDATE `smart_scripts` SET `action_param2`=4 WHERE  `entryorguid`=15951 AND `source_type`=0 AND `id`=0;
UPDATE `smart_scripts` SET `action_param2`=60 WHERE  `entryorguid`=20226 AND `source_type`=0 AND `id`=1;

UPDATE `smart_scripts` SET `event_flags`=0 WHERE  `entryorguid`=5261 AND `source_type`=0 AND `id`=0;
UPDATE `smart_scripts` SET `event_flags`=0 WHERE  `entryorguid`=5263 AND `source_type`=0 AND `id`=0;
UPDATE `smart_scripts` SET `event_flags`=0 WHERE  `entryorguid`=5269 AND `source_type`=0 AND `id`IN(0,1,2);
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=5269 AND `source_type`=0 AND `id`IN(3);

UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE  `entry`=190590;
DELETE FROM `smart_scripts` WHERE `entryorguid`=190590 AND  `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(190590,1,0,0,70,0,100,0,2,0,0,0,70,60,0,0,0,0,0,1,0,0,0,0,0,0,0,'Unstable Explosives - On State Changed - Despawn for 60 sec');


UPDATE `creature_template` SET `ainame`='SmartAI', `scriptname`='' WHERE `entry` IN(28244,28333,28175,28176,28177,28178,28284);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN(28244,28333,28175,28176,28177,28178,28284) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN(2824400,2817500,2817600,2817700,2817800,2833300,2828400,2828401,2878000) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(28284, 0, 0, 0, 20, 0, 100, 0, 12553, 0, 0, 0, 80, 2828400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Specialist Cogwheel - On Quest Reward (Skimmer Spinnerets) - Run Script 1'), 
(28284, 0, 1, 0, 20, 0, 100, 0, 12583, 0, 0, 0, 80, 2828401, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Specialist Cogwheel - On Quest Reward (Crashed Sprayer) - Run Script 2'), 
(28244, 0, 0, 1, 20, 0, 100, 0, 12584, 0, 0, 0, 1, 6, 0, 0, 0, 0, 0, 19, 28178, 0, 0, 0, 0, 0, 0, 'Eitrigg - On Quest Reward (Pure Evil) - Say Line 7 on Avenger Metz'), 
(28244, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 53, 0, 28244, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Eitrigg - On Quest Reward (Pure Evil) - Start WP'), 
(28244, 0, 2, 3, 40, 0, 100, 0, 1, 28244, 0, 0, 80, 2824400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Eitrigg - On Reached WP2 - Run Script'), 
(28244, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 54, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Eitrigg - On Reached WP2 - Pause WP'), 
(28244, 0, 4, 0, 40, 0, 100, 0, 3, 28244, 0, 0, 54, 100000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Eitrigg - On Reached WP3 - Pause WP'), 
(28244, 0, 5, 0, 40, 0, 100, 0, 4, 28244, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1.56042, 'Eitrigg - On Reached WP4 - Set Orientation'), 
(28175, 0, 0, 1, 38, 0, 100, 0, 1, 1, 0, 0, 66, 0, 0, 0, 0, 0, 0, 19, 28244, 0, 0, 0, 0, 0, 0, 'Crusade Commander Korfax - On Data Set 1 1 - Set Orientation'), 
(28175, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Crusade Commander Korfax - On Data Set 1 1 - Say Line 1'), 
(28175, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 53, 0, 28175, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Crusade Commander Korfax - On Data Set 1 1 - Start WP'), 
(28175, 0, 3, 0, 40, 0, 100, 0, 1, 28175, 0, 0, 80, 2817500, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Crusade Commander Korfax - On Reached WP4 - Run Script'), 
(28175, 0, 4, 0, 40, 0, 100, 0, 1, 28175, 0, 0, 54, 18000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Crusade Commander Korfax - On Reached WP3 - Pause WP'), 
(28175, 0, 5, 0, 40, 0, 100, 0, 5, 28175, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1.54325, 'Crusade Commander Korfax - On Reached WP5 - Set Orientation'), 
(28176, 0, 0, 0, 38, 0, 100, 0, 1, 1, 0, 0, 80, 2817600, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rimblat Earthshatter - On Data Set - Run Script'), 
(28177, 0, 0, 0, 38, 0, 100, 0, 1, 1, 0, 0, 80, 2817700, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rayne - On Data Set - Run Script'), 
(28178, 0, 0, 0, 38, 0, 100, 0, 1, 1, 0, 0, 80, 2817800, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Avenger Metz - On Data Set - Run Script'), 
(28333, 0, 0, 0, 38, 0, 100, 0, 1, 1, 0, 0, 11, 32567, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'ELM General Purpose Bunny (scale x0.25) - On Data Set 1 1 - Cast Green Banish State'), 
(28333, 0, 1, 0, 38, 0, 100, 0, 2, 2, 0, 0, 28, 32567, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'ELM General Purpose Bunny (scale x0.25) - On Data Set 2 2 - Remove Green Banish State'), 
(28333, 0, 2, 0, 38, 0, 100, 0, 3, 3, 0, 0, 11, 51367, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'ELM General Purpose Bunny (scale x0.25) - On Data Set 3 3 - Cast Pure Evil: Entangling Roots Visual'), 
(28333, 0, 3, 4, 38, 0, 100, 0, 4, 4, 0, 0, 28, 51367, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'ELM General Purpose Bunny (scale x0.25) - On Data Set 4 4 - Remove Pure Evil: Entangling Roots Visual'), 
(28333, 0, 4, 0, 61, 0, 100, 0, 4, 4, 0, 0, 11, 35487, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'ELM General Purpose Bunny (scale x0.25) - On Data Set 4 4 - Cast Seed of Revitalization Lightning Cloud Visual'), 
(28333, 0, 5, 0, 38, 0, 100, 0, 5, 5, 0, 0, 80, 2833300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'ELM General Purpose Bunny (scale x0.25) - On Data Set 5 5 - Run Script'), 
(2878000, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Explosive Charges Bunny - On Script - Say Line 0'),
(2878000, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Explosive Charges Bunny - On Script - Say Line 1'),
(2878000, 9, 2, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Explosive Charges Bunny - On Script - Say Line 2'),
(2878000, 9, 3, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Explosive Charges Bunny - On Script - Say Line 3'),
(2878000, 9, 4, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Explosive Charges Bunny - On Script - Say Line 4'),
(2878000, 9, 5, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 11, 52322, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Explosive Charges Bunny - On Script - Cast \'Detonate Charges\''),
(2878000, 9, 6, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 52346, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Explosive Charges Bunny - On Script - Cast \'Kill Credit\''),
(2828400, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0,0, 1, 0, 0, 0, 0, 0, 0, 0, 'Specialist Cogwheel - Script  1 - Say Line 0'), 
(2828400, 9, 1, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 11, 51322, 0, 0, 0, 0,0, 1, 0, 0, 0, 0, 0, 0, 0, 'Specialist Cogwheel - Script  1 - Cast Webbed'), 
(2828400, 9, 2, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 1, 0, 0, 0, 0,0, 1, 0, 0, 0, 0, 0, 0, 0, 'Specialist Cogwheel - Script  1 - Say Line 1'), 
(2828400, 9, 3, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 28, 51322, 0, 0, 0, 0,0, 1, 0, 0, 0, 0, 0, 0, 0, 'Specialist Cogwheel - Script  1 - Remove Aura - Webbed'), 
(2828401, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0,0, 1, 0, 0, 0, 0, 0, 0, 0, 'Specialist Cogwheel - Script  2 - Say Line 2'), 
(2828401, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5, 233, 0, 0, 0, 0,0, 1, 0, 0, 0, 0, 0, 0, 0, 'Specialist Cogwheel - Script  2 - Play emote 233'), 
(2828401, 9, 2, 0, 0, 0, 100, 0, 7000, 7000, 0, 0, 1, 3, 0, 0, 0, 0,0, 1, 0, 0, 0, 0, 0, 0, 0, 'Specialist Cogwheel - Script  2 - Say Line 3'), 
(2833300, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 51394, 0, 0, 0, 0,0, 1, 0, 0, 0, 0, 0, 0, 0, 'ELM General Purpose Bunny (scale x0.25) - Script - Cast Decimate State'), 
(2833300, 9, 1, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 11, 51393, 0, 0,0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'ELM General Purpose Bunny (scale x0.25) - Script - Cast Pure Evil: Saronite Knockback'), 
(2833300, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 28, 51394, 0, 0, 0, 0,0, 1, 0, 0, 0, 0, 0, 0, 0, 'ELM General Purpose Bunny (scale x0.25) - Script - Remove Decimate State'), 
(2817500, 9, 0, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 1, 0, 0, 0, 0,0, 1, 0, 0, 0, 0, 0, 0, 0, 'Crusade Commander Korfax - Script - Say Line 2'), 
(2817500, 9, 1, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 1, 2, 0, 0, 0, 0,0, 1, 0, 0, 0, 0, 0, 0, 0, 'Crusade Commander Korfax - Script - Say Line 3'), 
(2817500, 9, 2, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 11, 51396, 0, 0, 0,0, 0, 19, 28333, 0, 0, 0, 0, 0, 0, 'Crusade Commander Korfax - Script - Cast Pure Evil: Korfaxs Cleave'), 
(2817500, 9, 3, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 11, 51396, 0, 0, 0,0, 0, 19, 28333, 0, 0, 0, 0, 0, 0, 'Crusade Commander Korfax - Script - Cast Pure Evil: Korfaxs Cleave'), 
(2817500, 9, 4, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 11, 51396, 0, 0, 0,0, 0, 19, 28333, 0, 0, 0, 0, 0, 0, 'Crusade Commander Korfax - Script - Cast Pure Evil: Korfaxs Cleave'), 
(2817500, 9, 5, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 3, 0, 0, 0, 0,0, 1, 0, 0, 0, 0, 0, 0, 0, 'Crusade Commander Korfax - Script - Say Line 3'), 
(2817600, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 51380, 0, 0, 0, 0,0, 10, 112373, 28333, 0, 0, 0, 0, 0, 'Rimblat Earthshatter - Script - Cast Lightning & Ice Channeling'), 
(2817600, 9, 1, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 28, 51380, 0, 0, 0,0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rimblat Earthshatter - Script - Remove Lightning & Ice Channeling'), 
(2817600, 9, 2, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 1, 0, 0, 0, 0,0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rimblat Earthshatter - Script - Say Line'), 
(2817700, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 28892, 0, 0, 0, 0,0, 10, 112373, 28333, 0, 0, 0, 0, 0, 'Rayne - Script - Cast Nature Channeling'), 
(2817700, 9, 1, 0, 0, 0, 100, 0, 500, 500, 0, 0, 45, 3, 3, 0, 0, 0,0, 10, 112373, 28333, 0, 0, 0, 0, 0, 'Rayne - Script - Set Data 3 3 ELM General Purpose Bunny (scale x0.25)'), 
(2817700, 9, 2, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 28, 28892, 0, 0,0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rayne - Script - Remove Nature Channeling'), 
(2817700, 9, 3, 0, 0, 0, 100, 0, 100, 100, 0, 0, 45, 4, 4, 0, 0, 0,0, 10, 112373, 28333, 0, 0, 0, 0, 0, 'Rayne - Script - Set Data 4 4 ELM General Purpose Bunny (scale x0.25)'), 
(2817700, 9, 4, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 0, 0, 0, 0, 0,0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rayne - Script - Say Line'), 
(2817800, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0,0, 1, 0, 0, 0, 0, 0, 0, 0, 'Avenger Metz - Script - Say Line 4'), 
(2817800, 9, 1, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 66, 0, 0, 0, 0, 0,0, 19, 28333, 0, 0, 0, 0, 0, 0, 'Avenger Metz - Script - Set Orientation'), 
(2817800, 9, 2, 0, 0, 0, 100, 0, 500, 500, 0, 0, 11, 51384, 0, 0, 0, 0,0, 19, 28333, 0, 0, 0, 0, 0, 0, 'Avenger Metz - Script - Cast Hammer of Wrath'), 
(2817800, 9, 4, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 45, 5, 5, 0, 0, 0,0, 10, 112373, 28333, 0, 0, 0, 0, 0, 'Rayne - Script - Set Data 5 5 ELM General Purpose Bunny (scale x0.25)'), 
(2817800, 9, 5, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 1, 4, 0, 0, 0, 0,0, 1, 0, 0, 0, 0, 0, 0, 0, 'Avenger Metz - Script - Say Line 5'), 
(2824400, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0,0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Eitrigg - Script - Say Line 1'), 
(2824400, 9, 1, 0, 0, 0, 100, 0, 500, 500, 0, 0, 45, 1, 1, 0,0, 0, 0, 10, 112373, 28333, 0, 0, 0, 0, 0, 'Eitrigg - Script - Set Data 1 1 ELM General Purpose Bunny (scale x0.25)'), 
(2824400, 9, 2, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 1, 1, 0, 0,0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Eitrigg - Script - Say Line 2'), 
(2824400, 9, 3, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 45, 1, 1, 0,0, 0, 0, 19, 28175, 0, 0, 0, 0, 0, 0, 'Eitrigg - Script - Set Data 1 1 on Crusade Commander Korfax'), 
(2824400, 9, 4, 0, 0, 0, 100, 0, 16000, 16000, 0, 0, 1, 0, 0, 0, 0,0, 0, 19, 28178, 0, 0, 0, 0, 0, 0, 'Eitrigg - Script - Say Line 1 on Avenger Metz'), 
(2824400, 9, 5, 0, 0, 0, 100, 0, 17000, 17000, 0, 0, 1, 2, 0, 0, 0,0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Eitrigg - Script - Say Line 3'), 
(2824400, 9, 6, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 1, 0, 0, 0, 0, 0,0, 19, 28176, 0, 0, 0, 0, 0, 0, 'Eitrigg - Script - Say Line on Rimblat Earthshatter'), 
(2824400, 9, 7, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 45, 1, 1, 0, 0, 0,0, 19, 28176, 0, 0, 0, 0, 0, 0, 'Eitrigg - Script - Set Data on Rimblat Earthshatter'), 
(2824400, 9, 8, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 45, 1, 1, 0, 0, 0,0, 19, 28177, 0, 0, 0, 0, 0, 0, 'Eitrigg - Script - Set Data  on Rayne'), 
(2824400, 9, 9, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 1, 1, 0, 0, 0, 0,0, 19, 28178, 0, 0, 0, 0, 0, 0, 'Eitrigg - Script - Say Line 2 on Avenger Metz'), 
(2824400, 9, 10, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 1, 3, 0, 0, 0, 0,0, 1, 0, 0, 0, 0, 0, 0, 0, 'Eitrigg - Script - Say Line 4'), 
(2824400, 9, 11, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 1, 2, 0, 0, 0, 0,0, 19, 28178, 0, 0, 0, 0, 0, 0, 'Eitrigg - Script - Say Line 3 on Avenger Metz'), 
(2824400, 9, 12, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 1, 4, 0, 0, 0, 0,0, 1, 0, 0, 0, 0, 0, 0, 0, 'Eitrigg - Script - Say Line 5'), 
(2824400, 9, 13, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 45, 1, 1, 0, 0, 0,0, 19, 28178, 0, 0, 0, 0, 0, 0, 'Eitrigg - Script - Set Data on Avenger Metz'), 
(2824400, 9, 14, 0, 0, 0, 100, 0, 11000, 11000, 0, 0, 1, 4, 0, 0, 0, 0,0, 19, 28175, 0, 0, 0, 0, 0, 0, 'Eitrigg - Script - Say Line 5 on Crusade Commander Korfax'), 
(2824400, 9, 15, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0,0, 19, 28177, 0, 0, 0, 0, 0, 0, 'Eitrigg - Script - Say Line 2 on Rayne'), 
(2824400, 9, 16, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 5, 0, 0, 0, 0,0, 19, 28178, 0, 0, 0, 0, 0, 0, 'Eitrigg - Script - Say Line 6 on Avenger Metz'), 
(2824400, 9, 17, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 1, 5, 0, 0,0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Eitrigg - Script - Say Line 6'), 
(2824400, 9, 18, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 1, 6, 0, 0,0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Eitrigg - Script - Say Line 7'), 
(2824400, 9, 19, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 1, 7, 0, 0,0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Eitrigg - Script - Say Line 8'), 
(2824400, 9, 20, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 6, 0, 0, 0, 0,0, 19, 28178, 0, 0, 0, 0, 0, 0, 'Eitrigg - Script - Say Line 6 on Avenger Metz'),
(2824400, 9, 21, 0, 0, 0, 100, 0, 500, 500, 0, 0, 45, 2, 2, 0,0, 0, 0, 10, 112373, 28333, 0, 0, 0, 0, 0, 'Eitrigg - Script - Set Data 2 2 ELM General Purpose Bunny (scale x0.25)');

DELETE FROM `creature_text` WHERE `entry` IN(28176,28175,28177,28178,28244,28284,28780,28479,28514,28515,28516,28517);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(28479, 0, 0, 'Gods of old, we beseech you. What must we do? How can we save the gods of this land?', 15, 0, 100, 6, 0, 0, 'Witch Doctor Khufu'),
(28514, 0, 0, 'But try they must or all will be lost. The Drakkari will be the death of both themselves and their gods!', 12, 0, 100, 0, 0, 473, 'Nalorakk'),
(28515, 0, 0, 'The spotted one must be sought. Their fates are entwined.', 12, 0, 100, 0, 0, 9919, 'Jan''alai'),
(28516, 0, 0, 'But she is chained. A way must be found to free her.', 12, 0, 100, 0, 0, 12196, 'Akil''zon'),
(28517, 0, 0, 'To her altar this mortal must travel. What they must do will not be easy. In the end it may prove impossible.', 12, 0, 100, 0, 0, 643, 'Halazzi'),
(28176, 0, 0, 'Let us see if it is truly impervious.', 12, 0, 100, 1, 0, 0, 'Rimblat Earthshatter'),
(28176, 1, 0, 'Nothing.', 12, 0, 100, 1, 0, 0, 'Rimblat Earthshatter'),
(28175, 0, 0, 'Saronite you say?', 12, 0, 100, 0, 0, 0, 'Crusade Commander Korfax'),
(28175, 1, 0, 'Never heard of it. Looks like pure evil.', 12, 0, 100, 6, 0, 0, 'Crusade Commander Korfax'),
(28175, 2, 0, 'Let''s see how it holds up to the might of my axe!', 12, 0, 100, 0, 0, 0, 'Crusade Commander Korfax'),
(28175, 3, 0, 'What the? My reaper didn''t even scratch it! That''s the toughest ore I''ve ever seen!', 12, 0, 100, 0, 0, 0, 'Crusade Commander Korfax'),
(28175, 4, 0, 'Oof!', 12, 0, 100, 0, 0, 9410, 'Crusade Commander Korfax'),
(28177, 0, 0, 'By the Goddess. It''s as if Nature can''t touch it!', 12, 0, 100, 5, 0, 0, 'Rayne'),
(28177, 1, 0, 'Gah!', 12, 0, 100, 0, 0, 9410, 'Rayne'),
(28178, 0, 0, '%s rolls his eyes.', 16, 0, 100, 0, 0, 0, 'Avenger Metz'),
(28178, 1, 0, 'No surprise there.', 12, 0, 100, 0, 0, 0, 'Avenger Metz'),
(28178, 2, 0, 'What?', 12, 0, 100, 0, 0, 0, 'Avenger Metz'),
(28178, 3, 0, 'Fine. Just remember though, the power of the Holy Light isn''t something to be invoked casually, brother.', 12, 0, 100, 1, 0, 0, 'Avenger Metz'),
(28178, 4, 0, 'What''s it doing?!', 12, 0, 100, 5, 0, 0, 'Avenger Metz'),
(28178, 5, 0, 'Whoa!', 12, 0, 100, 0, 0, 9410, 'Avenger Metz'),
(28178, 6, 0, '%s grunts.', 16, 0, 100, 0, 0, 0, 'Avenger Metz'),
(28244, 0, 0, 'Now we will see why this ore is so important to the Scourge.', 12, 0, 100, 16, 0, 0, 'Eitrigg'),
(28244, 1, 0, 'Korfax, what can you tell from this saronite?', 12, 0, 100, 6, 0, 0, 'Eitrigg'),
(28244, 2, 0, 'Rayne, Rimblat, what about the power of nature and the elements?', 12, 0, 100, 6, 0, 0, 'Eitrigg'),
(28244, 3, 0, 'Metz?', 12, 0, 100, 6, 0, 0, 'Eitrigg'),
(28244, 4, 0, 'You know what.', 12, 0, 100, 25, 0, 0, 'Eitrigg'),
(28244, 5, 0, '%s dusts himself off.', 16, 0, 100, 0, 0, 9410, 'Eitrigg'),
(28244, 6, 0, 'Clearly this is getting us nowhere. We need to get this saronite to Highlord Fordring for further study.', 12, 0, 100, 1, 0, 0, 'Eitrigg'),
(28244, 7, 0, 'Thank you for trying, my friends. We''ll unlock its secrets. Hopefully before it''s too late.', 12, 0, 100, 1, 0, 0, 'Eitrigg'),
(28284, 0, 0, 'Oh, these are sticky! I wonder how they shoot the webbing?', 12, 0, 100, 0, 0, 0, 'Specialist Cogwheel'),
(28284, 1, 0, 'ACK! Oh no, I webbed myself! It''s sticky. MY HAIR!', 12, 0, 100, 15, 0, 6906, 'Specialist Cogwheel'),
(28284, 2, 0, 'Okay! Let me just see if I can fashion these disgusting parts into something useful.', 12, 0, 100, 0, 0, 0, 'Specialist Cogwheel'),
(28284, 3, 0, 'Eureka!', 12, 0, 100, 4, 0, 0, 'Specialist Cogwheel'),
(28780, 0, 0, 'Explosive Charges will detonate in 5 seconds...', 16, 0, 100, 0, 0, 0, 'Explosive Charges Bunny'),
(28780, 1, 0, 'Explosive Charges will detonate in 4 seconds...', 16, 0, 100, 0, 0, 0, 'Explosive Charges Bunny'),
(28780, 2, 0, 'Explosive Charges will detonate in 3 seconds...', 16, 0, 100, 0, 0, 0, 'Explosive Charges Bunny'),
(28780, 3, 0, 'Explosive Charges will detonate in 2 seconds...', 16, 0, 100, 0, 0, 0, 'Explosive Charges Bunny'),
(28780, 4, 0, 'Explosive Charges will detonate in 1 seconds...', 16, 0, 100, 0, 0, 0, 'Explosive Charges Bunny');

DELETE FROM `waypoints` WHERE `entry` IN(28175,28244);

INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(28175, 1,5448.54, -2645.614, 305.619, 'Crusade Commander Korfax'),
(28175, 2,5448.541, -2644.614, 305.619, 'Crusade Commander Korfax'),
(28175, 3,5448.541, -2643.614, 305.869, 'Crusade Commander Korfax'),
(28175, 4,5448.541, -2642.114, 306.119, 'Crusade Commander Korfax'),
(28175, 5,5448.66, -2639.83, 306.551, 'Crusade Commander Korfax'),
(28244, 1,5450.109, -2642.323, 306.6346, 'Eitrigg'),
(28244, 2,5450.109, -2643.323, 306.1346, 'Eitrigg'),
(28244, 3,5450.109, -2644.573, 305.8846, 'Eitrigg'),
(28244, 4,5450.15, -2639.06, 306.551, 'Eitrigg');

DELETE FROM `spell_scripts` WHERE `id`=51862;
INSERT INTO `spell_scripts` (`id`,`effIndex`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES
(51862,0,0,15,51861,0,0,0,0,0,0),
(51862,0,0,15,52452,0,0,0,0,0,0),
(51862,0,0,15,52453,0,0,0,0,0,0),
(51862,0,0,15,52454,0,0,0,0,0,0);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (51861,52452,52453,52454);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,51861,0,0,31,0,3,23837,98547,0,0,'','Spell Breaking Through Jin''Alai: Summon Akil''zon targets ELM General Purpose Bunny'),
(13,1,52452,0,0,31,0,3,23837,98549,0,0,'','Spell Breaking Through Jin''Alai: Summon Jan''Alai targets ELM General Purpose Bunny'),
(13,1,52453,0,0,31,0,3,23837,98546,0,0,'','Spell Breaking Through Jin''Alai: Summon Halazzi targets ELM General Purpose Bunny'),
(13,1,52454,0,0,31,0,3,23837,98548,0,0,'','Spell Breaking Through Jin''Alai: Summon Nalorakk targets ELM General Purpose Bunny');

DELETE FROM `creature_template_addon` WHERE `entry` IN (28514,28515,28516,28517);
INSERT INTO `creature_template_addon` (`entry`,`bytes1`,`bytes2`) VALUES
(28514,0,1),
(28515,0,1),
(28516,33554432,1),
(28517,0,1);

UPDATE `creature_template` SET `minlevel`=83, `maxlevel`=83, `unit_flags`=512|256 WHERE `entry` IN (28514,28515,28516,28517);
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry` IN(28479,28514,28515,28516,28517);
DELETE FROM `smart_scripts` WHERE `entryorguid` =28479 AND `source_type`=0 AND `id` IN (6,7);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN(28514,28515,28516,28517) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` =2847900 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(28479, 0, 6, 7, 20, 0, 100, 0, 12627, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Witch Doctor Khufu - On Quest Reward (Breaking Through Jin''Alai) - Say'), 
(28479, 0, 7, 0, 61, 0, 100, 0, 0, 0, 0, 0, 80, 2847900, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Witch Doctor Khufu - On Quest Reward (Breaking Through Jin''Alai) - Run Script'), 
(28514, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 11, 35426, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Nalorakk - On Just Summoned - Cast Arcane Explosion Visual'), 
(28515, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 11, 35426, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Jan''alai - On Just Summoned - Cast Arcane Explosion Visual'), 
(28516, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 11, 35426, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Akil''zon - On Just Summoned - Cast Arcane Explosion Visual'), 
(28517, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 11, 35426, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Halazzi - On Just Summoned - Cast Arcane Explosion Visual'), 
(2847900, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Witch Doctor Khufu - Script - Set NPC Flags'),  
(2847900, 9, 5, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 19, 28515, 0, 0, 0, 0, 0, 0, 'Witch Doctor Khufu - Script - Say Line (Jan alai)'), 
(2847900, 9, 6, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 19, 28516, 0, 0, 0, 0, 0, 0, 'Witch Doctor Khufu - Script - Say Line (Akil zon)'), 
(2847900, 9, 7, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 19, 28517, 0, 0, 0, 0, 0, 0, 'Witch Doctor Khufu - Script - Say Line (Halazzi)'), 
(2847900, 9, 8, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 19, 28514, 0, 0, 0, 0, 0, 0, 'Witch Doctor Khufu - Script - Say Line (Nalorakk)'), 
(2847900, 9, 9, 0, 0, 0, 100, 0, 20000, 20000, 0, 0, 81, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Witch Doctor Khufu - Script - Set NPC Flags'); 

-- Nature's Reprisal (13946) quest script
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` = 65455;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 65455, 0, 0, 31, 0, 3, 2002, 0, 0, 0, 0, '', 'Nature''s Fury can hit only Rascal Sprite'),
(13, 1, 65455, 0, 1, 31, 0, 3, 2003, 0, 0, 0, 0, '', 'Nature''s Fury can hit only Shadow Sprite'),
(13, 1, 65455, 0, 2, 31, 0, 3, 2004, 0, 0, 0, 0, '', 'Nature''s Fury can hit only Dark Sprite');
UPDATE `creature_template` SET `AIName` = "SmartAI" WHERE `entry` IN (2002, 2003, 2004);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2002, 2003, 2004);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2002, 0, 0, 0, 8, 0, 100, 1, 65455, 0, 0, 0, 33, 34440, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Rascal Sprite - on spell hit (65455) - give quest credit (34440)'),
(2003, 0, 0, 0, 8, 0, 100, 1, 65455, 0, 0, 0, 33, 34440, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Shadow Sprite - on spell hit (65455) - give quest credit (34440)'),
(2004, 0, 0, 0, 8, 0, 100, 1, 65455, 0, 0, 0, 33, 34440, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Dark Sprite - on spell hit (65455) - give quest credit (34440)');
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (65455, -65462);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(65455, 65462, 1, 'Nature''s Fury - root and shrink effect'),
(-65462, 65456, 0, 'Nature''s Fury - explode effect');










































