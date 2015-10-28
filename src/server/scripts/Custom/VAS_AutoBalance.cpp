/*
TER-Server
 */



#include "Configuration/Config.h"
#include "MapManager.h"
#include "Map.h"
#include <vector>
#include "ScriptMgr.h"
#include "Player.h"

#define BOOL_TO_STRING(b) ((b)? "true":"false")

struct AutoBalanceCreatureInfo
{
    uint32 instancePlayerCount;
    float DamageMultiplier;
};

static std::map<uint32, AutoBalanceCreatureInfo> CreatureInfo; // A hook should be added to remove the mapped entry when the creature is dead or this should be added into the creature object
static std::map<int, int> forcedCreatureIds;                   // The map values correspond with the VAS.AutoBalance.XX.Name entries in the configuration file.

int GetValidDebugLevel()
{
    int debugLevel = sWorld->getIntConfig(VAS_VasDebug);

    if ((debugLevel < 0) || (debugLevel > 3))
    {
        return 1;
    }
    return debugLevel;
}

void LoadForcedCreatureIdsFromString(std::string creatureIds, int forcedPlayerCount) // Used for reading the string from the configuration file to for those creatures who need to be scaled for XX number of players.
{
    std::string delimitedValue;
    std::stringstream creatureIdsStream;

    creatureIdsStream.str(creatureIds);
    while (std::getline(creatureIdsStream, delimitedValue, ',')) // Process each Creature ID in the string, delimited by the comma - ","
    {
        int creatureId = atoi(delimitedValue.c_str());
        if (creatureId >= 0)
        {
            forcedCreatureIds[creatureId] = forcedPlayerCount;
        }
    }
}

int GetForcedCreatureId(int creatureId)
{
    if(forcedCreatureIds.find(creatureId) == forcedCreatureIds.end()) // Don't want the forcedCreatureIds map to blowup to a massive empty array
    {
        return 0;
    }
    return forcedCreatureIds[creatureId];
}

class VAS_AutoBalance_WorldScript : public WorldScript
{
    public:
        VAS_AutoBalance_WorldScript()
            : WorldScript("VAS_AutoBalance_WorldScript")
        {
        }

    void OnConfigLoad(bool /*reload*/)
    {
    }

    void OnStartup()
    {
    }

    void SetInitialWorldSettings()
    {
        // Load from the VAS.AutoBalance.XX.Name entries in the Configuration File
        forcedCreatureIds.clear();
        LoadForcedCreatureIdsFromString(sWorld->GetVAS40(), 40);
        LoadForcedCreatureIdsFromString(sWorld->GetVAS25(), 25);
        LoadForcedCreatureIdsFromString(sWorld->GetVAS10(), 10);
        LoadForcedCreatureIdsFromString(sWorld->GetVAS5(), 5);
        LoadForcedCreatureIdsFromString(sWorld->GetVAS2(), 2);

		sLog->outDebug(LOG_FILTER_WORLDSERVER, "----------------------------------------------------");
		sLog->outDebug(LOG_FILTER_WORLDSERVER, "  Powered by {VAS} AutoBalance");
		sLog->outDebug(LOG_FILTER_WORLDSERVER, "----------------------------------------------------");
		sLog->outDebug(LOG_FILTER_WORLDSERVER, "  xPlayer = %4.1f ", sWorld->getFloatConfig(VAS_Config_xPlayer));
		sLog->outDebug(LOG_FILTER_WORLDSERVER, "  AutoInstance = %u ", sWorld->getIntConfig(VAS_AutoInstance));
		sLog->outDebug(LOG_FILTER_WORLDSERVER, "  PlayerChangeNotify = %u ", sWorld->getIntConfig(VAS_PlayerChangeNotify));
		sLog->outDebug(LOG_FILTER_WORLDSERVER, "  Min.D.Mod = %4.2f ", sWorld->getFloatConfig(VAS_Min_D_Mod));
		sLog->outDebug(LOG_FILTER_WORLDSERVER, "  Min.HP.Mod = %4.2f ", sWorld->getFloatConfig(VAS_Min_HP_Mod));
		sLog->outDebug(LOG_FILTER_WORLDSERVER, "  VasDebug   =  %u ", GetValidDebugLevel());
		sLog->outDebug(LOG_FILTER_WORLDSERVER, "----------------------------------------------------\n");
    }

};

