
enum Misc
{
	SAY_UNMASKET = 0,
	SAY_VARIANATTAC = 1,
	SAY_TRANSFORM = 2,
	SAYON_DEAD = 3

};

enum Events
{
	EVENT_SHADOW_CRASH = 1,
	EVENT_SHAOS_SLAM,
	EVENT_COMBAT,
	EVENT_SPIT,
	EVENT_SAMUELSON_UNMASKET
};

enum eEnd
{

	SPELL_SAMUELSON_UNMASKET = 84033,// SAmuleson
	SPELL_SPIT = 75903,// SAmuleson
	SPELL_SHADOW_CRASH = 75903,// SAmuleson
	SPELL_SHAOS_SLAM = 84108,// SAmuleson
	SPELL_SHIELD_PRINCE = 20706,// PRINCIPE
	SPELL_BLESSING_OF_KINGS = 56525,// PRINCIPE
	SPELL_TRANSITUS_SHIELD_BEAM = 48310, // SPELL BARRERA
	SPELL_IMPUNITY = 82548,
	SPELL_FREEZ = 52656,

	NPC_BUNNY1 = 144951,
	NPC_BUNNY2 = 42750,
	NPC_BUNNY3 = 42635,
	NPC_BUNNY4 = 42745,
	NPC_QUEST_BUNNY = 44979,
	NPC_PRINCIPE = 1747,
	NPC_VARIAN = 29611,
	NPC_SAMULSON_UNMASKED = 45014,
	NPC_SAMUELSON_NORMAL = 2439,
	NPC_GENN = 45253,
	EQUIP_ID_AXE = 33542,

	QUEST_SAMUELSON_UNMASK = 27106
};
//89299	Twilight Spit
//96126 Samuelson Killed

class npc_bunny_samuelson : public CreatureScript
{
public:
	npc_bunny_samuelson() : CreatureScript("npc_bunny_samuelson") { }

	struct npc_bunny_samuelsonAI : public Scripted_NoMovementAI
	{
		npc_bunny_samuelsonAI(Creature* creature) : Scripted_NoMovementAI(creature){}
		Player* player;
		bool can_cast;
		uint32 Can_cast;



		void Reset()
		{
			can_cast = false;
			Can_cast = 15000;
		}

		void UpdateAI(const uint32 uiDiff)
		{

			if (can_cast == true)
			{
				if (Creature* samuelson = me->FindNearestCreature(NPC_SAMUELSON_NORMAL, 90.0f, true))

				{
					me->CastSpell(samuelson, SPELL_TRANSITUS_SHIELD_BEAM, true);
				}
			}
		}
	};

	CreatureAI* GetAI(Creature* creature) const
	{
		return new npc_bunny_samuelsonAI(creature);
	}
};

#define GOSSIP_ITEM_SAMUELSON "It's over.Samuelson we know who you are, and I put a stop to your little cathedral scheme. "

class npc_major_samuelson : public CreatureScript
{
public:
	npc_major_samuelson() : CreatureScript("npc_major_samuelson") {}

	CreatureAI* GetAI(Creature* Creature) const
	{
		return new npc_major_samuelsonAI(Creature);
	}

	bool OnGossipHello(Player* player, Creature* creature)
	{
		if (creature->IsQuestGiver())
			player->PrepareQuestMenu(creature->GetGUID());

		if (player->GetQuestStatus(QUEST_SAMUELSON_UNMASK) == QUEST_STATUS_INCOMPLETE)
			player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_ITEM_SAMUELSON, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

		player->SEND_GOSSIP_MENU(907, creature->GetGUID());
		return true;

	}
	bool OnGossipSelect(Player* player, Creature* creature, uint32 /*sender*/, uint32 action)
	{
		player->PlayerTalkClass->ClearMenus();
		if (action == GOSSIP_ACTION_INFO_DEF + 1)
		{
			player->CLOSE_GOSSIP_MENU();
			creature->CastSpell(creature, 96126, true);


			CAST_AI(npc_major_samuelson::npc_major_samuelsonAI, creature->AI())->PlayerGUID = player->GetGUID();

			if (!(CAST_AI(npc_major_samuelson::npc_major_samuelsonAI, creature->AI())->EventStarted))
			{
				CAST_AI(npc_major_samuelson::npc_major_samuelsonAI, creature->AI())->EventStarted = true;
			}
		}
		return true;
	}

