/*
Estos Scipts les falta codigo !!!!! NO TOCAR SOLO MAYOR Y EDDUARDS DEV CUBAN TEAM 

*/	
	
-- VARIABLES GLOBALES	
-- ENUM QUEST
	
	SET @QUEST_THE_UNUSUAL_SOSPECTS	 := 26997;
	SET @QUEST_RALLE_THE_FLEET 		 := 26975;
	SET @QUEST_MISSING_PART	   		 := 27038;
	SET @QUEST_HOLDING_ON_US  		 := 27064; 
	SET @QUEST_PEASAN_PROBLEM        := 27044;
	SET @QUEST_TWLIGHT_SHORES        := 28238;
-- ENUM NPC	
    SET @SARGEANT_GRAVES 	   		 := 44749;
	SET @NPC_FARGO			         := 50286;
	SET @NPC_FARGO_2		         := 44806;
	SET @NPC_AVION_FIJO		         := 50262;
	SET @NPC_WORKER			         := 29152;
	SET @NPC_PRINCE			         := 44293; 
	SET @NPC_PRINCE_TRONHE	         := 1747;
	SET @NPC_BISHOP_TELEPORT_BUNNY   := 44957;
	SET @NPC_BLACK_BISHOP	  		 := 44816;
	SET @NPC_TWLIGHT_STRIKER  		 := 44808;
	SET @NPC_MAJOR_SAMUELSON  		 := 2439;
    SET @NPC_MAJOR_SAMUELSON_SUMONED := 45014;
-- ENUM MISC	
	SET @OBJETO_BLOCK   	  		 := 205199;
	SET @OBJETO_CARNE_1   	  		 := 205163;
	SET @OBJETO_CARNE_2   	  		 := 205162;
	SET @OBJETO_ALTAR   	  		 := 205164;
	SET @SPELL_CLICK		  		 := 83577;
	SET @SPELL_MONTARSE_AVION  		 := 93320;
	SET @QUEST_CREDIT_BUNNY	  		 := 44827;
	SET @NPC_WORKER_SCRIPT    		 :=@NPC_WORKER*100+00;
	
	
-- @QUEST_PEASAN_PROBLEM

DELETE FROM `quest_template` WHERE `Id` = 27044;
INSERT INTO `quest_template` (`Id`, `Method`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `WDBVerified`) VALUES (27044, 2, 84, 84, 0, 1519, 0, 0, 0, 0, 2098253, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26975, 0, 0, 0, 3, 45000, 165600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 140, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Peasant Problems', 'Escort Prince Anduin to Farmer Wollerton at the Wollerton Stead within Stormwind City. If hes no longer with you, you can find him in Stormwind Keep.', 'Im not quite ready to go back to the keep yet. Would you like to help me with something?$B$BRecently some of the local farmers were petitioning the King about some missing livestock. My father promised someone would investigate, but the city guard is stretched so thin itll take weeks.$B$BI thought I would help! Itll encourage the farmers to see someone take action, especially from the royal family. Besides, its just some missing cows. Nothing dangerous.$B$BTake me to Farmer Wollerton here in the city!', 'Anduin Escorted to Farmer Wollerton', '', '', 'Talk to Farmer Wollerton at Wollertons Stead in Stormwind.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);


-- Hero's Call: Twilight Highlands!
DELETE FROM `quest_template` WHERE `Id` = 28716;
INSERT INTO `quest_template` (`Id`, `Method`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `WDBVerified`) VALUES (28716, 2, 84, 84, 0, 1519, 0, 0, 0, 0, 2098253, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26960, 1, 0, 33000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hero\'s Call: Twilight Highlands!', 'Speak with King Varian Wrynn at Stormwind Keep in Stormwind.', 'By order of his royal highness, King Varian Wrynn, all able-bodied citizens of the Alliance are to report to the throne room in Stormwind Keep.$B$BKing Wrynn requires a trustworthy and proven hero for a mission of the utmost importance.$B$BStormwind Keep can be found in the eastern portion of Stormwind City.$B$BFor the glory and honor of the Alliance!', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);
	
