/*
#################################################################################################
########     	QUEST_My Son The Prince         #################################################
######## TODO LO QUE TENGA :->(ESTO NO TIENE CAMBIOS) SIGNIFICA Q ES PARA MIGAR PARA MOP  #######
#################################################################################################
*/

/*
###########################################
########  Usa C++ Script en el Pricipe.cpp#            
###########################################
*/

	SET @NPC_PRINCE			         := 44293; 
	SET @NPC_PRINCE_TRONHE	         := 1747;

-- TEmplate del QUest 
-- Quest Giver Varian 
-- Npc que termina el quest VARIAN (ESTO NO TIENE CAMBIOS)
DELETE FROM `quest_template` WHERE `Id` = 26960;
INSERT INTO `quest_template` (`Id`, `Method`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `WDBVerified`) VALUES (26960, 2, 84, 84, 0, 1519, 0, 0, 0, 0, 2098253, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28716, 0, 0, 0, 1, 0, 33000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'My Son, the Prince', 'Introduce yourself to Prince Anduin in Stormwind Keep. Speak with King Wrynn once you are both acquainted.', 'Great burdens have been placed on my son\'s shoulders in his short lifetime, and I fear his responsibilities are only going to grow.$B$BHe will never learn leadership confined to the keep, but I am loath to send him forth without escort.$B$B$N, your deeds in the wake of this cataclysm are already legendary. You would be an excellent mentor for young Prince Anduin.$B$BPlease, introduce yourself to him. There is some pressing city business that you both can attend to for me.', '', '', '', 'Speak with King Wrynn in Stormwind Keep.', 44692, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Introduced to Anduin', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

-- INVOLUCARO EL PRINCIPE DEL TRRONO
DELETE FROM `creature_template` WHERE (`entry`=1747);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (1747, 0, 0, 0, 0, 0, 36740, 0, 0, 0, 'Anduin Wrynn', 'Prince of Stormwind', '', 11874, 5, 5, 0, 11, 11, 3, 1, 1.14286, 1, 0, 5, 7, 0, 32, 1, 2000, 2000, 1, 768, 2048, 0, 0, 0, 0, 0, 0, 3, 4, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 2, 'npc_anduin_wrynn_throne', 12340);

-- LOCALIZACION DEL PRINCIPE DEL TRONO
DELETE FROM `creature` WHERE `id`=1747;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(NULL, 1747, 0, 1519, 1519, 1, 65535, 0, 1, -8360.24, 234.739, 156.991, 2.59316, 300, 0, 0, 42, 0, 0, 0, 0, 0);

-- Borado el principe q se sumonea
DELETE FROM `creature` WHERE `id`=44293;
DELETE FROM `creature` WHERE `id`=44692;

-- MISIONES Q DA EL PRINCIPE (ESTO NO TIENE CAMBIOS)
DELETE FROM `creature_questrelation` WHERE (`id`='1747');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('1747', '27044');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('1747', '27064');

-- QUEST POI (ESTO NO TIENE CAMBIOS)

DELETE FROM `quest_poi` WHERE (`questId`='26960');
INSERT INTO `quest_poi` (`questId`, `id`, `objIndex`, `mapid`, `WorldMapAreaId`, `FloorId`, `unk3`, `unk4`) VALUES ('26960', '1', '-1', '0', '301', '0', '0', '1');
INSERT INTO `quest_poi` (`questId`, `id`, `objIndex`, `mapid`, `WorldMapAreaId`, `FloorId`, `unk3`, `unk4`) VALUES ('26960', '2', '0', '0', '301', '0', '0', '7');
-- QUEST POI PONIT (ESTO NO TIENE CAMBIOS)
DELETE FROM `quest_poi_points` WHERE (`questId`='26960');
INSERT INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) VALUES ('26960', '1', '0', '-8363', '232');
INSERT INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) VALUES ('26960', '2', '0', '-8355', '240');

-- Antorcha que va en la mano del principe
DELETE FROM `creature_equip_template` WHERE (`entry`=1747);
INSERT INTO `creature_equip_template` (`entry`, `id`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES (1747, 1, 12748, 0, 0);


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