class VAS_AutoBalance_PlayerScript : public PlayerScript
{
    public:
        VAS_AutoBalance_PlayerScript()
            : PlayerScript("VAS_AutoBalance_PlayerScript")
        {
        }

    void OnLogin(Player *Player)
    {

        if (GetValidDebugLevel() >= 3)
			sLog->outDebug(LOG_FILTER_PLAYER_LOADING, "### VAS_AutoBalance_PlayerScript - OnLogin Player=%s", Player->GetName());
    }
};

class VAS_AutoBalance_UnitScript : public UnitScript
{
    public:
        VAS_AutoBalance_UnitScript()
            : UnitScript("VAS_AutoBalance_UnitScript")
        {
        }

    uint32 DealDamage(Unit* AttackerUnit, Unit *playerVictim, uint32 damage, DamageEffectType damagetype)
    {
        if (AttackerUnit->GetMap()->IsDungeon() && playerVictim->GetMap()->IsDungeon())
            if (AttackerUnit->GetTypeId() != TYPEID_PLAYER)
            {
                if (GetValidDebugLevel() >= 3)
					sLog->outDebug(LOG_FILTER_TSCR, "### VAS_AutoBalance_UnitScript - VAS_Unit_DealDamage Attacker=%s Victim=%s Start Damage=%u", AttackerUnit->GetName(), playerVictim->GetName(), damage);
                damage = VAS_Modifer_DealDamage(AttackerUnit,damage);
                if (GetValidDebugLevel() >= 3)
					sLog->outDebug(LOG_FILTER_TSCR, "### VAS_AutoBalance_UnitScript - VAS_Unit_DealDamage Attacker=%s Victim=%s End Damage=%u", AttackerUnit->GetName(), playerVictim->GetName(), damage);
            }
            return damage;
    }

    void ModifyPeriodicDamageAurasTick(Unit* target, Unit* attacker, uint32& damage)
    {
        if (attacker->GetMap()->IsDungeon() && target->GetMap()->IsDungeon())
		{
            if (attacker->GetTypeId() != TYPEID_PLAYER)
            {
                if (GetValidDebugLevel() >= 3)
					sLog->outDebug(LOG_FILTER_TSCR, "### VAS_AutoBalance_UnitScript - VAS_Unit_HandlePeriodicDamage Attacker=%s Victim=%s Start Damage=%u", attacker->GetName(), target->GetName(), damage);

				if (!((attacker->isHunterPet() || attacker->isPet() || attacker->isSummon()) && attacker->IsControlledByPlayer()))
				{
					float multiplyer = (float)CreatureInfo[attacker->GetGUID()].DamageMultiplier;
					damage = damage * multiplyer;
				}

                if (GetValidDebugLevel() >= 3)
					sLog->outDebug(LOG_FILTER_TSCR, "### VAS_AutoBalance_UnitScript - VAS_Unit_HandlePeriodicDamage Attacker=%s Victim=%s End Damage=%u", attacker->GetName(), target->GetName(), damage);
            }
		}
    }

