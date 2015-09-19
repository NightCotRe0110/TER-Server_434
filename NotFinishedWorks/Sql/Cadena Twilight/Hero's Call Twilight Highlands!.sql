
/*
#################################################################################################
########     Hero's Call: Twilight Highlands!	#################################################
######## TODO LO QUE TENGA :->(ESTO NO TIENE CAMBIOS) SIGNIFICA Q ES PARA MIGAR PARA MOP  #######
#################################################################################################
*/

-- Hero's Call: Twilight Highlands!  (ESTO NO TIENE CAMBIOS)
DELETE FROM `quest_template` WHERE `Id` = 28716;
INSERT INTO `quest_template` (`Id`, `Method`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `WDBVerified`) VALUES (28716, 2, 84, 84, 0, 1519, 0, 0, 0, 0, 2098253, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26960, 1, 0, 33000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hero\'s Call: Twilight Highlands!', 'Speak with King Varian Wrynn at Stormwind Keep in Stormwind.', 'By order of his royal highness, King Varian Wrynn, all able-bodied citizens of the Alliance are to report to the throne room in Stormwind Keep.$B$BKing Wrynn requires a trustworthy and proven hero for a mission of the utmost importance.$B$BStormwind Keep can be found in the eastern portion of Stormwind City.$B$BFor the glory and honor of the Alliance!', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);
 
-- Quest Giver template (ESTO NO TIENE CAMBIOS)
DELETE FROM `gameobject_template` WHERE (`entry`=206111);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `AIName`, `ScriptName`, `WDBVerified`) VALUES (206111, 2, 10016, 'Hero\'s Call Board', '', '', '', 12, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15807, 0, 12128, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);
-- Quest giver location (ESTO NO TIENE CAMBIOS)
DELETE FROM `gameobject` WHERE `id`=206111;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(NULL, 206111, 0, 0, 0, 1, 1, -8823.85, 630.573, 94.136, 3.87463, 0, 0, 0, 1, 120, 255, 1);
-- Game object questrelation (ESTO NO TIENE CAMBIOS)
DELETE FROM gameobject_questrelation WHERE id = 206111;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES ('206111', '27724');
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES ('206111', '27726');
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES ('206111', '27727');
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES ('206111', '28551');
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES ('206111', '28552');
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES ('206111', '28558');
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES ('206111', '28562');
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES ('206111', '28563');
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES ('206111', '28564');
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES ('206111', '28576');
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES ('206111', '28578');
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES ('206111', '28579');
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES ('206111', '28582');
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES ('206111', '28666');
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES ('206111', '28673');
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES ('206111', '28675');
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES ('206111', '28699');
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES ('206111', '28702');
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES ('206111', '28708');
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES ('206111', '28709');
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES ('206111', '28716');
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES ('206111', '29156');
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES ('206111', '29387');
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES ('206111', '29391');
-- quest_poi location (ESTO NO TIENE CAMBIOS)
DELETE FROM `quest_poi` WHERE (`questId`='28716');
INSERT INTO `quest_poi` (`questId`, `id`, `objIndex`, `mapid`, `WorldMapAreaId`, `FloorId`, `unk3`, `unk4`) VALUES ('28716', '1', '-1', '0', '301', '0', '0', '1');
-- Quest poin points (ESTO NO TIENE CAMBIOS)
DELETE FROM `quest_poi_points` WHERE (`questId`='28716') AND (`id`='1') AND (`idx`='0');
INSERT INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) VALUES ('28716', '1', '0', '-8363', '232');

-- NPC QUE TERMINA EL QUEST (ESTO NO TIENE CAMBIOS)
-- VARIAN 
DELETE FROM `creature_template` WHERE (`entry`=29611);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (29611, 0, 0, 0, 0, 0, 28127, 0, 0, 0, 'King Varian Wrynn', 'King of Stormwind', '', 9834, 88, 88, 3, 1733, 1733, 3, 1, 1.42857, 1, 3, 1225.5, 1544.7, 0, 1651, 70, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 1160.9, 1321.1, 225, 7, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 59688, 41056, 60509, 0, 0, 0, 0, 0, 0, 0, 700000, 750000, '', 0, 3, 0, 2090.46, 74, 1, 1, 0, 0, 0, 0, 0, 0, 144, 1, 613097436, 0, 'boss_varian_wrynn', 12340);
-- Varian LOCATION (ESTO NO TIENE CAMBIOS)
DELETE FROM `creature` WHERE `id`=29611;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(30477, 29611, 0, 0, 0, 1, 1, 28127, 0, -8363.06, 232.236, 157.073, 2.23402, 43200, 0, 0, 103070400, 0, 0, 0, 0, 0);

-- QUEST Q DA VARIAN  (ESTO NO TIENE CAMBIOS)
DELETE FROM `creature_questrelation` WHERE (`id`='29611');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('29611', '7782');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('29611', '26365');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('29611', '26370');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('29611', '26960');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('29611', '26975');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('29611', '26977');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('29611', '27241');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('29611', '28238');
-- QUEST Q TERMINA VARIAN  (ESTO NO TIENE CAMBIOS)
DELETE FROM `creature_involvedrelation` WHERE (`id`='29611');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('29611', '7781');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('29611', '13188');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('29611', '24597');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('29611', '26322');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('29611', '26960');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('29611', '27106');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('29611', '27240');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('29611', '28716');

