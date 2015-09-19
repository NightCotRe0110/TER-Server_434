
/*######
## npc_anduin_wrynn_throne
######*/

enum Spells
{
	SPELL_SUMMON_ANDUIN_THRONE_ROOM = 82823
};

enum ePrince
{
	ANDUIN_WRYNN_THRONE = 44293, //NPC ID
	//Prince Mounts
	ARMORED_SNOWY_GRYPHON = 27913,
	SWIFT_WHITE_STEED = 14338,
	//Quests
	MY_SON_THE_PRINCE = 26960,
	RALLYING_THE_FLEET = 26975
};

#define GOSSIP_ITEM		"Come whit me, your highness"
#define GOSSIP_ITEM_2	"Greetings Young Prince, Your Father Has Instructed me to make Your Aqueintance"

class npc_anduin_wrynn_throne : public CreatureScript
{
public:

	npc_anduin_wrynn_throne()
		: CreatureScript("npc_anduin_wrynn_throne")
	{
	}

	struct npc_anduin_wrynn_throneAI : public ScriptedAI
	{

		npc_anduin_wrynn_throneAI(Creature* creature) : ScriptedAI(creature) {}

		Player* player;

		void Reset()
		{
		}

		void UpdateAI(const uint32 uiDiff)
		{
		}
	};

	CreatureAI* GetAI(Creature* creature) const
	{
		return new npc_anduin_wrynn_throneAI(creature);
	}

	bool OnGossipHello(Player* player, Creature* creature)
	{
		if (creature->IsQuestGiver())
			player->PrepareQuestMenu(creature->GetGUID());

		if (player->GetQuestStatus(RALLYING_THE_FLEET) == QUEST_STATUS_INCOMPLETE)
			player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_ITEM, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

		if (player->GetQuestStatus(MY_SON_THE_PRINCE) == QUEST_STATUS_INCOMPLETE)
			player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_ITEM_2, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);

		player->SEND_GOSSIP_MENU(907, creature->GetGUID());
		return true;
	}

	bool OnGossipSelect(Player* player, Creature* creature, uint32 /*sender*/, uint32 action)
	{
		player->PlayerTalkClass->ClearMenus();
		switch (action)
		{
		case GOSSIP_ACTION_INFO_DEF + 1:
			Creature *summon;
			player->CLOSE_GOSSIP_MENU();
			//creature->AI()->Talk(SAY_RANDOM);
			creature->CastSpell(creature, SPELL_SUMMON_ANDUIN_THRONE_ROOM, true);
			summon = creature->FindNearestCreature(ANDUIN_WRYNN_THRONE, 1.0f, true);
			summon->GetMotionMaster()->MoveFollow(player, 0.0f, 0.0f);
			summon->SetOwnerGUID(player->GetGUID());
			creature->DespawnOrUnsummon(0);
			break;
		case GOSSIP_ACTION_INFO_DEF + 2:
			player->CLOSE_GOSSIP_MENU();
			//player->TalkedToCreature(creature->GetEntry(), creature->GetGUID()); Use this
			player->KilledMonsterCredit(44692);
			break;
		}
		return true;
	}
};

/*######
## npc_anduin_wrynn_summon
######*/

Position const points[] =
{
	{ -8049.27f, 957.033f, 79.4188f, 0.226921f },
	{ -8048.63f, 966.344f, 79.9703f, 0.226921f },
	{ -8048.63f, 966.344f, 79.9703f, 4.77595f }
};

class npc_anduin_wrynn_summon : public CreatureScript
{
public:

	npc_anduin_wrynn_summon()
		: CreatureScript("npc_anduin_wrynn_summon")
	{
	}

	struct npc_anduin_wrynn_summonAI : public ScriptedAI
	{

		npc_anduin_wrynn_summonAI(Creature* creature) : ScriptedAI(creature) {}

		Player* player;

		uint64 checkTimer;
		uint64 eventTimer;
		uint32 area;
		uint8 Phase;

		bool follow;
		bool stage;
		bool say;

		void Reset()
		{
			checkTimer = 0;
			eventTimer = 0;

			area = 0;
			Phase = 0;

			follow = true;
			stage = false;
			say = true;
		}