    void ModifySpellDamageTaken(Unit* target, Unit* attacker, int32& damage)
    {
        if ((attacker->GetMap()->IsDungeon() && target->GetMap()->IsDungeon()) || ( attacker->GetMap()->IsBattleground() && target->GetMap()->IsBattleground()))
        {
            if (attacker->GetTypeId() != TYPEID_PLAYER)
            {
                if (GetValidDebugLevel() >= 3)
					sLog->outDebug(LOG_FILTER_TSCR, "### VAS_AutoBalance_UnitScript - CalculateSpellDamageTaken Attacker=%s Victim=%s Start Damage=%u", attacker->GetName(), target->GetName(), damage);

				if ((attacker->isHunterPet() || attacker->isPet() || attacker->isSummon()) && attacker->IsControlledByPlayer())
                    return;

                float multiplyer = (float)CreatureInfo[attacker->GetGUID()].DamageMultiplier;
				damage = damage * multiplyer;

                if (GetValidDebugLevel() >= 3)
					sLog->outDebug(LOG_FILTER_TSCR, "### VAS_AutoBalance_UnitScript - CalculateSpellDamageTaken Attacker=%s Victim=%s End Damage=%u", attacker->GetName(), target->GetName(), damage);
            }
        }
            return;
    }

	void ModifyHealRecieved(Unit* target, Unit* victim, uint32& addHeal)
    {
        if (victim->GetMap()->IsDungeon() && victim->GetMap()->IsDungeon())
        {
            if (victim->GetTypeId() != TYPEID_PLAYER && target->GetTypeId() != TYPEID_PLAYER)
            {
                if (GetValidDebugLevel() >= 3)
					sLog->outDebug(LOG_FILTER_TSCR, "### VAS_AutoBalance_UnitScript - ModifyHealRecieved Attacker=%s Victim=%s Start Damage=%u", victim->GetName(), target->GetName(), addHeal);

                float multiplyer = (float)CreatureInfo[victim->GetGUID()].DamageMultiplier;
				addHeal = addHeal * multiplyer;

                if (GetValidDebugLevel() >= 3)
					sLog->outDebug(LOG_FILTER_TSCR, "### VAS_AutoBalance_UnitScript - ModifyHealRecieved Attacker=%s Victim=%s End Damage=%u", victim->GetName(), target->GetName(), addHeal);
            }
        }
            return;
    }

    void ModifyMeleeDamage(Unit* target, Unit* attacker, uint32& damage)
    {
        // Make sure the Attacker and the Victim are in the same location, in addition that the attacker is not player.
        if (((attacker->GetMap()->IsDungeon() && target->GetMap()->IsDungeon()) || (attacker->GetMap()->IsBattleground() && target->GetMap()->IsBattleground())) && (attacker->GetTypeId() != TYPEID_PLAYER))
			if (!((attacker->isHunterPet() || attacker->isPet() || attacker->isSummon()) && attacker->IsControlledByPlayer())) // Make sure that the attacker is not a Pet of some sort
            {
                if (GetValidDebugLevel() >= 3)
					sLog->outDebug(LOG_FILTER_TSCR, "### VAS_AutoBalance_UnitScript - CalculateMeleeDamage Attacker=%s Victim=%s Start Damage=%u", attacker->GetName(), target->GetName(), damage);

				float multiplyer = (float)CreatureInfo[attacker->GetGUID()].DamageMultiplier;
				damage = damage * multiplyer;
                //damageInfo->damage = (float)damageInfo->damage * (float)CreatureInfo[damageInfo->attacker->GetGUID()].DamageMultiplier;

                if (GetValidDebugLevel() >= 3)
					sLog->outDebug(LOG_FILTER_TSCR, "### VAS_AutoBalance_UnitScript - CalculateMeleeDamage Attacker=%s Victim=%s End Damage=%u", attacker->GetName(), target->GetName(), damage);
            }
            return;
    }

    uint32 VAS_Modifer_DealDamage(Unit* AttackerUnit,uint32 damage)
    {
		if ((AttackerUnit->isHunterPet() || AttackerUnit->isPet() || AttackerUnit->isSummon()) && AttackerUnit->IsControlledByPlayer())
        return damage;

    float damageMultiplier = CreatureInfo[AttackerUnit->GetGUID()].DamageMultiplier;

    return damage * damageMultiplier;

    }

};