-- ********************/////////////------- QUEST_HOLDING_ON_US------- \\\\\\\\\\\\\\\***********************
-- NPC que da el quest QUEST_HOLDING_ON_US
DELETE FROM `creature_queststarter` WHERE `quest` = 27064;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (1747, 27064);

-- NPC que que termina el quest quest QUEST_HOLDING_ON_US
DELETE FROM `creature_questender` WHERE `quest` = 27064;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (44293, 27064);

-- NPC TEMPLATE DEL NPC_PRINCE_TRONHE 1747
DELETE FROM `creature_template` WHERE (`entry`=1747);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (1747, 0, 0, 0, 0, 0, 36740, 0, 0, 0, 'Anduin Wrynn', 'Prince of Stormwind', '', 11874, 5, 5, 0, 11, 11, 3, 1, 1.14286, 1, 0, 5, 7, 0, 32, 1, 2000, 2000, 1, 768, 2048, 0, 0, 0, 0, 0, 0, 3, 4, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 2, 'npc_anduin_wrynn_throne', 12340);

-- ADDON PARA QUITARLE EL AURA DE INVISIVILIDAD
DELETE FROM `creature_template_addon` WHERE (`entry`=1747);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (1747, '', 0, 0, 0, 0, '');
-- Spawn del Principe
DELETE FROM `creature` WHERE `id`=1747;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(NULL, 1747, 0, 1519, 1519, 1, 65535, 0, 1, -8360.24, 234.739, 156.991, 2.59316, 300, 0, 0, 42, 0, 0, 0, 0, 0);

