
/*
#################################################################################################
########     	Rallying the Fleet			    #################################################
######## TODO LO QUE TENGA :->(ESTO NO TIENE CAMBIOS) SIGNIFICA Q ES PARA MIGAR PARA MOP  #######
#################################################################################################
*/



-- QUEST TEMPLATE 
DELETE FROM `quest_template` WHERE `Id` = 26975;
INSERT INTO `quest_template` (`Id`, `Method`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `WDBVerified`) VALUES (26975, 2, 84, 84, 0, 1519, 0, 0, 0, 0, 2098253, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26960, 0, 0, 27038, 4, 68000, 248400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 262286, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rallying the Fleet', 'Escort Prince Anduin to the Stormwind Docks and talk to Supply Sergeant Graves. If you get separated from the Prince, you"ll find him in the Stormwind throne room.', 'I am amassing a warfleet to assault Twilight Highlands and bring an end to Deathwing"s lackeys. My soldiers are ready but fleet preparations lag behind.$B$BMy men at the docks need some inspiration and motivation. A visit from the Prince here should lift their spirits and remind them of the bright future they"re fighting for.$B$BTake Prince Anduin to the docks with you and speak with Supply Sergeant Graves. I want Anduin to observe how a natural leader handles the situation.', 'Prince Anduin Escorted to Graves.', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Prince Anduin Escorted to Graves.', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

-- QUEST POI (ESTO NO TIENE CAMBIOS)
DELETE FROM `quest_poi` WHERE (`questId`='26975'); 
INSERT INTO `quest_poi` (`questId`, `id`, `objIndex`, `mapid`, `WorldMapAreaId`, `FloorId`, `unk3`, `unk4`) VALUES ('26975', '0', '-1', '0', '301', '0', '0', '1');
INSERT INTO `quest_poi` (`questId`, `id`, `objIndex`, `mapid`, `WorldMapAreaId`, `FloorId`, `unk3`, `unk4`) VALUES ('26975', '1', '16', '0', '301', '0', '0', '7');

-- QUEST POI PONI (ESTO NO TIENE CAMBIOS)
DELETE FROM `quest_poi_points` WHERE (`questId`='26975');
INSERT INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) VALUES ('26975', '0', '0', '-8453', '1148');
INSERT INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) VALUES ('26975', '1', '0', '-8450', '1147');

-- QUEST QUE DA EL NPC (ESTO NO TIENE CAMBIOS)
-- Supply Sergeant Graves
DELETE FROM `creature_questrelation` WHERE (`id`='44749') AND (`quest`='27038');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('44749', '27038');


-- Quest q termina el NPC
-- Supply Sergeant Graves (ESTO NO TIENE CAMBIOS)
DELETE FROM `creature_involvedrelation` WHERE (`id`='44749') AND (`quest`='26975');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('44749', '26975');

-- NPC que termina el quest Rallying the Fleet
-- Supply Sergeant Graves (ESTO NO TIENE CAMBIOS)
DELETE FROM `creature_template` WHERE (`entry`=44749);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (44749, 0, 0, 0, 0, 0, 34115, 0, 0, 0, 'Supply Sergeant Graves', '', '', 0, 81, 81, 2, 1078, 1078, 3, 1, 1.14286, 1, 0, 464, 604, 0, 708, 5, 2000, 2000, 1, 32768, 2048, 2048, 0, 0, 0, 0, 0, 353, 512, 112, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 0, 1.5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 13623);

-- LOCALIZACION npc Supply Sergeant Graves
DELETE FROM `creature` WHERE `id`=44749;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(63531, 44749, 0, 0, 0, 1, 1, 0, 0, -8453.28, 1147.95, 19.1351, 4.57276, 90, 0, 0, 1, 0, 0, 0, 0, 0);

-- SAI DE EL NPC -- Supply Sergeant Graves
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@SARGEANT_GRAVES;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@SARGEANT_GRAVES AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@SARGEANT_GRAVES,0,0,0,10,0,100,0,1,9,0,0,15,@QUEST_RALLE_THE_FLEET,0,0,0,0,0,17,0,9,0,0,0,0,0,"Supply Sergeant Graves - Within 1-9 Range Out of Combat LoS - Quest Credit 'Rallying the Fleet'"),
(@SARGEANT_GRAVES,0,1,0,19,0,100,0,@QUEST_MISSING_PART,0,0,0,1,0,0,0,0,0,0,9,@NPC_PRINCE,0,9,0,0,0,0,"Supply Sergeant Graves - On Quest 'Missing Parts' Taken - Say Line 0");