class VAS_AutoBalance_AllMapScript : public AllMapScript
{
    public:
        VAS_AutoBalance_AllMapScript()
            : AllMapScript("VAS_AutoBalance_AllMapScript")
        {
        }

    void OnPlayerEnterAll(Map* map, Player* player)
    {
        if (GetValidDebugLevel() >= 2)
        {
			sLog->outDebug(LOG_FILTER_TSCR, "----------------------------------------------------");
			sLog->outDebug(LOG_FILTER_TSCR, "## VAS_AutoBalance_AllMapScript - OnPlayerEnterAll");
			sLog->outDebug(LOG_FILTER_TSCR, "## For InsatanceID %u", map->GetInstanceId());
			sLog->outDebug(LOG_FILTER_TSCR, "## IsDungeon= %u", map->GetEntry()->IsDungeon());
			sLog->outDebug(LOG_FILTER_TSCR, "## For Map %u", player->GetMapId());
			sLog->outDebug(LOG_FILTER_TSCR, "## PlayersInMap %u", map->GetPlayersCountExceptGMs());
			sLog->outDebug(LOG_FILTER_TSCR, "## pDifficulty %u", uint32(player->GetDifficulty(player->GetMap()->IsHeroic())));
			sLog->outDebug(LOG_FILTER_TSCR, "## pGetDungeonDifficulty %u", uint32(player->GetDungeonDifficulty()));
			sLog->outDebug(LOG_FILTER_TSCR, "## pGetRaidDifficulty %u", uint32(player->GetRaidDifficulty()));
			sLog->outDebug(LOG_FILTER_TSCR, "## maxPlayers %u", ((InstanceMap*)sMapMgr->FindMap(player->GetMapId(), player->GetInstanceId()))->GetMaxPlayers());
			sLog->outDebug(LOG_FILTER_TSCR, "## IsHeroic=%s IsRaid=%s IsRegularDifficulty=%s IsRaidOrHeroicDungeon=%s IsNonRaidDungeon=%s", BOOL_TO_STRING(player->GetMap()->IsHeroic()), BOOL_TO_STRING(player->GetMap()->IsRaid()), BOOL_TO_STRING(player->GetMap()->IsRegularDifficulty()), BOOL_TO_STRING(player->GetMap()->IsRaidOrHeroicDungeon()), BOOL_TO_STRING(player->GetMap()->IsNonRaidDungeon()));
			sLog->outDebug(LOG_FILTER_TSCR, "----------------------------------------------------\n");
        }

        if (sWorld->getIntConfig(VAS_PlayerChangeNotify) >= 1)
        {
			if ((map->GetEntry()->IsDungeon()) && !player->isGameMaster())
            {
                Map::PlayerList const &playerList = map->GetPlayers();
                if (!playerList.isEmpty())
                {
                    for (Map::PlayerList::const_iterator playerIteration = playerList.begin(); playerIteration != playerList.end(); ++playerIteration)
                    {
						if (Player* playerHandle = playerIteration->getSource())
                        {
							ChatHandler chatHandle = ChatHandler(playerHandle->GetSession());
                            ChatHandler(player->GetSession()).PSendSysMessage("|cffFF0000 [AutoBalance]|r|cffFF8000 %s entered the Instance %s. Auto setting player count to %u |r",player->GetName(),map->GetMapName(),map->GetPlayersCountExceptGMs());
                        }
                    }
                }
            }
        }
    }