		void UpdateAI(const uint32 uiDiff)
		{
			if (me->HasUnitState(UNIT_STATE_CASTING))
				return;

			if (checkTimer <= uiDiff)
			{
				area = me->GetAreaId();
				checkTimer = 2500;
			}
			else
			{
				checkTimer -= uiDiff;
			}

			if (area == 5398)
			{
				if (me->FindNearestGameObject(205164, 12.0f))
				{
					stage = true;
				}

				//Star Stage 1
				if (stage)
				{
					if (eventTimer < uiDiff)
					{
						switch (Phase)
						{
						case 0:
							follow = false;
							me->GetMotionMaster()->Clear(true);
							me->SetWalk(true);
							Phase++;
							break;
						case 1:
							if (me->GetPositionX() != points[0].GetPositionX() && me->GetPositionY() != points[0].GetPositionY())
							{
								me->GetMotionMaster()->MovePoint(0, points[0]);
								eventTimer = 2000;
							}
							else
							{
								me->NearTeleportTo(points[0]); //I use teleport because some reason the NPC don't goes to the correct orientation.
								eventTimer = 2000;
								Phase++;
							}
							break;
						case 2:
							if (say)
							{
								say = false;
								me->MonsterSay("What IS this place? Ugh, and that smell...", LANG_UNIVERSAL, 0);
							}

							if (me->GetPositionX() != points[1].GetPositionX() && me->GetPositionY() != points[1].GetPositionY())
							{
								me->GetMotionMaster()->MovePoint(0, points[1]);
								eventTimer = 2000;
							}
							else
							{
								eventTimer = 300;
								Phase++;
							}
							break;
						case 3:
							me->HandleEmoteCommand(EMOTE_ONESHOT_KNEEL);
							eventTimer = 1500;
							Phase++;
							break;
						case 4:
							me->MonsterSay("Some sort of rituals were performed at this altar. It looks like a kind of pagan initiation ritual that Valen once tolme about. Bloody. Disgusting.", LANG_UNIVERSAL, 0);
							eventTimer = 3300;
							Phase++;
							break;
						case 5:
							me->NearTeleportTo(points[2]);
							eventTimer = 2300;
							Phase++;
							break;
						case 6:
						{
							std::string sText = ("Who do you think - wait - " + std::string(me->GetOwner()->GetName()) + ", Look out behind you!");
							me->MonsterSay(sText.c_str(), LANG_UNIVERSAL, 0);
							eventTimer = 1;
							Phase++;
							break;
						}
						case 7:
							float x, y, z;
							me->GetPosition(x, y, z);
							me->GetMotionMaster()->MovePoint(0, points[1].GetPositionX(), points[1].GetPositionY(), points[1].GetPositionZ() + 8.0f, false);
							me->UpdateGroundPositionZ(x, y, z);
							eventTimer = 3000;
							Phase++;
							break;
						case 8:
							eventTimer = 3000;
							Phase++;
							break;
						case 9:
							break;
						}
					}
					else
					{
						eventTimer -= uiDiff;
					}
				}
			}

			//Prince Following behavior Part
			if (follow)
			{
				Unit* player = me->GetOwner();
				if (player->IsFlying())
				{
					me->Mount(ARMORED_SNOWY_GRYPHON);
					me->SetByteFlag(UNIT_FIELD_BYTES_1, 3, 0x02);
					me->AddUnitMovementFlag(MOVEMENTFLAG_FLYING);
					float flyspeed = player->GetSpeedRate(MOVE_FLIGHT);
					me->SetSpeed(MOVE_FLIGHT, flyspeed, true);
				}

				if (!player->IsFlying())
				{
					me->RemoveUnitMovementFlag(MOVEMENTFLAG_FLYING);
					float speed = player->GetSpeedRate(MOVE_RUN);
					me->SetSpeed(MOVE_RUN, speed);
					if (player->IsMounted() || player->IsInFlyForm())
						me->Mount(SWIFT_WHITE_STEED);

					if (!player->IsMounted() && !player->IsInFlyForm())
						me->Dismount();
				}
			}
		}
	};

	CreatureAI* GetAI(Creature* creature) const
	{
		return new npc_anduin_wrynn_summonAI(creature);
	}

	bool OnGossipHello(Player* player, Creature* creature)
	{
		if (creature->IsQuestGiver())
			player->PrepareQuestMenu(creature->GetGUID());
		player->SEND_GOSSIP_MENU(player->GetGossipTextId(creature), creature->GetGUID());
		return true;
	}
};
