DELETE FROM `gameobject` WHERE `id`=209896;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (209896, 967, 4, 1, -12075.2, 12168.2, -2.56926, 3.57793, 0, 0, -0.976295, 0.216442, 604800, 100, 1);

REPLACE INTO `instance_template` (`map`, `parent`, `script`, `allowMount`) VALUES ('967', '0', 'instance_dragon_soul', '1'); 

UPDATE `creature_template` SET `mechanic_immune_mask`="2145369087", `flags_extra`="1", `ScriptName`="boss_deathwing_spine" WHERE `entry`='53879';
UPDATE `creature_template` SET `AIName`='', `mechanic_immune_mask`="617299967", `flags_extra`="1", `ScriptName`="npc_deathwing_spine_blood" WHERE `entry`='53889'; 
UPDATE `creature_template` SET `AIName`='', `mechanic_immune_mask`="617299967", `flags_extra`="1", `ScriptName`="npc_deathwing_spine_amalgamation" WHERE `entry`='53890'; 
UPDATE `creature_template` SET `AIName`='', `mechanic_immune_mask`="617299967", `flags_extra`="1", `ScriptName`="npc_deathwing_spine_corruption" WHERE `entry`='56161'; 
UPDATE `creature_template` SET `AIName`='', `mechanic_immune_mask`="617299967", `flags_extra`="1", `ScriptName`="npc_deathwing_spine_tendons" WHERE `entry`='56575'; 
UPDATE `creature_template` SET `AIName`='', `ScriptName`="npc_deathwing_spine_spawner" WHERE `entry`='53888'; 
UPDATE `creature_template` SET `ScriptName`="npc_sky_captain_swayze" WHERE `entry`='55870'; 

REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('110312', 'spell_ds_siphon_vitality');