    void OnPlayerLeaveAll(Map* map, Player* player)
    {

        if (GetValidDebugLevel() >= 3)
			sLog->outDebug(LOG_FILTER_TSCR, "#### VAS_AutoBalance_AllMapScript - OnPlayerLeaveAll map=%s player=%s", map->GetMapName(), player->GetName());

        int instancePlayerCount = map->GetPlayersCountExceptGMs() - 1;

        if (instancePlayerCount >=1)
        {
            if (GetValidDebugLevel() >= 2)
            {
				sLog->outDebug(LOG_FILTER_TSCR, "----------------------------------------------------");
				sLog->outDebug(LOG_FILTER_TSCR, "## VAS_AutoBalance_AllMapScript - OnPlayerLeaveAll");
				sLog->outDebug(LOG_FILTER_TSCR, "## For InsatanceID %u", map->GetInstanceId());
				sLog->outDebug(LOG_FILTER_TSCR, "## IsDungeon= %u", map->GetEntry()->IsDungeon());
				sLog->outDebug(LOG_FILTER_TSCR, "## For Map %u", player->GetMapId());
				sLog->outDebug(LOG_FILTER_TSCR, "## PlayersInMap %u", instancePlayerCount);
				sLog->outDebug(LOG_FILTER_TSCR, "----------------------------------------------------\n");
            }

            if (sWorld->getIntConfig(VAS_PlayerChangeNotify) >= 1)
            {
				if ((map->GetEntry()->IsDungeon()) && !player->isGameMaster())
                {
                    Map::PlayerList const &playerList = map->GetPlayers();
                    if (!playerList.isEmpty())
                    {
                        for (Map::PlayerList::const_iterator playerIteration = playerList.begin(); playerIteration != playerList.end(); ++playerIteration)
                        {
							if (Player* playerHandle = playerIteration->getSource())
                            {
								ChatHandler chatHandle = ChatHandler(playerHandle->GetSession());
                                ChatHandler(player->GetSession()).PSendSysMessage("|cffFF0000 [VAS-AutoBalance]|r|cffFF8000 %s left the Instance %s. Auto setting player count to %u |r",player->GetName(),map->GetMapName(),instancePlayerCount);
                            }
                        }
                    }
                }
            }
        }
    }
};

class VAS_AutoBalance_WorldMapScript : public WorldMapScript
{
    public:
        VAS_AutoBalance_WorldMapScript()
            : WorldMapScript("VAS_AutoBalance_WorldMapScript",0)
        {
        }

    void OnPlayerEnter(Map* map, Player* player)
    {

        if (GetValidDebugLevel() >= 3)
			sLog->outDebug(LOG_FILTER_TSCR, "### VAS_AutoBalance_WorldMapScript - OnPlayerEnter Map=%s player=%s", map->GetMapName(), player->GetName());
    }

    void OnPlayerLeave(Map* map, Player* player)
    {

        if (GetValidDebugLevel() >= 3)
			sLog->outDebug(LOG_FILTER_TSCR, "### VAS_AutoBalance_WorldMapScript - OnPlayerLeave Map=%s player=%s", map->GetMapName(), player->GetName());
    }
};


class VAS_AutoBalance_AllCreatureScript : public AllCreatureScript
{
    public:
        VAS_AutoBalance_AllCreatureScript()
            : AllCreatureScript("VAS_AutoBalance_AllCreatureScript")
        {
        }


    void Creature_SelectLevel(const CreatureTemplate *creatureTemplate, Creature* creature)
    {

        if (creature->GetMap()->IsDungeon())
        {
            ModifyCreatureAttributes(creature);
            CreatureInfo[creature->GetGUID()].instancePlayerCount = creature->GetMap()->GetPlayersCountExceptGMs();
        }
    }

    void OnAllCreatureUpdate(Creature* creature, uint32 diff)
    {
        if(!(CreatureInfo[creature->GetGUID()].instancePlayerCount == creature->GetMap()->GetPlayersCountExceptGMs()))
        {
            if (creature->GetMap()->IsDungeon() || creature->GetMap()->IsBattleground())
                ModifyCreatureAttributes(creature);
            CreatureInfo[creature->GetGUID()].instancePlayerCount = creature->GetMap()->GetPlayersCountExceptGMs();
        }
    }

