

/*
#################################################################################################
########     	QUEST_Missing Parts	            #################################################
######## TODO LO QUE TENGA :->(ESTO NO TIENE CAMBIOS) SIGNIFICA Q ES PARA MIGAR PARA MOP  #######
#################################################################################################
*/

SET @QUEST_MISSING_PART	   		 := 27038;
SET @NPC_PRINCE			         := 44293;


-- TEXTOS DEL PRINCIPE (ALGUNOS ESTAN DIRECTOS EN EL CORE)

DELETE FROM creature_text WHERE  entry =@NPC_PRINCE;
INSERT INTO `creature_text`VALUES
(@NPC_PRINCE, 0, 0, "Are you often sent to gather things for people ? I suppose a hero's work is never done.", 12, 0, 100, 1, 0, 0, "@NPC_PRINCE_SAY" ),
(@NPC_PRINCE, 1, 0, "Does this feel like a wild goose shase to you? These workers don't know anything!", 12, 0, 100, 1, 0, 0, "@NPC_PRINCE SAY" ),
(@NPC_PRINCE, 2, 0, "What IS this place? Ugh and that smell...", 12, 0, 100, 1, 0, 0, "@NPC_PRINCE SAY" ),
(@NPC_PRINCE, 3, 0, "Some sort of rituals were performer at this altar. It look like a pagan initiation ritual that Valen once told me about. Bloody. Disgusting.", 12, 0, 100, 1, 0, 0, "@NPC_PRINCE SAY" ),
(@NPC_PRINCE, 4, 0, "What do you think - wait - $N look out behind you! ", 12, 0, 100, 1, 0, 0, "@NPC_PRINCE SAY" ),
(@NPC_PRINCE, 5, 0, "Look out - I see another ", 12, 0, 100, 1, 0, 0, "@NPC_PRINCE SAY" ),
(@NPC_PRINCE, 6, 0, "Fight the back - I can't hold this shield up much longer!  ", 12, 0, 100, 1, 0, 0, "@NPC_PRINCE SAY" ),
(@NPC_PRINCE, 7, 0, "N$, you did it , it looks like they are fleeing. ", 12, 0, 100, 1, 0, 0, "@NPC_PRINCE SAY" ),
(@NPC_PRINCE, 8, 0, "This is the place. Samuelson's files Should be on the third floor, all the way up the spiral staircase.", 12, 0, 100, 1, 0, 0, "@NPC_PRINCE SAY" ),
(@NPC_PRINCE, 9, 0, "Here we go. Nobody here will question if the wants to glace through some files.", 12, 0, 100, 1, 0, 0, "@NPC_PRINCE SAY" ),
(@NPC_PRINCE, 10, 0, "Mmmmmm...", 12, 0, 100, 1, 0, 0, "@NPC_PRINCE SAY" ),
(@NPC_PRINCE, 11, 0, "this is all wrong. There is nothing  in here about the Twilight's Hammer. What is Samuelson playing at?", 12, 0, 100, 1, 0, 0, "@NPC_PRINCE SAY" ),
(@NPC_PRINCE, 12, 0, "I'll will go back to the throne and keep an eye on Samuelson while speak with Mathias. Stay safe!", 12, 0, 100, 1, 0, 0, "@NPC_PRINCE SAY" );


-- QUEST POI
DELETE FROM `quest_poi` WHERE (`questId`='27038'); 
INSERT INTO `quest_poi` (`questId`, `id`, `objIndex`, `mapid`, `WorldMapAreaId`, `FloorId`, `unk3`, `unk4`) VALUES ('27038', '0', '4', '0', '301', '0', '0', '3');
INSERT INTO `quest_poi` (`questId`, `id`, `objIndex`, `mapid`, `WorldMapAreaId`, `FloorId`, `unk3`, `unk4`) VALUES ('27038', '1', '4', '0', '301', '0', '0', '3');
INSERT INTO `quest_poi` (`questId`, `id`, `objIndex`, `mapid`, `WorldMapAreaId`, `FloorId`, `unk3`, `unk4`) VALUES ('27038', '2', '-1', '0', '301', '0', '0', '1');

-- QUEST POI POINT
DELETE FROM `quest_poi_points` WHERE (`questId`='27038');
INSERT INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) VALUES ('27038', '0', '0', '-8273', '1097');
INSERT INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) VALUES ('27038', '0', '1', '-8142', '1133');
INSERT INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) VALUES ('27038', '0', '2', '-8119', '1230');
INSERT INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) VALUES ('27038', '0', '3', '-8227', '1252');
INSERT INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) VALUES ('27038', '0', '4', '-8272', '1255');
INSERT INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) VALUES ('27038', '0', '5', '-8368', '1252');
INSERT INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) VALUES ('27038', '0', '6', '-8454', '1229');
INSERT INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) VALUES ('27038', '0', '7', '-8455', '1192');
INSERT INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) VALUES ('27038', '0', '8', '-8388', '1128');
INSERT INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) VALUES ('27038', '0', '9', '-8296', '1107');
INSERT INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) VALUES ('27038', '1', '0', '-8525', '1108');
INSERT INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) VALUES ('27038', '1', '1', '-8496', '1177');
INSERT INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) VALUES ('27038', '1', '2', '-8514', '1216');
INSERT INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) VALUES ('27038', '1', '3', '-8565', '1209');
INSERT INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) VALUES ('27038', '1', '4', '-8603', '1153');
INSERT INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) VALUES ('27038', '2', '0', '-8439', '1118');


