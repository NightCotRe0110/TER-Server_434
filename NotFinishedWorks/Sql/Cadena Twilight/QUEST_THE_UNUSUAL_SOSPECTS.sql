
/*
#################################################################################################
########     	QUEST_THE_UNUSUAL_SOSPECTS      #################################################
######## TODO LO QUE TENGA :->(ESTO NO TIENE CAMBIOS) SIGNIFICA Q ES PARA MIGAR PARA MOP  #######
#################################################################################################
*/


SET @QUEST_THE_UNUSUAL_SOSPECTS	 := 26997;
SET @NPC_WORKER			         := 29152;
SET @SPELL_CLICK		  		 := 83577;
SET @NPC_WORKER_SCRIPT    		 :=@NPC_WORKER*100+00;

-- QUEST TEMPLATE PARA EL QUEST (ESTO NO TIENE CAMBIOS)
DELETE FROM `quest_template` WHERE `Id` = 26997;
INSERT INTO `quest_template` (`Id`, `Method`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `WDBVerified`) VALUES (26997, 2, 84, 84, 0, 1519, 0, 0, 0, 0, 2098253, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26977, 27060, 0, 27064, 5, 90000, 331200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9437320, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Usual Suspects', 'Grill 6 Stormwind Dock Workers in Stormwind Harbor.', '<Samuelson scratches his chin, absently.>$B$BMy investigations reveal, ah, it\'s likely that there\'s trouble brewing among the Stormwind dock workers. Shifty lot. Don\'t trust \'em.$B$BYou should go there and shake the place down. Start grilling those longshoremen. That should keep you busy.$B$BGo rout out those Twilight infidels!', '', '', '', 'Talk to Anduin Wrynn about your findings. If he\'s not with you, you can find him again in Stormwind Keep.', 44827, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dock Workers Interrogated', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

-- NPC que da el quest QUEST_THE_UNUSUAL_SOSPECTS (ESTO NO TIENE CAMBIOS)
DELETE FROM `creature_questrelation` WHERE `quest` = 26997;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (2439, 26997);

-- NPC que da el quest QUEST_THE_UNUSUAL_SOSPECTS (ESTO NO TIENE CAMBIOS)
DELETE FROM `creature_questrelation` WHERE `quest` = 26997;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (44293, 26997);


-- TEMPLATE DEL NPC QUEST_CREDIT_BUNNY (ESTO NO TIENE CAMBIOS)
DELETE FROM `creature_template` WHERE (`entry`=44827);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (44827, 0, 0, 0, 0, 0, 16480, 0, 0, 0, 'Stormwind Dock Worker Tracking Bunny', '', '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 128, '', 13623);

-- Optimization el NPC WORKER Quitado la flag de no deja marcarlo y agregado SpellClick
DELETE FROM `creature_template` WHERE (`entry`=29152);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (29152, 0, 0, 0, 0, 0, 5008, 5006, 5005, 5003, 'Stormwind Dock Worker', '', '', 0, 65, 65, 1, 1078, 1078, 16777216, 1, 1.14286, 1, 0, 200, 281, 0, 278, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 166, 246, 35, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 12340);

-- TEXTOS DE LOS TRABAJADORES
DELETE FROM creature_text WHERE  entry =@NPC_WORKER;
INSERT INTO `creature_text`VALUES
(@NPC_WORKER, 0, 1, "I haven't heard a thing. !I swear!", 12, 0, 100, 1, 0, 0, "DUCK_WORKER_SAY" ),
(@NPC_WORKER, 0, 2, "Twilight's Hammers? I don't know anything! Why are you asking me ?", 12, 0, 100, 1, 0, 0, "DUCK_WORKER SAY" ),
(@NPC_WORKER, 0, 3, "! I don't know anything about a cult.! Please let me get back to work...", 12, 0, 100, 1, 0, 0, "DUCK_WORKER SAY" ),
(@NPC_WORKER, 0, 4, "What, that crazy end-of-the-world cult? !if I heard anything you will be the first to know!", 12, 0, 100, 1, 0, 0, "DUCK_WORKER SAY" );

-- ///// CONDITIONS AND SPELL_CLICK
-- Spell click agregado para los trabajadore del puerto 
DELETE FROM npc_spellclick_spells WHERE npc_entry = @NPC_WORKER;
INSERT INTO `npc_spellclick_spells` VALUES
(@NPC_WORKER,@SPELL_CLICK,1,0);

-- Condition para spell click , !!! NO PUEDES DAR CLICK SI NO TIENES EL QUEST !!!
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='18') AND (`SourceGroup`=@NPC_WORKER) AND (`SourceEntry`=@SPELL_CLICK) AND (`SourceId`='0') AND (`ElseGroup`='0') AND (`ConditionTypeOrReference`='9') AND (`ConditionTarget`='0') AND (`ConditionValue1`=@QUEST_THE_UNUSUAL_SOSPECTS) AND (`ConditionValue2`='0') AND (`ConditionValue3`='0');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`) VALUES
 (18,@NPC_WORKER,@SPELL_CLICK,9,@QUEST_THE_UNUSUAL_SOSPECTS);
 
 -- SAI NPC_WORKER
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@NPC_WORKER;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@NPC_WORKER AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@NPC_WORKER_SCRIPT AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC_WORKER,0,0,1,73,0,100,0,0,0,0,0,66,3,0,0,0,0,0,7,0,0,0,0,0,0,0,"Stormwind Dock Worker - On Spellclick - Set Orientation Invoker"),
(@NPC_WORKER,0,1,0,61,0,100,0,0,0,0,0,5,431,0,0,0,0,0,1,0,0,0,0,0,0,0,"Stormwind Dock Worker - On Spellclick - Play Emote 431"),
(@NPC_WORKER,0,2,0,8,0,100,0,@SPELL_CLICK,0,0,0,80,@NPC_WORKER_SCRIPT,0,0,0,0,0,1,0,0,0,0,0,0,0,"Stormwind Dock Worker - On Spellhit 'INTEROGATION' - Run Script"),
(@NPC_WORKER,0,3,0,8,0,30,0,@SPELL_CLICK,0,0,0,1,1,0,0,0,0,0,9,@NPC_PRINCE,0,25,0,0,0,0,"Stormwind Dock Worker - On Spellhit 'INTEROGATION' - Say Line 1"),
-- Stormwind Dock Worker SCRIPTS
(@NPC_WORKER_SCRIPT,9,0,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Stormwind Dock Worker - On Script - Say Line 0"),
(@NPC_WORKER_SCRIPT,9,1,0,0,0,100,0,0,0,0,0,5,431,0,0,0,0,0,1,0,0,0,0,0,0,0,"Stormwind Dock Worker - On Script - Play Emote 431"),
(@NPC_WORKER_SCRIPT,9,2,0,0,0,100,0,0,0,0,0,33,@QUEST_CREDIT_BUNNY,0,0,0,0,0,7,0,0,0,0,0,0,0,"Stormwind Dock Worker - On Script - Quest Credit 'The Usual Suspects'"),
(@NPC_WORKER_SCRIPT,9,3,0,0,0,100,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Stormwind Dock Worker - On Script - Set Run On"),
(@NPC_WORKER_SCRIPT,9,4,0,0,0,100,0,7000,7000,0,0,46,25,0,0,0,0,0,1,0,0,0,0,0,0,0,"Stormwind Dock Worker - On Script - Move Forward 25 Yards"),
(@NPC_WORKER_SCRIPT,9,5,0,0,0,100,0,6000,6000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Stormwind Dock Worker - On Script - Despawn Instant");

-- Spawn del los TRABAJADORES
DELETE FROM `creature` WHERE `id`=29152;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(24823, 29152, 0, 0, 0, 1, 1, 5006, 0, -8047.32, 1326.53, 20.2423, 3.74915, 90, 0, 0, 3524, 0, 0, 0, 0, 0),
(29419, 29152, 0, 0, 0, 1, 1, 5008, 0, -8106.5, 1288.85, 23.1957, 2.54818, 90, 0, 0, 3524, 0, 0, 0, 0, 0),
(29518, 29152, 0, 0, 0, 1, 1, 5003, 0, -8116.67, 1289.14, 5.77658, 3.47321, 90, 0, 0, 3524, 0, 0, 0, 0, 0),
(29636, 29152, 0, 0, 0, 1, 1, 5008, 0, -8443.61, 1200.99, 5.41744, 5.91176, 90, 0, 0, 3524, 0, 0, 0, 0, 0),
(29680, 29152, 0, 0, 0, 1, 1, 5005, 0, -8086.92, 1261.27, 8.14234, 0.824418, 90, 0, 0, 3524, 0, 0, 0, 0, 0),
(29686, 29152, 0, 0, 0, 1, 1, 5006, 0, -8100.65, 1255.56, 37.7849, 2.40855, 90, 0, 0, 3524, 0, 0, 0, 0, 0),
(29707, 29152, 0, 0, 0, 1, 1, 5005, 0, -8553.52, 1115.17, 19.0692, 4.20343, 90, 0, 0, 3524, 0, 0, 0, 0, 0),
(29720, 29152, 0, 0, 0, 1, 1, 5003, 0, -8064.59, 1302.76, 34.478, 3.03687, 90, 0, 0, 3524, 0, 0, 0, 0, 0),
(29751, 29152, 0, 0, 0, 1, 1, 5008, 0, -8120.85, 1208.72, 7.30175, 0.444483, 90, 0, 0, 3524, 0, 0, 0, 0, 0),
(29759, 29152, 0, 0, 0, 1, 1, 5006, 0, -8558.85, 1231.03, 5.23024, 1.21008, 90, 0, 0, 3524, 0, 0, 0, 0, 0),
(29760, 29152, 0, 0, 0, 1, 1, 5003, 0, -8177.31, 1218.01, 7.99946, 3.59686, 90, 0, 0, 3524, 0, 0, 0, 0, 0),
(29785, 29152, 0, 0, 0, 1, 1, 5005, 0, -8284.72, 1194.91, 5.7222, 4.99164, 90, 0, 0, 3524, 0, 0, 0, 0, 0),
(29803, 29152, 0, 0, 0, 1, 1, 5006, 0, -8259.39, 1209.33, 5.42463, 5.86431, 90, 0, 0, 3524, 0, 0, 0, 0, 0),
(29851, 29152, 0, 0, 0, 1, 1, 5005, 0, -8108.94, 1252.81, 54.653, 2.07694, 90, 0, 0, 3524, 0, 0, 0, 0, 0),
(29894, 29152, 0, 0, 0, 1, 1, 5006, 0, -8122.64, 1228.59, 8.80175, 3.97916, 90, 0, 0, 3524, 0, 0, 0, 0, 0),
(29906, 29152, 0, 0, 0, 1, 1, 5006, 0, -8364.63, 1124.01, 19.1318, 4.57276, 90, 0, 0, 3524, 0, 0, 0, 0, 0),
(29907, 29152, 0, 0, 0, 1, 1, 5006, 0, -8113.82, 1243.55, 8.05156, 1.64061, 90, 0, 0, 3524, 0, 0, 0, 0, 0),
(30052, 29152, 0, 0, 0, 1, 1, 5003, 0, -8156.56, 1247.34, 7.86973, 1.18209, 90, 0, 0, 3524, 0, 0, 0, 0, 0),
(30107, 29152, 0, 0, 0, 1, 1, 5005, 0, -8076.76, 1285.21, 17.2421, 5.85616, 90, 0, 0, 3524, 0, 0, 0, 0, 0),
(30153, 29152, 0, 0, 0, 1, 1, 5005, 0, -8063.03, 1297.85, 32.7854, 2.54818, 90, 0, 0, 3524, 0, 0, 0, 0, 0),
(30210, 29152, 0, 0, 0, 1, 1, 5008, 0, -8065.58, 1327.87, 18.8713, 4.29351, 90, 0, 0, 3524, 0, 0, 0, 0, 0),
(30238, 29152, 0, 0, 0, 1, 1, 5005, 0, -8485.12, 1201.63, 5.49466, 3.60924, 90, 0, 0, 3524, 0, 0, 0, 0, 0),
(30255, 29152, 0, 0, 0, 1, 1, 5005, 0, -8081.19, 1307.11, 19.5063, 0.750492, 90, 0, 0, 3524, 0, 0, 0, 0, 0),
(30298, 29152, 0, 0, 0, 1, 1, 5006, 0, -8592.63, 1139.91, 19.0271, 3.39336, 90, 0, 0, 3524, 0, 0, 0, 0, 0),
(30313, 29152, 0, 0, 0, 1, 1, 5006, 0, -8383.01, 1242.67, 5.23023, 1.14276, 90, 0, 0, 3524, 0, 0, 0, 0, 0),
(30319, 29152, 0, 0, 0, 1, 1, 5008, 0, -8452.63, 1244.02, 5.23024, 1.7026, 90, 0, 0, 3524, 0, 0, 0, 0, 0),
(30343, 29152, 0, 0, 0, 1, 1, 5005, 0, -8436.45, 1216.38, 5.24577, 3.12955, 90, 0, 0, 3524, 0, 0, 0, 0, 0),
(30346, 29152, 0, 0, 0, 1, 1, 5005, 0, -8539.23, 1070.27, 19.0627, 3.03967, 90, 0, 0, 3524, 0, 0, 0, 0, 0),
(30389, 29152, 0, 0, 0, 1, 1, 5003, 0, -8299.84, 1308.71, 5.22396, 1.91986, 90, 0, 0, 3524, 0, 0, 0, 0, 0),
(30424, 29152, 0, 0, 0, 1, 1, 5005, 0, -8474.82, 1065.97, 18.666, 5.68977, 90, 0, 0, 3524, 0, 0, 0, 0, 0),
(30491, 29152, 0, 0, 0, 1, 1, 5008, 0, -8049.68, 1340.65, 54.6673, 2.02458, 90, 0, 0, 3524, 0, 0, 0, 0, 0),
(30514, 29152, 0, 0, 0, 1, 1, 5003, 0, -8351.37, 1197.54, 5.69938, 5.89921, 90, 0, 0, 3524, 0, 0, 0, 0, 0),
(30585, 29152, 0, 0, 0, 1, 1, 5006, 0, -8149.85, 1301.57, 29.3052, 2.47837, 90, 0, 0, 3524, 0, 0, 0, 0, 0),
(30593, 29152, 0, 0, 0, 1, 1, 5003, 0, -8046.33, 1305.57, 33.7315, 3.15905, 90, 0, 0, 3524, 0, 0, 0, 0, 0),
(30608, 29152, 0, 0, 0, 1, 1, 5005, 0, -8073.37, 1302.3, 7.89675, 2.34306, 90, 0, 0, 3524, 0, 0, 0, 0, 0),
(63533, 29152, 0, 0, 0, 1, 1, 0, 0, -8557.9, 1153.51, 19.1521, 6.11891, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63550, 29152, 0, 0, 0, 1, 1, 0, 0, -8536.72, 1266.31, 4.54779, 1.4359, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63551, 29152, 0, 0, 0, 1, 1, 0, 0, -8495.99, 1238.81, 5.31358, 2.68781, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63586, 29152, 0, 0, 0, 1, 1, 0, 0, -8296.24, 1313.3, 5.21081, 5.53135, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63602, 29152, 0, 0, 0, 1, 1, 0, 0, -8049.68, 1340.65, 54.6673, 2.02458, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63605, 29152, 0, 0, 0, 1, 1, 0, 0, -8047.26, 1327.92, 19.9689, 0.0422291, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63606, 29152, 0, 0, 0, 1, 1, 0, 0, -8091.52, 1281.51, 7.95681, 5.03882, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63607, 29152, 0, 0, 0, 1, 1, 0, 0, -8063.03, 1297.85, 32.7854, 2.54818, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63608, 29152, 0, 0, 0, 1, 1, 0, 0, -8065.58, 1327.87, 18.8713, 4.29351, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63609, 29152, 0, 0, 0, 1, 1, 0, 0, -8081.19, 1307.11, 19.5063, 0.750492, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63610, 29152, 0, 0, 0, 1, 1, 0, 0, -8064.6, 1302.76, 34.478, 3.03687, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63611, 29152, 0, 0, 0, 1, 1, 0, 0, -8076.75, 1285.21, 17.2421, 5.85616, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63612, 29152, 0, 0, 0, 1, 1, 0, 0, -8062.67, 1291.03, 7.89895, 3.1732, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63615, 29152, 0, 0, 0, 1, 1, 0, 0, -8046.33, 1305.57, 33.7314, 3.15905, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63616, 29152, 0, 0, 0, 1, 1, 0, 0, -8099.08, 1242.73, 8.56519, 3.53558, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63617, 29152, 0, 0, 0, 1, 1, 0, 0, -8106.5, 1288.85, 23.1957, 2.54818, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63618, 29152, 0, 0, 0, 1, 1, 0, 0, -8103.44, 1220.61, 7.83813, 2.9489, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63619, 29152, 0, 0, 0, 1, 1, 0, 0, -8100.65, 1255.56, 37.7849, 2.40855, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63620, 29152, 0, 0, 0, 1, 1, 0, 0, -8116.67, 1289.14, 5.77658, 3.47321, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63621, 29152, 0, 0, 0, 1, 1, 0, 0, -8109.19, 1202.6, 7.55224, 5.23966, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63622, 29152, 0, 0, 0, 1, 1, 0, 0, -8113.82, 1243.55, 8.05156, 1.64061, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63623, 29152, 0, 0, 0, 1, 1, 0, 0, -8108.94, 1252.81, 54.653, 2.07694, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63626, 29152, 0, 0, 0, 1, 1, 0, 0, -8131.35, 1239.86, 9.54663, 1.36897, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63627, 29152, 0, 0, 0, 1, 1, 0, 0, -8149.85, 1301.57, 29.3052, 0.488174, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63628, 29152, 0, 0, 0, 1, 1, 0, 0, -8162.94, 1142.53, 19.1351, 6.17846, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63653, 29152, 0, 0, 0, 1, 1, 0, 0, -8236.34, 1225.77, 5.23025, 4.35017, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63655, 29152, 0, 0, 0, 1, 1, 0, 0, -8257.72, 1239.33, 5.23024, 5.67417, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63672, 29152, 0, 0, 0, 1, 1, 0, 0, -8385.63, 1233.02, 5.23024, 4.21393, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63674, 29152, 0, 0, 0, 1, 1, 0, 0, -8405.32, 1216.5, 5.15656, 0.00528744, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63678, 29152, 0, 0, 0, 1, 1, 0, 0, -8322.27, 1204.78, 5.53471, 4.55794, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63679, 29152, 0, 0, 0, 1, 1, 0, 0, -8313.03, 1197.06, 5.62652, 4.17009, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63680, 29152, 0, 0, 0, 1, 1, 0, 0, -8284.72, 1194.91, 5.7222, 4.99164, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63681, 29152, 0, 0, 0, 1, 1, 0, 0, -8351.37, 1197.54, 5.69938, 5.89921, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63685, 29152, 0, 0, 0, 1, 1, 0, 0, -8240.55, 1105.64, 17.7459, 3.33358, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63686, 29152, 0, 0, 0, 1, 1, 0, 0, -8315.59, 1191.09, 5.75152, 4.62484, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63690, 29152, 0, 0, 0, 1, 1, 0, 0, -8266.99, 1126.8, 17.8491, 3.12545, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63693, 29152, 0, 0, 0, 1, 1, 0, 0, -8316.18, 1129.41, 19.0463, 6.09658, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63699, 29152, 0, 0, 0, 1, 1, 0, 0, -8364.63, 1124.01, 19.1318, 4.57276, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63718, 29152, 0, 0, 0, 1, 1, 0, 0, -8559.54, 1109.89, 19.0692, 3.86108, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63721, 29152, 0, 0, 0, 1, 1, 0, 0, -8522.17, 1074.84, 18.0692, 6.15062, 90, 0, 0, 1, 0, 0, 0, 0, 0),
(63727, 29152, 0, 0, 0, 1, 1, 0, 0, -8474.82, 1065.97, 18.666, 3.68545, 90, 0, 0, 1, 0, 0, 0, 0, 0);