    void ModifyCreatureAttributes(Creature* creature)
    {
		if (((creature->isHunterPet() || creature->isPet() || creature->isSummon()) && creature->IsControlledByPlayer()) || sWorld->getIntConfig(VAS_AutoInstance) < 1 || creature->GetMap()->GetPlayersCountExceptGMs() <= 0)
        {
            return;
        }

        CreatureTemplate const *creatureTemplate = creature->GetCreatureTemplate();
        CreatureBaseStats const* creatureStats = sObjectMgr->GetCreatureBaseStats(creature->getLevel(), creatureTemplate->unit_class);

        float damageMultiplier = 1.0f;
        float healthMultiplier = 1.0f;

        uint32 baseHealth = creatureStats->GenerateHealth(creatureTemplate);
        uint32 baseMana = creatureStats->GenerateMana(creatureTemplate);
        uint32 instancePlayerCount = creature->GetMap()->GetPlayersCountExceptGMs();
        uint32 maxNumberOfPlayers = ((InstanceMap*)sMapMgr->FindMap(creature->GetMapId(), creature->GetInstanceId()))->GetMaxPlayers();
        uint32 scaledHealth = 0;
        uint32 scaledMana = 0;

        //   VAS SOLO  - By MobID
        if(GetForcedCreatureId(creatureTemplate->Entry) > 0)
        {
            maxNumberOfPlayers = GetForcedCreatureId(creatureTemplate->Entry); // Force maxNumberOfPlayers to be changed to match the Configuration entry.
        }

        // (tanh((X-2.2)/1.5) +1 )/2    // 5 Man formula X = Number of Players
        // (tanh((X-5)/2) +1 )/2        // 10 Man Formula X = Number of Players
        // (tanh((X-16.5)/6.5) +1 )/2   // 25 Man Formula X = Number of players
        //
        // Note: The 2.2, 5, and 16.5 are the number of players required to get 50% health.
        //       It's not required this be a whole number, you'd adjust this to raise or lower
        //       the hp modifier for per additional player in a non-whole group. These
        //       values will eventually be part of the configuration file once I finalize the mod.
        //
        //       The 1.5, 2, and 6.5 modify the rate of percentage increase between
        //       number of players. Generally the closer to the value of 1 you have this
        //       the less gradual the rate will be. For example in a 5 man it would take 3
        //       total players to face a mob at full health.
        //
        //       The +1 and /2 values raise the TanH function to a positive range and make
        //       sure the modifier never goes above the value or 1.0 or below 0.
        //
        //       Lastly this formula has one side effect on full groups Bosses and mobs will
        //       never have full health, this can be tested against by making sure the number
        //       of players match the maxNumberOfPlayers variable.

        switch (maxNumberOfPlayers)
        {
        case 40:
            healthMultiplier = (float)instancePlayerCount / (float)maxNumberOfPlayers; // 40 Man Instances oddly enough scale better with the old formula
            break;
        case 25:
            healthMultiplier = (tanh((instancePlayerCount - 16.5f) / 1.5f) + 1.0f) / 2.0f;
            break;
        case 10:
            healthMultiplier = (tanh((instancePlayerCount - 4.5f) / 1.5f) + 1.0f) / 2.0f;
            break;
        case 2:
            healthMultiplier = (float)instancePlayerCount / (float)maxNumberOfPlayers;                   // Two Man Creatures are too easy if handled by the 5 man formula, this would only
            break;                                                                         // apply in the situation where it's specified in the configuration file.
        default:
            healthMultiplier = (tanh((instancePlayerCount - 2.2f) / 1.5f) + 1.0f) / 2.0f;    // default to a 5 man group
        }

        //   VAS SOLO  - Map 0,1 and 530 ( World Mobs )                                                               // This may be where VAS_AutoBalance_CheckINIMaps might have come into play. None the less this is
        if((creature->GetMapId() == 0 || creature->GetMapId() == 1 || creature->GetMapId() == 530) && (creature->isElite() || creature->isWorldBoss()))  // specific to World Bosses and elites in those Maps, this is going to use the entry XPlayer in place of instancePlayerCount.
        {
            if(baseHealth > 800000){
                healthMultiplier = (tanh((sWorld->getFloatConfig(VAS_Config_xPlayer) - 5.0f) / 1.5f) + 1.0f) / 2.0f;
            }else{
                healthMultiplier = (tanh((sWorld->getFloatConfig(VAS_Config_xPlayer) - 2.2f) / 1.5f) + 1.0f) / 2.0f; // Assuming a 5 man configuration, as World Bosses have been relatively retired since BC so unless the boss has some substantial baseHealth
            }

        }

        // Ensure that the healthMultiplier is not lower than the configuration specified value. -- This may be Deprecated later.
        if(healthMultiplier <= sWorld->getFloatConfig(VAS_Min_HP_Mod) )
        {
            healthMultiplier = sWorld->getFloatConfig(VAS_Min_HP_Mod);
        }

        //Getting the list of Classes in this group - this will be used later on to determine what additional scaling will be required based on the ratio of tank/dps/healer
        //GetPlayerClassList(creature, playerClassList); // Update playerClassList with the list of all the participating Classes


        scaledHealth = uint32((baseHealth * healthMultiplier) + 1.0f);
        // Now adjusting Mana, Mana is something that can be scaled linearly
        scaledMana = ((baseMana/maxNumberOfPlayers) * instancePlayerCount);
        // Now Adjusting Damage, this too is linear for now .... this will have to change I suspect.
        damageMultiplier = (float)instancePlayerCount / (float)maxNumberOfPlayers;

        // Can not be less then Min_D_Mod
        if(damageMultiplier <= sWorld->getFloatConfig(VAS_Min_D_Mod))
        {
            damageMultiplier = sWorld->getFloatConfig(VAS_Min_D_Mod);
        }

        if((GetValidDebugLevel() >= 3))
        {
			sLog->outDebug(LOG_FILTER_TSCR, "## VAS-AutoBalance MobID=%u MapID=%u creatureName=%s  GUID=%llu  instancePlayerCount=%u", creatureTemplate->Entry, creature->GetMapId(), creatureTemplate->Name.c_str(), creature->GetGUID(), instancePlayerCount);
			sLog->outDebug(LOG_FILTER_TSCR, "## VAS-AutoBalance MapDifficulty=%u Health=%u / %u healthMultiplier=%4.5f", creature->GetMap()->GetDifficulty(), scaledHealth, baseHealth, healthMultiplier);
			sLog->outDebug(LOG_FILTER_TSCR, "## VAS-AutoBalance maxNumberOfPlayers=%u IsRaid=%s", maxNumberOfPlayers, BOOL_TO_STRING(creature->GetMap()->IsRaid()));
			sLog->outDebug(LOG_FILTER_TSCR, "## VAS-AutoBalance Mana %u / %u", baseMana, scaledMana);
			sLog->outDebug(LOG_FILTER_TSCR, "## VAS-AutoBalance damageMultiplier=%4.2f", damageMultiplier);
        }

        creature->SetCreateHealth(scaledHealth);
        creature->SetMaxHealth(scaledHealth);
        creature->ResetPlayerDamageReq();
        creature->SetCreateMana(scaledMana);
        creature->SetMaxPower(POWER_MANA, scaledMana);
        creature->SetPower(POWER_MANA, scaledMana);
        creature->SetModifierValue(UNIT_MOD_HEALTH, BASE_VALUE, (float)scaledHealth);
        creature->SetModifierValue(UNIT_MOD_MANA, BASE_VALUE, (float)scaledMana);
        CreatureInfo[creature->GetGUID()].DamageMultiplier = damageMultiplier;
    }
};

void AddSC_VAS_AutoBalance()
{
    new VAS_AutoBalance_WorldScript;
    new VAS_AutoBalance_PlayerScript;
    new VAS_AutoBalance_UnitScript;
    new VAS_AutoBalance_AllCreatureScript;
    new VAS_AutoBalance_AllMapScript;
    new VAS_AutoBalance_WorldMapScript;
}