-- TEMPLATE DEL QUEST (ESTO NO TIENE CAMBIOS)
DELETE FROM `quest_template` WHERE `Id` = 27038;
INSERT INTO `quest_template` (`Id`, `Method`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `WDBVerified`) VALUES (27038, 2, 84, 84, 0, 1519, 0, 0, 0, 0, 2098253, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 90000, 331200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3145864, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63927, 63926, 63925, 0, 0, 0, 1, 1, 1, 0, 0, 0, 72, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Missing Parts', 'Gather up 5 Missing Parts from around the Stormwind Harbor.', '<The Sergeant turns his attention to you.>$B$BLook here, if you want to help speed things up around here, get Flintlocke off my back. A whole shipment of siege engine parts was misplaced and now it\'s scattered all up and down the dock.$B$BGather up the missing parts and get them to Flintlocke so he can finish construction. He\'s just across the road from me, waiting.', '', '', '', 'Deliver the parts to Fargo Flintlocke in Stormwind Harbor.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60757, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

-- Quest Giver NPC Supply Sergeant Graves (ESTO NO TIENE CAMBIOS)
DELETE FROM `creature_template` WHERE (`entry`=44749);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (44749, 0, 0, 0, 0, 0, 34115, 0, 0, 0, 'Supply Sergeant Graves', '', '', 0, 81, 81, 2, 1078, 1078, 3, 1, 1.14286, 1, 0, 464, 604, 0, 708, 5, 2000, 2000, 1, 32768, 2048, 2048, 0, 0, 0, 0, 0, 353, 512, 112, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 0, 1.5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 13623);

-- Supply Sergeant Graves SAI
SET @ENTRY := 44749;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,10,0,100,0,1,9,0,0,15,26975,0,0,0,0,0,17,0,9,0,0,0,0,0,"Supply Sergeant Graves - Within 1-9 Range Out of Combat LoS - Quest Credit 'Rallying the Fleet'"),
(@ENTRY,0,1,0,19,0,100,0,27038,0,0,0,1,0,0,0,0,0,0,9,44293,0,9,0,0,0,0,"Supply Sergeant Graves - On Quest 'Missing Parts' Taken - Say Line 0");

-- TEMPLATE DEL OBJECT MISSING PART
DELETE FROM `gameobject_template` WHERE (`entry`=205144);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `AIName`, `ScriptName`, `WDBVerified`) VALUES (205144, 3, 1211, 'Missing Parts', '', 'Collecting', '', 0, 0, 1.4, 60757, 0, 0, 0, 0, 0, 43, 32191, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19676, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);

-- LOOT
DELETE FROM `gameobject_loot_template` WHERE (`entry`=32191) AND (`item`=60757);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (32191, 60757, -100, 1, 0, 1, 1);