	struct npc_major_samuelsonAI : public ScriptedAI
	{
		npc_major_samuelsonAI(Creature* creature) : ScriptedAI(creature)
		{
			me->ApplySpellImmune(0, IMMUNITY_ID, SPELL_SHAOS_SLAM, true);
		}

		uint64 PlayerGUID;
		uint32 EventTimer;
		uint8 Phase;
		bool EventStarted;
		bool Move;
		bool EventInProgress;
		uint64 SamuelsonGUID;
		EventMap events;


		void Reset()
		{
			EventInProgress = false;
			events.Reset();
			Phase = 0;
			SamuelsonGUID = 0;
			PlayerGUID = 0;
			EventTimer = 1000;
			EventStarted = false;
			bool Move = false;
			me->RemoveAllAuras();
			me->SetReactState(REACT_PASSIVE);
			me->GetOriginalEquipmentId();
			if (me->GetEntry() == NPC_SAMULSON_UNMASKED)
				me->UpdateEntry(NPC_SAMUELSON_NORMAL);

		}


		void EnterEvadeMode()
		{
			Unit* target = me->GetVictim();

			if (target && target->isAlive() && target->GetTypeId() == TYPEID_PLAYER)
				return;

			ScriptedAI::EnterEvadeMode();
		}


		void JustDied(Unit* killer/*killer*/)
		{

			me->MonsterSay("Al'golath mal shal'nel...Darkness consumes...", LANG_UNIVERSAL, 0);
			if (Player* target = me->FindNearestPlayer(25.0f))
				if (Creature* varian = me->FindNearestCreature(NPC_VARIAN, 50.0f, true))
					if (Creature* Genn = me->FindNearestCreature(NPC_GENN, 50.0f, true))
						if (Creature* principe = me->FindNearestCreature(NPC_PRINCIPE, 50.0f, true))
						{
							target->ToPlayer()->KilledMonsterCredit(NPC_SAMUELSON_NORMAL);
							varian->RemoveAurasDueToSpell(SPELL_FREEZ);
							Genn->RemoveAurasDueToSpell(SPELL_FREEZ);
							principe->RemoveAurasDueToSpell(SPELL_FREEZ);
						}


		}

		void EnterCombat(Unit* Target)
		{
			events.ScheduleEvent(EVENT_SHADOW_CRASH, 10000);
			events.ScheduleEvent(EVENT_SHAOS_SLAM, 15000);
			events.ScheduleEvent(EVENT_SPIT, 5000);

			if (Creature *Samuelson = Unit::GetCreature(*me, SamuelsonGUID))
			{
				if (Samuelson->isAlive() && !Samuelson->isInCombat())
					Samuelson->AI()->AttackStart(Target);

			}

		}

		void DamageTaken(Unit* attacker, uint32 &/*damage*/)
		{
			if (attacker->GetTypeId() != TYPEID_PLAYER)
				return;

			Unit* victim = NULL;

			if (Unit* victim = me->GetVictim())
				if (victim->GetTypeId() == TYPEID_PLAYER)
					return;

			if (victim)
				me->getThreatManager().modifyThreatPercent(victim, -100);

			AttackStart(attacker);
			me->AddThreat(attacker, 10005000);
		}

		void DoFreez()
		{
			if (Creature* varian = me->FindNearestCreature(NPC_VARIAN, 50.0f, true))
				if (Creature* Genn = me->FindNearestCreature(NPC_GENN, 50.0f, true))
					if (Creature* principe = me->FindNearestCreature(NPC_PRINCIPE, 50.0f, true))
					{
						varian->CastSpell(varian, SPELL_FREEZ, true); //FREEZ
						Genn->CastSpell(Genn, SPELL_FREEZ, true); //FREEZ
						principe->CastSpell(principe, SPELL_FREEZ, true); //FREEZ
					}
		}

