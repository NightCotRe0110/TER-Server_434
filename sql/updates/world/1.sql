--- Feeling Crabby? Quest

UPDATE creature_template SET npcflag=1, AIName='SmartAI' WHERE entry=42339 LIMIT 1;

--- Script
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES (42339, 0, 0, 1, 64, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Canal Crab On Gossip Hello - Gossip Close');
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES (42339, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 56, 57175, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Canal Crab On Gossip Hello - Add item');
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES (42339, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Canal Crab On Gossip Hello - Despawn');

--- Condition
INSERT INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, SourceId, ElseGroup, ConditionTypeOrReference, ConditionTarget, ConditionValue1, ConditionValue2, ConditionValue3, NegativeCondition, ErrorType, ErrorTextId, ScriptName, Comment) VALUES (22, 1, 42339, 0, 0, 9, 0, 26177, 0, 0, 0, 0, 0, '', 'Feeling Craby? Quest Condition');

--- Diggin' For Worms Quest Fix

-- Fishing loot template---
INSERT INTO fishing_loot_template (entry, item, ChanceOrQuestChance, lootmode, groupid, mincountOrRef, maxcount) VALUES (5316, 58787, -100, 1, 0, 1, 1);

--- Condition---
INSERT INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, SourceId, ElseGroup, ConditionTypeOrReference, ConditionTarget, ConditionValue1, ConditionValue2, ConditionValue3, NegativeCondition, ErrorType, ErrorTextId, ScriptName, Comment) VALUES (3, 5316, 58787, 0, 0, 1, 0, 80534, 0, 0, 0, 0, 0, '', 'Diggin for Worms Quest Spell Condition ');