-- SPAWN DE LOS OBJETOS
DELETE FROM `gameobject` WHERE `id`=205144;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(9227, 205144, 0, 0, 0, 1, 1, -8593.88, 1156.41, 18.8555, 0, 0, 0, 0, 1, 120, 255, 1),
(9228, 205144, 0, 0, 0, 1, 1, -8532.31, 1149.35, 19.0518, 0, 0, 0, 0, 1, 120, 255, 1),
(9229, 205144, 0, 0, 0, 1, 1, -8551.91, 1157.28, 19.0013, 0, 0, 0, 0, 1, 120, 255, 1),
(9231, 205144, 0, 0, 0, 1, 1, -8560.54, 1199.56, 5.4139, 4.20625, 0, 0, 0, 1, 120, 255, 1),
(9232, 205144, 0, 0, 0, 1, 1, -8536.4, 1206.16, 5.77978, 0.802851, 0, 0, 0, 1, 120, 255, 1),
(9233, 205144, 0, 0, 0, 1, 1, -8514.81, 1205.93, 5.45124, 0, 0, 0, 0, 1, 120, 255, 1),
(9255, 205144, 0, 0, 0, 1, 1, -8076.86, 1224.54, 7.85359, 0, 0, 0, 0, 1, 120, 255, 1),
(9256, 205144, 0, 0, 0, 1, 1, -8099.63, 1205.88, 7.54827, 0, 0, 0, 0, 1, 120, 255, 1),
(9257, 205144, 0, 0, 0, 1, 1, -8135.19, 1176.05, 8.128, 0, 0, 0, 0, 1, 120, 255, 1),
(9258, 205144, 0, 0, 0, 1, 1, -8150.53, 1137.08, 18.8906, 0, 0, 0, 0, 1, 120, 255, 1),
(9259, 205144, 0, 0, 0, 1, 1, -8159.38, 1246.89, 7.80981, 0, 0, 0, 0, 1, 120, 255, 1),
(9260, 205144, 0, 0, 0, 1, 1, -8166.45, 1189.44, 7.91382, 0, 0, 0, 0, 1, 120, 255, 1),
(9261, 205144, 0, 0, 0, 1, 1, -8200.97, 1151.38, 17.5098, 0, 0, 0, 0, 1, 120, 255, 1),
(9263, 205144, 0, 0, 0, 1, 1, -8225.41, 1190.13, 5.95745, 0, 0, 0, 0, 1, 120, 255, 1),
(9264, 205144, 0, 0, 0, 1, 1, -8233.08, 1243.75, 5.23023, 0, 0, 0, 0, 1, 120, 255, 1),
(9265, 205144, 0, 0, 0, 1, 1, -8272.59, 1245.05, 5.23023, 0, 0, 0, 0, 1, 120, 255, 1),
(9266, 205144, 0, 0, 0, 1, 1, -8359.95, 1247.1, 5.23023, 0, 0, 0, 0, 1, 120, 255, 1),
(9267, 205144, 0, 0, 0, 1, 1, -8258.84, 1208.48, 5.38996, 0, 0, 0, 0, 1, 120, 255, 1),
(9268, 205144, 0, 0, 0, 1, 1, -8321.58, 1227.61, 5.23024, 0, 0, 0, 0, 1, 120, 255, 1),
(9269, 205144, 0, 0, 0, 1, 1, -8245.89, 1182.59, 17.3808, 4.06662, 0, 0, 0, 1, 120, 255, 1),
(9270, 205144, 0, 0, 0, 1, 1, -8396.12, 1220.31, 5.60765, 1.27409, 0, 0, 0, 1, 120, 255, 1),
(9271, 205144, 0, 0, 0, 1, 1, -8276.48, 1183.57, 17.3165, 5.07891, 0, 0, 0, 1, 120, 255, 1),
(9273, 205144, 0, 0, 0, 1, 1, -8310.85, 1190.96, 5.55694, 0, 0, 0, 0, 1, 120, 255, 1),
(9274, 205144, 0, 0, 0, 1, 1, -8337.3, 1189.93, 5.65021, 0, 0, 0, 0, 1, 120, 255, 1),
(9275, 205144, 0, 0, 0, 1, 1, -8346.33, 1159.12, 18.8682, 2.05949, 0, 0, 0, 1, 120, 255, 1),
(9276, 205144, 0, 0, 0, 1, 1, -8321.15, 1147.12, 19.0273, 4.41568, 0, 0, 0, 1, 120, 255, 1),
(9277, 205144, 0, 0, 0, 1, 1, -8272.8, 1106.81, 18.8157, 1.67551, 0, 0, 0, 1, 120, 255, 1),
(9278, 205144, 0, 0, 0, 1, 1, -8294.36, 1115.84, 19.0518, 0, 0, 0, 0, 1, 120, 255, 1),
(9279, 205144, 0, 0, 0, 1, 1, -8376.99, 1105.33, 18.9957, 0, 0, 0, 0, 1, 120, 255, 1),
(9281, 205144, 0, 0, 0, 1, 1, -8442, 1067.39, 19.5277, 0, 0, 0, 0, 1, 120, 255, 1),
(9282, 205144, 0, 0, 0, 1, 1, -8528.4, 1117.2, 19.0518, 0, 0, 0, 0, 1, 120, 255, 1),
(9283, 205144, 0, 0, 0, 1, 1, -8482.75, 1070.92, 19.4376, 0, 0, 0, 0, 1, 120, 255, 1),
(9284, 205144, 0, 0, 0, 1, 1, -8554.43, 1067.03, 19.0518, 0, 0, 0, 0, 1, 120, 255, 1);

-- NPC Fargo Flintlocke QUE TERMINA EL QUEST 
DELETE FROM `creature_template` WHERE (`entry`=44806);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (44806, 0, 0, 0, 0, 0, 34116, 0, 0, 0, 'Fargo Flintlocke', '', '', 12386, 84, 84, 3, 1078, 1078, 3, 1, 1.14286, 1, 0, 519, 693, 0, 815, 5, 2000, 2000, 1, 32768, 2048, 2048, 0, 0, 0, 0, 0, 384, 546, 157, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 0, 1.31824, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 13623);

-- LOCALIZACION Fargo Flintlocke
DELETE FROM `creature` WHERE `id`=44806;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(NULL, 44806, 0, 0, 0, 1, 1, 34116, 0, -8438.55, 1118.48, 19.1351, 1.67552, 90, 0, 0, 96744, 0, 0, 0, 0, 0);

-- Fargo Flintlocke SAI
SET @ENTRY := 44806;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,20,0,100,0,27038,0,0,0,1,0,0,0,0,0,0,11,44293,15,0,0,0,0,0,"Fargo Flintlocke - On Quest 'Missing Parts' Finished - Say Line 0");