		void RemoveFreez()
		{
			if (Creature* varian = me->FindNearestCreature(NPC_VARIAN, 50.0f, true))
				if (Creature* Genn = me->FindNearestCreature(NPC_GENN, 50.0f, true))
					if (Creature* principe = me->FindNearestCreature(NPC_PRINCIPE, 50.0f, true))
					{
						varian->RemoveAurasDueToSpell(SPELL_FREEZ);
						Genn->RemoveAurasDueToSpell(SPELL_FREEZ);
						principe->RemoveAurasDueToSpell(SPELL_FREEZ);

					}
		}

		void EnterAir() // EN DESARROLLO, SIGUE NADANDO HACIA ARRIBA
		{
			me->HandleEmoteCommand(EMOTE_ONESHOT_LIFTOFF); // nuevo
			me->AddUnitMovementFlag(MOVEMENTFLAG_CAN_FLY | MOVEMENTFLAG_FLYING);
			me->SetDisableGravity(true);
			me->SetByteFlag(UNIT_FIELD_BYTES_1, 3, UNIT_BYTE1_FLAG_ALWAYS_STAND | UNIT_BYTE1_FLAG_HOVER);
			me->SetHover(true);
			me->DisableMovementFlagUpdate(true);
		}

		void UpdateAI(const uint32 diff)
		{
			if (EventStarted)
			{
				if (EventTimer < diff)
				{
					if (Player* player = me->GetPlayer(*me, PlayerGUID))
						if (Creature* principe = me->FindNearestCreature(NPC_PRINCIPE, 50.0f, true))
							if (Creature* varian = me->FindNearestCreature(NPC_VARIAN, 50.0f, true))
								if (Creature* Genn = me->FindNearestCreature(NPC_GENN, 90.0f, true))


								{
									switch (Phase)
									{
									case 0:
									{

										me->MonsterSay("Yes... yes It's all true. I am not ashamed. The power I submit to make mortal Kings to look like insects.!", 0, 0);
										player->KilledMonsterCredit(NPC_QUEST_BUNNY);
										me->SetStandState(UNIT_STAND_STATE_KNEEL);
										EventTimer = 8000;
										Phase++;
										break;
									}
									case 1:
									{
										SetEquipmentSlots(false, EQUIP_ID_AXE, EQUIP_NO_CHANGE, EQUIP_NO_CHANGE);
										me->HandleEmoteCommand(EMOTE_STATE_READY1H);
										EventTimer = 400;
										Phase++;
										break;
									}
									case 2:
									{
										me->MonsterSay("But I am not yet finished. Death to the king.", 0, 0);
										EventTimer = 4000;
										Phase++;
										break;
									}
									case 3:// Salto para Varian
									{
										me->GetMotionMaster()->MoveJump(-8364.65f, 234.359f, 156.991f, 15.0f, 13.0f);
										principe->MonsterSay("Father, watch out,", 0, 0);
										EventTimer = 1000;
										Phase++;
										break;
									}
									case 4:
									{
										me->SetFacingToObject(varian);
										EventTimer = 300;//
										Phase++;
										break;
									}
									case 5:
									{
										varian->HandleEmoteCommand(EMOTE_STATE_READY2HL);
										principe->CastSpell(varian, SPELL_SHIELD_PRINCE, true);
										varian->CastSpell(varian, SPELL_BLESSING_OF_KINGS, true);
										EventTimer = 700;
										Phase++;
										break;
									}
									case 6:
									{
										me->AddAura(SPELL_IMPUNITY, me);
										me->SetStandState(UNIT_STAND_STATE_STAND);
										me->HandleEmoteCommand(EMOTE_ONESHOT_ATTACK2HTIGHT);
										EventTimer = 500;
										Phase++;
										break;
									}
									case 7:
									{
										me->SetStandState(UNIT_STAND_STATE_STAND);
										varian->HandleEmoteCommand(EMOTE_ONESHOT_ATTACK2HTIGHT);
										EventTimer = 300;
										Phase++;
										break;
									}
									case 8:// Salto hacia atras
									{
										uint64 SamuelsonGUID = me->GetGUID();
										varian->RemoveAura(SPELL_SHIELD_PRINCE);
										me->GetMotionMaster()->MoveKnockTo(-8371.04f, 242.061f, 155.348f, 15.0f, 13.0f, SamuelsonGUID);
										EventTimer = 2000;
										Phase++;
										break;
									}
									case 9:
									{
										Position const MovePosition = { -8375.73f, 248.51f, 155.346f, 5.37001f };
										me->GetMotionMaster()->MovePoint(0, MovePosition);
										EventTimer = 1500;
										Phase++;
										break;
									}
									case 10:
									{
										me->SetFacingToObject(varian);
										if (Creature* bunny1 = me->FindNearestCreature(NPC_BUNNY1, 90.0f, true))
											CAST_AI(npc_bunny_samuelson::npc_bunny_samuelsonAI, bunny1->AI())->can_cast = true;
										EventTimer = 1000;
										Phase++;
										break;
									}
									case 11:
									{
										// VARIANTE # 1 

										/*Position const fly = {-8375.73f, 248.51f, 155.346f, 5.37001f};
										me->AddAura(16245, me);
										me->HandleEmoteCommand(EMOTE_ONESHOT_LIFTOFF);
										me->AddUnitMovementFlag(MOVEMENTFLAG_DISABLE_GRAVITY | MOVEMENTFLAG_CAN_FLY | MOVEMENTFLAG_FLYING);
										me->SetSpeed(MOVE_FLIGHT, 0.5f, true);
										me->SetSpeed(MOVE_RUN, 0.5f, true);
										me->SetSpeed(MOVE_WALK, 0.5f, true);
										me->SetSpeed(MOVE_SWIM, 0.5f, true);
										EnterAir();
										Position pos;
										me->GetPosition(&pos);
										pos.m_positionZ += 10.f;
										me->GetMotionMaster()->MovePoint(1, pos.GetPositionX(),pos.GetPositionY(),pos.GetPositionZ(), false);
										*/
										// Variante 2
										me->MonsterYell("Gods of the Shadow, lords of the twilight... give me strength!", 0, 0);
										me->HandleEmoteCommand(ANIM_FLY);
										me->AddUnitMovementFlag(MOVEMENTFLAG_FLYING);
										me->SetByteFlag(UNIT_FIELD_BYTES_1, 3, 0x02);
										Position pos;
										me->GetPosition(&pos);
										pos.m_positionZ += 8.f;
										me->GetMotionMaster()->MoveJump(pos.GetPositionX(), pos.GetPositionY(), pos.GetPositionZ(), 1, 1);
										EventTimer = 10000;
										Phase++;
										break;
									}
									case 12:
									{
										DoFreez();
										me->RemoveAurasDueToSpell(SPELL_IMPUNITY);
										me->GetOriginalEquipmentId();
										me->UpdateEntry(NPC_SAMULSON_UNMASKED);
										me->SetReactState(REACT_AGGRESSIVE);
										EventTimer = 500;
										Phase++;
										break;
									}
									case 13:
									{
										me->setFaction(125);
										me->SetStandState(UNIT_STAND_STATE_STAND);// nuevo
										me->RemoveUnitMovementFlag(MOVEMENTFLAG_FLYING);
										me->RemoveByteFlag(UNIT_FIELD_BYTES_1, 3, 0x02);
										Position pos;
										me->GetPosition(&pos);
										pos.m_positionZ -= 8.f;
										me->GetMotionMaster()->MoveJump(pos.GetPositionX(), pos.GetPositionY(), pos.GetPositionZ(), 8, 8);
										EventTimer = 500;
										Phase++;
										break;
									}

									break;
									default:
										break;
									}
								}
				}
				else EventTimer -= diff;
				DoMeleeAttackIfReady();
			}


			if (!UpdateVictim())
				return;
			events.Update(diff);

			if (me->HasUnitState(UNIT_STATE_CASTING))
				return;
			if (uint32 eventId = events.ExecuteEvent())
			{
				switch (eventId)
				{
				case EVENT_SHAOS_SLAM:

					DoCast(SPELL_SHAOS_SLAM);
					events.ScheduleEvent(EVENT_SHAOS_SLAM, 15000);
					break;
				case EVENT_SHADOW_CRASH:

					DoCast(SPELL_SHADOW_CRASH);
					events.ScheduleEvent(EVENT_SHADOW_CRASH, 12000);
					break;
				case EVENT_SPIT:

					DoCastRandom(SPELL_SPIT, 50);
					events.RescheduleEvent(EVENT_SPIT, 3000);
					break;
				default:
					break;
				}

			}

		}

	};
};