-- INSERTADA LA ANTORSAH DELPRINCIPE
DELETE FROM `creature_equip_template` WHERE (`entry`=@NPC_PRINCE);
INSERT INTO `creature_equip_template` (`entry`, `id`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES
(@NPC_PRINCE, 1, 12748, 0, 0);

-- QUEST TEMPLATE PARA EL QUEST 
-- -- Quitado autocomplete del quest He's Holding Out on Us , Puesta la cadena detras de la mision Missing part
DELETE FROM `quest_template` WHERE `Id` = 27064;
INSERT INTO `quest_template` (`Id`, `Method`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `WDBVerified`) VALUES (27064, 2, 84, 84, 0, 1519, 0, 0, 0, 0, 2098253, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27038, 28807, 0, 28807, 4, 68000, 248400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8388744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'He\'s Holding Out on Us', 'Escort Anduin Wrynn to the third floor of SI:7 Headquarters in the Old Town district of Stormwind. If he is no longer with you, you can find Anduin in Stormwind Keep.', '$N, it almost seems like Samuelson is trying to intentionally waste your time. The dockworkers don\'t know anything. More importantly, explosives are missing from Stormwind Harbor!$B$BYou know what I think? I bet Samuelson knows more than he\'s letting on. He probably has a lead on Twilight\'s Hammer and wants all the credit and glory for himself.$B$BWe should peek through his records at the SI:7 headquarters. Take me there and I should be allowed to look at his files and find out what he really knows. ', '', '', '', 'Speak with Anduin Wrynn. If he is no longer with you, you can find Anduin in Stormwind Keep.', 44921, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Samuelson\'s Papers Examined by Anduin', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);


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

-- ********************/////////////------- QUEST_HOLDING_ON_US END OF THE SCRIPT------- \\\\\\\\\\\\\\\***********************


-- ********************/////////////------- QUEST_THE_UNUSUAL_SOSPECTS START OF THE SCRIPT------- \\\\\\\\\\\\\\\***********************
-- NPC que da el quest QUEST_THE_UNUSUAL_SOSPECTS
DELETE FROM `creature_queststarter` WHERE `quest` = 26997;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (2439, 26997);

-- NPC que da el quest QUEST_THE_UNUSUAL_SOSPECTS
DELETE FROM `creature_questender` WHERE `quest` = 26997;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (44293, 26997);

-- QUEST TEMPLATE PARA EL QUEST 
DELETE FROM `quest_template` WHERE `Id` = 26997;
INSERT INTO `quest_template` (`Id`, `Method`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `WDBVerified`) VALUES (26997, 2, 84, 84, 0, 1519, 0, 0, 0, 0, 2098253, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26977, 27060, 0, 27064, 5, 90000, 331200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9437320, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Usual Suspects', 'Grill 6 Stormwind Dock Workers in Stormwind Harbor.', '<Samuelson scratches his chin, absently.>$B$BMy investigations reveal, ah, it\'s likely that there\'s trouble brewing among the Stormwind dock workers. Shifty lot. Don\'t trust \'em.$B$BYou should go there and shake the place down. Start grilling those longshoremen. That should keep you busy.$B$BGo rout out those Twilight infidels!', '', '', '', 'Talk to Anduin Wrynn about your findings. If he\'s not with you, you can find him again in Stormwind Keep.', 44827, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dock Workers Interrogated', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

-- TEMPLATE DEL NPC QUEST_CREDIT_BUNNY
DELETE FROM `creature_template` WHERE (`entry`=44827);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (44827, 0, 0, 0, 0, 0, 16480, 0, 0, 0, 'Stormwind Dock Worker Tracking Bunny', '', '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 128, '', 13623);

-- Optimization el NPC WORKER Quitado la flag de no deja marcarlo y agregado SpellClick
DELETE FROM creature_template WHERE entry = @NPC_WORKER;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`)
VALUES (@NPC_WORKER, 0, 0, 0, 0, 0, 5008, 5006, 5005, 5003, 'Stormwind Dock Worker', '', '', 0, 65, 65, 1, 1078, 1078, 16777216, 1, 1.14286, 1, 0, 200, 281, 0, 278, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 166, 246, 35, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 12340);


-- TEMPLATE DEL NPC PRINCIPE QUE SE SUMONEO Y ES EL QUE TE  SIGUE
DELETE FROM `creature_template` WHERE (`entry`=44293);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (44293, 0, 0, 0, 0, 0, 36740, 0, 0, 0, 'Anduin Wrynn', 'Prince of Stormwind', '', 0, 1, 1, 0, 35, 35, 7, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'npc_anduin_wrynn_summon', 13623);

-- ANTORCHA DEL NPC
DELETE FROM `creature_equip_template` WHERE (`entry`=44293);
INSERT INTO `creature_equip_template` (`entry`, `id`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES (44293, 1, 12748, 0, 0);

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


-- Condition para spell click , no puedes dar click si no tienes el quest
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='18') AND (`SourceGroup`=@NPC_WORKER) AND (`SourceEntry`=@SPELL_CLICK) AND (`SourceId`='0') AND (`ElseGroup`='0') AND (`ConditionTypeOrReference`='9') AND (`ConditionTarget`='0') AND (`ConditionValue1`=@QUEST_THE_UNUSUAL_SOSPECTS) AND (`ConditionValue2`='0') AND (`ConditionValue3`='0');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`) VALUES
 (18,@NPC_WORKER,@SPELL_CLICK,9,@QUEST_THE_UNUSUAL_SOSPECTS);


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

-- ********************/////////////------- QUEST_HOLDING_ON_US END OF THE SCRIPT------- *******************

-- 26960 My Son, the Prince
DELETE FROM `quest_template` WHERE `Id` = 26960;
INSERT INTO `quest_template` (`Id`, `Method`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `WDBVerified`) VALUES (26960, 2, 84, 84, 0, 1519, 0, 0, 0, 0, 2098253, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28716, 0, 0, 0, 1, 0, 33000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'My Son, the Prince', 'Introduce yourself to Prince Anduin in Stormwind Keep. Speak with King Wrynn once you are both acquainted.', 'Great burdens have been placed on my son\'s shoulders in his short lifetime, and I fear his responsibilities are only going to grow.$B$BHe will never learn leadership confined to the keep, but I am loath to send him forth without escort.$B$B$N, your deeds in the wake of this cataclysm are already legendary. You would be an excellent mentor for young Prince Anduin.$B$BPlease, introduce yourself to him. There is some pressing city business that you both can attend to for me.', '', '', '', 'Speak with King Wrynn in Stormwind Keep.', 44692, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Introduced to Anduin', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

-- principe q deve ser el summon no puede estar espaneado
DELETE FROM `creature` WHERE `id`=44293;


-- ********************/////////////------- Rallying the Fleet STAR OF THE SCRIPT------- *******************
-- NPC QUE EEMPIEZA EL QUEST
DELETE FROM `creature_queststarter` WHERE `quest` = 26975;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (29611, 26975);
-- NPC QUE TERMINA EL QUEST
DELETE FROM `creature_questender` WHERE `quest` = 26975;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (44749, 26975);

-- Template del NPC  KING VARIAN
DELETE FROM `creature_template` WHERE (`entry`=29611);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (29611, 0, 0, 0, 0, 0, 28127, 0, 0, 0, 'King Varian Wrynn', 'King of Stormwind', '', 9834, 88, 88, 3, 1733, 1733, 3, 1, 1.42857, 1, 3, 1225.5, 1544.7, 0, 1651, 70, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 1160.9, 1321.1, 225, 7, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 59688, 41056, 60509, 0, 0, 0, 0, 0, 0, 0, 700000, 750000, '', 0, 3, 0, 2090.46, 74, 1, 1, 0, 0, 0, 0, 0, 0, 144, 1, 613097436, 0, 'boss_varian_wrynn', 12340);

-- SPAWN DE VARIAN 
DELETE FROM `creature` WHERE `id`=29611;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(30477, 29611, 0, 0, 0, 1, 1, 28127, 0, -8363.06, 232.236, 157.073, 2.23402, 43200, 0, 0, 103070400, 0, 0, 0, 0, 0);

-- QUEST Rallying the Fleet 
DELETE FROM `quest_template` WHERE `Id` = 26975;
INSERT INTO `quest_template` (`Id`, `Method`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `WDBVerified`) VALUES (26975, 2, 84, 84, 0, 1519, 0, 0, 0, 0, 2098253, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26960, 0, 0, 27038, 4, 68000, 248400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 262286, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rallying the Fleet', 'Escort Prince Anduin to the Stormwind Docks and talk to Supply Sergeant Graves. If you get separated from the Prince, you"ll find him in the Stormwind throne room.', 'I am amassing a warfleet to assault Twilight Highlands and bring an end to Deathwing"s lackeys. My soldiers are ready but fleet preparations lag behind.$B$BMy men at the docks need some inspiration and motivation. A visit from the Prince here should lift their spirits and remind them of the bright future they"re fighting for.$B$BTake Prince Anduin to the docks with you and speak with Supply Sergeant Graves. I want Anduin to observe how a natural leader handles the situation.', 'Prince Anduin Escorted to Graves.', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Prince Anduin Escorted to Graves.', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

-- TEXTOS
DELETE FROM creature_text WHERE entry  = @SARGEANT_GRAVES;
INSERT INTO `creature_text`VALUES
(@SARGEANT_GRAVES, 0, 0, "Are you often sent to gather things for people ? I suppose a hero's work is never done.", 12, 0, 100, 1, 0, 0, "PRINCE SAY" );

-- SAI PARA NPC SARGEANT_GRAVES
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@SARGEANT_GRAVES;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@SARGEANT_GRAVES AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@SARGEANT_GRAVES,0,0,0,10,0,100,0,1,9,0,0,15,@QUEST_RALLE_THE_FLEET,0,0,0,0,0,17,0,9,0,0,0,0,0,"Supply Sergeant Graves - Within 1-9 Range Out of Combat LoS - Quest Credit 'Rallying the Fleet'"),
(@SARGEANT_GRAVES,0,1,0,19,0,100,0,@QUEST_MISSING_PART,0,0,0,1,0,0,0,0,0,0,9,@NPC_PRINCE,0,9,0,0,0,0,"Supply Sergeant Graves - On Quest 'Missing Parts' Taken - Say Line 0");

-- TEMPLATE PARA SARGEANT_GRAVES
DELETE FROM `creature_template` WHERE (`entry`=44749);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (44749, 0, 0, 0, 0, 0, 34115, 0, 0, 0, 'Supply Sergeant Graves', '', '', 0, 81, 81, 2, 1078, 1078, 3, 1, 1.14286, 1, 0, 464, 604, 0, 708, 5, 2000, 2000, 1, 32768, 2048, 2048, 0, 0, 0, 0, 0, 353, 512, 112, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 0, 1.5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 13623);
 
-- SPAWN PARA SARGEANT_GRAVES
DELETE FROM `creature` WHERE `id`=44749;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(63531, 44749, 0, 0, 0, 1, 1, 0, 0, -8453.28, 1147.95, 19.1351, 4.57276, 90, 0, 0, 1, 0, 0, 0, 0, 0);



-- ********************/////////////------- Rallying the Fleet END OF THE SCRIPT------- *******************

-- Twilight Investigation 26977
DELETE FROM `quest_template` WHERE `Id` = 26977;
INSERT INTO `quest_template` (`Id`, `Method`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `WDBVerified`) VALUES (26977, 2, 84, 84, 0, 1519, 0, 0, 0, 0, 2098253, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26960, 0, 0, 26997, 1, 0, 33000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Twilight Investigation', 'Speak with Major Samuelson in Stormwind Keep.', 'The city is still reeling from the seditious acts of the Twilight\'s Hammer in recent months. They prey on peasant fears and corrupt our most important citizens. We need to find out how deep the conspiracy runs.$B$BI\'ve tasked Major Samuelson of the Stormwind City Guard to head up an investigation. He\'s right here in the throne room. See if you can assist his efforts.', '', '', '', 'Speak with Major Samuelson in Stormwind Keep.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);



-- ********************/////////////------- Missing Parts START  OF THE SCRIPT------- *******************




/*

#########################################################
#  APARTIR DE AKI AHY Q COMENTAR OJO NO ESTA TERMINADO ##
#########################################################

*/
-- NPC QUE COMIENZA EL QUEST
DELETE FROM `creature_queststarter` WHERE `quest` = 27038;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (44749, 27038);

-- NPC QUE TERMINA EL QUEST
DELETE FROM `creature_questender` WHERE `quest` = 27038;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (44806, 27038);

-- QUEST TEMPLATE PARA QUEST_MISSING_PART
DELETE FROM `quest_template` WHERE `Id` = 27038;
INSERT INTO `quest_template` (`Id`, `Method`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `WDBVerified`) VALUES (27038, 2, 84, 84, 0, 1519, 0, 0, 0, 0, 2098253, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 90000, 331200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3145864, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63927, 63926, 63925, 0, 0, 0, 1, 1, 1, 0, 0, 0, 72, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Missing Parts', 'Gather up 5 Missing Parts from around the Stormwind Harbor.', '<The Sergeant turns his attention to you.>$B$BLook here, if you want to help speed things up around here, get Flintlocke off my back. A whole shipment of siege engine parts was misplaced and now it\'s scattered all up and down the dock.$B$BGather up the missing parts and get them to Flintlocke so he can finish construction. He\'s just across the road from me, waiting.', '', '', '', 'Deliver the parts to Fargo Flintlocke in Stormwind Harbor.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60757, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);


-- NPC TEMPLATE DEL NPC SARGEANT_GRAVES
DELETE FROM `creature_template` WHERE (`entry`=44749);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (44749, 0, 0, 0, 0, 0, 34115, 0, 0, 0, 'Supply Sergeant Graves', '', '', 0, 81, 81, 2, 1078, 1078, 3, 1, 1.14286, 1, 0, 464, 604, 0, 708, 5, 2000, 2000, 1, 32768, 2048, 2048, 0, 0, 0, 0, 0, 353, 512, 112, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 0, 1.5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 13623);

-- SPAWN DEL NPC SARGEANT_GRAVES
DELETE FROM `creature` WHERE `id`=44749;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(63531, 44749, 0, 0, 0, 1, 1, 0, 0, -8453.28, 1147.95, 19.1351, 4.57276, 90, 0, 0, 1, 0, 0, 0, 0, 0);


DELETE FROM `creature_template_addon` WHERE (`entry`=@NPC_FARGO_2);

DELETE FROM creature_text WHERE  entry =@NPC_FARGO_2;
INSERT INTO `creature_text`VALUES
(@NPC_FARGO_2,  0, 0, "All of our explosive are missing!?  $N something sinister is definitely happening here.", 12, 0, 100, 1, 0, 0, "FAGU_SAY" );

UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@NPC_FARGO_2;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@NPC_FARGO_2 AND `source_type`=0;

INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES

(@NPC_FARGO_2,0,1,0,20,0,100,0,@QUEST_MISSING_PART,0,0,0,1,0,0,0,0,0,0,11,@NPC_PRINCE,15,0,0,0,0,0,"Fargo Flintlocke - On Quest 'Missing Parts' Finished - Say Line 0");


DELETE FROM `gameobject_template` WHERE (`entry`=205144);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `AIName`, `ScriptName`, `WDBVerified`) VALUES (205144, 3, 1211, 'Missing Parts', '', 'Collecting', '', 0, 0, 1.4, 60757, 0, 0, 0, 0, 0, 43, 32191, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19676, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);

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

DELETE FROM `gameobject_loot_template` WHERE (`entry`=32191) AND (`item`=60757);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (32191, 60757, -100, 1, 0, 1, 1);

-- SET @NPC_MAJOR_SAMUELSON_SUMONED := 45014;

-- Samuelson Unmasket Arreglada la vida el y el mana
DELETE FROM `creature_template` WHERE (`entry`=45014);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(45014, 0, 0, 0, 0, 0, 32708, 0, 0, 0, 'Genn Greymane', '', '', 0, 88, 88, 3, 1732, 1732, 0, 1, 1.14286, 1, 1, 650, 856, 0, 2000, 4.6, 2000, 2000, 2, 32768, 2048, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 7, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 5.9466, 15.0298, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 13623);

/*
#############################################################################################
 ESTO ES DEL AVION TODAVIA NO ESTA TERMINADO FALTAN COSAS !!!!! NO TOCAR SOLO MAYOR Y EDDUARDS
 *************************** QUEST_TWLIGHT_SHORES ***************************
 ############################################################################################
 
 Spell click agregado para el avion 
*/
DELETE FROM npc_spellclick_spells WHERE npc_entry = @NPC_AVION_FIJO;
INSERT INTO `npc_spellclick_spells` VALUES
(@NPC_AVION_FIJO,@SPELL_MONTARSE_AVION,1,0);

-- Condition para spell click , no puedes dar click si no tienes el quest
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='18') AND (`SourceGroup`=@NPC_WORKER) AND (`SourceEntry`=@SPELL_CLICK) AND (`SourceId`='0') AND (`ElseGroup`='0') AND (`ConditionTypeOrReference`='9') AND (`ConditionTarget`='0') AND (`ConditionValue1`=@QUEST_THE_UNUSUAL_SOSPECTS) AND (`ConditionValue2`='0') AND (`ConditionValue3`='0');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`) VALUES
 (18,@NPC_WORKER,@SPELL_CLICK,9,@QUEST_THE_UNUSUAL_SOSPECTS);

 -- Condition para spell click , NO PUEDES MONTAR EL AVION SI NO TIENES EL QUEST
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='18') AND (`SourceGroup`=@NPC_AVION_FIJO) AND (`SourceEntry`=@SPELL_MONTARSE_AVION) AND (`SourceId`='0') AND (`ElseGroup`='0') AND (`ConditionTypeOrReference`='9') AND (`ConditionTarget`='0') AND (`ConditionValue1`=@QUEST_TWLIGHT_SHORES) AND (`ConditionValue2`='0') AND (`ConditionValue3`='0');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`) VALUES
 (18,@NPC_AVION_FIJO,@SPELL_MONTARSE_AVION,9,@QUEST_TWLIGHT_SHORES);

-- WAYPOINT DEL AVION 
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES ('50266', '0', '-8537.88', '1282.94', '2.47997', '0', 'WAYPONT DEL AVION');
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES ('50266', '1', '-8545.76', '1363.67', '17.037', '0', 'WAYPONT DEL AVION');
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES ('50266', '2', '-8541.39', '1390.58', '22.1691', '0', 'WAYPONT DEL AVION');
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES ('50266', '3', '-8502.87', '1410.78', '36.5398', '0', 'WAYPONT DEL AVION');
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES ('50266', '4', '-8474.67', '1407.54', '54.93', '0', 'WAYPONT DEL AVION');
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES ('50266', '5', '-8463.77', '1389.3', '77.1518', '0', 'WAYPONT DEL AVION');
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES ('50266', '6', '-8455.99', '1349.43', '110.225', '0', 'WAYPONT DEL AVION');
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES ('50266', '7', '-8456.69', '1299.34', '123.59', '0', 'WAYPONT DEL AVION');
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES ('50266', '8', '-8463.85', '1240.51', '130.976', '0', 'WAYPONT DEL AVION');
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES ('50266', '9', '-8479.92', '1137.2', '124.034', '0', 'WAYPONT DEL AVION');
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES ('50266', '10', '-8486.92', '1087.25', '63.8685', '0', 'WAYPONT DEL AVION');
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES ('50266', '11', '-8491.05', '1057.9', '64.3419', '0', 'WAYPONT DEL AVION');
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES ('50266', '12', '-8499.44', '1020.97', '96.2129', '0', 'WAYPONT DEL AVION');
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES ('50266', '13', '-8535.12', '1006.22', '117.475', '0', 'WAYPONT DEL AVION');
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES ('50266', '14', '-8575.21', '987.209', '110.305', '0', 'WAYPONT DEL AVION');
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES ('50266', '15', '-8604.61', '965.445', '108.969', '0', 'WAYPONT DEL AVION');
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES ('50266', '16', '-8632.2', '946.018', '109.038', '0', 'WAYPONT DEL AVION');
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES ('50266', '17', '-8662.1', '934.105', '127.996', '0', 'WAYPONT DEL AVION');
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES ('50266', '18', '-8704.38', '919.179', '144.864', '0', 'WAYPONT DEL AVION');
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES ('50266', '19', '-8767', '907.322', '146.788', '0', 'WAYPONT DEL AVION');
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES ('50266', '20', '-8805.34', '882.012', '147.481', '0', 'WAYPONT DEL AVION');
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES ('50266', '21', '-8846.47', '836.11', '149.602', '0', 'WAYPONT DEL AVION');
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES ('50266', '22', '-8881.1', '791.513', '151.735', '0', 'WAYPONT DEL AVION');
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES ('50266', '23', '-8905.17', '754.531', '155.765', '0', 'WAYPONT DEL AVION');
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES ('50266', '24', '-8916.83', '722.044', '158.92', '0', 'WAYPONT DEL AVION');
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES ('50266', '25', '-8913.35', '687.828', '162.112', '0', 'WAYPONT DEL AVION');
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES ('50266', '26', '-8897.69', '665.131', '164.647', '0', 'WAYPONT DEL AVION');
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES ('50266', '27', '-8864.77', '648.465', '168.03', '0', 'WAYPONT DEL AVION');
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES ('50266', '28', '-8808.61', '618.939', '169.828', '0', 'WAYPONT DEL AVION');
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES ('50266', '29', '-8767.71', '590.29', '166.467', '0', 'WAYPONT DEL AVION');
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES ('50266', '30', '-8711.59', '549.088', '173.457', '0', 'WAYPONT DEL AVION');
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES ('50266', '31', '-8669.64', '518.036', '179.164', '0', 'WAYPONT DEL AVION');
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES ('50266', '32', '-8636.1', '493.172', '183.73', '0', 'WAYPONT DEL AVION');
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES ('50266', '33', '-8599.77', '466.236', '188.676', '0', 'WAYPONT DEL AVION');


-- Script names para los npcs
-- Updated Script names
UPDATE `creature_template` SET `ScriptName`="npc_the_black_bishop" WHERE (`entry`=@NPC_BLACK_BISHOP);
UPDATE `creature_template` SET `ScriptName`="npc_the_black_bishop_telepor_bunny" WHERE (`entry`=@NPC_BISHOP_TELEPORT_BUNNY);
UPDATE `creature_template` SET `ScriptName`="npc_anduin_wrynn_throne" WHERE `entry` = @NPC_PRINCE_TRONHE;
UPDATE `creature_template` SET `ScriptName`="npc_anduin_wrynn_summon" WHERE `entry` = @NPC_PRINCE; 
UPDATE `creature_template` SET `ScriptName`="npc_major_samuelson" WHERE `entry` = @NPC_MAJOR_SAMUELSON;
UPDATE `creature_template` SET `ScriptName`="npc_avion" WHERE `entry` = 50266;
