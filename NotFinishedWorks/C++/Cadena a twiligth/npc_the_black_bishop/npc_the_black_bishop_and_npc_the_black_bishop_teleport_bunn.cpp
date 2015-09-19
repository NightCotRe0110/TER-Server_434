/*######
## npc_the_black_bishop
######*/

enum eSpells
{
	SPELL_MIND_BLAST = 13860,
	SPELL_PENITENCE = 54518,
	SPELL_DIAGONAL_SLIDE = 83991,
	SPELL_DIAGONAL_SLIDE_EFFECT = 83995,
	SPELL_POWER_SHIELSD = 11974,
	SPELL_INNER_FIRE = 48168,
	SPELL_ALTSHIELD = 84018
};

enum eEvents
{
	EVENT_MINDBLAST = 1,
	EVENT_PENITENCE = 2,
	EVENT_COMBAT = 3,
	EVENT_MOVE_DIAGONALLY = 4,
	EVENT_TELEPORTDELAY = 5
};

//Bunnys teleport GUIDs, read the description.
uint64 BunnyGUID[4] =
{
	4414239, //1	| 1            4 | This is the most important part of the script. You most
	4413278, //2    |			     | enter correctly  the bunnys GUIDs in orther to teleport
	4414237, //3    |       ▲▲		 | Bishop in the right sequence, that  other is shown on 
	4414238	 //4    | 2     IN     3 | the description. "In" means the room entrance. Enjoy
};

enum eMisc
{
	NPC_BLACK_BISHOP = 44816,
	NPC_BLACK_BISHOP_TELEPORT_BUNNY = 44957
};

class npc_the_black_bishop : public CreatureScript
{
public:
	npc_the_black_bishop() : CreatureScript("npc_the_black_bishop") { }

	struct npc_the_black_bishopAI : public ScriptedAI
	{
		npc_the_black_bishopAI(Creature* creature) : ScriptedAI(creature) {	}

		int b_position;

		uint32 m_uidiagonalslide_timer;
		uint32 m_uidcast_timer;
		
		Creature* tele_b;
		
		bool can_cast;
		bool bSay;
		bool bSay2;
		bool bSay3;
		bool bSay4;
		bool bSay5;
		
		void Reset()
		{
			events.Reset();
			me->SetReactState(REACT_AGGRESSIVE);

			b_position = 0;

			can_cast = false;
			bSay = false;
			bSay2 = false;
			bSay3 = false;
			bSay4 = false;
			bSay5 = false;
		}

		void EnterEvadeMode()
		{
			Unit* target = me->GetVictim();

			if (target && target->isAlive() && target->GetTypeId() == TYPEID_PLAYER)
				return;
			else
				ScriptedAI::EnterEvadeMode();
		}

		void EnterCombat(Unit* /*who*/)
		{
			events.ScheduleEvent(EVENT_MINDBLAST, 1000);
			me->MonsterSay("The game is afoot! But you are mere pawn, I am ...  THE BLACK BISHOP!", LANG_UNIVERSAL, 0);
			m_uidiagonalslide_timer = 1;
			m_uidcast_timer = 1;
		}

		int NextCorner(int b_position)
		{
			if (b_position == 1 || b_position == 2)
			{
				b_position += 2;
				return b_position;
			}
			else if (b_position == 3 || b_position == 4)
			{
				b_position -= 2;
				return b_position;
			}
			else
				return b_position = irand(1, 4);
		}
		
		//To find my bunnys :)
		Creature* FindCreatureNear(WorldObject* searchObject, uint32 guid) const
		{
			Creature* creature = NULL;
			CellCoord p(Trinity::ComputeCellCoord(searchObject->GetPositionX(), searchObject->GetPositionY()));
			Cell cell(p);

			Trinity::CreatureWithDbGUIDCheck target_check(searchObject, guid);
			Trinity::CreatureSearcher<Trinity::CreatureWithDbGUIDCheck> checker(searchObject, creature, target_check);

			TypeContainerVisitor<Trinity::CreatureSearcher <Trinity::CreatureWithDbGUIDCheck>, GridTypeMapContainer > unit_checker(checker);
			cell.Visit(p, unit_checker, *searchObject->GetMap(), *searchObject, searchObject->GetGridActivationRange());

			return creature;
		}

		void UpdateAI(const uint32 diff)
		{

			if (!UpdateVictim())
				return;

			events.Update(diff);

			if (me->HasUnitState(UNIT_STATE_CASTING))
				return;
			
			if (me->HealthAbovePct(61))
			{
				if (m_uidcast_timer <= diff)
				{
					events.ScheduleEvent(EVENT_COMBAT, 25);
					m_uidcast_timer = 2000;
				}
				else
				{
					m_uidcast_timer -= diff;
				}
			}

			if (me->HealthBelowPct(60) && me->HealthAbovePct(20))
			{
				if (!bSay)
				{
					bSay = true;
					me->MonsterSay("The bishop moves diagonally!", LANG_UNIVERSAL, 0);
				}

				me->StopMoving();
				
				if (m_uidiagonalslide_timer <= diff)
				{
					events.ScheduleEvent(EVENT_MOVE_DIAGONALLY, 1000);
					m_uidiagonalslide_timer = 3000;
				}
				else
				{
					m_uidiagonalslide_timer -= diff;
				}

				if (can_cast == true)
				{
					can_cast = false;
					events.ScheduleEvent(EVENT_COMBAT, 25);
				}

				if (me->HealthBelowPct(50))
				{
					if (!bSay2)
					{
						bSay2 = true;
						DoCast(me, SPELL_POWER_SHIELSD);
						me->MonsterSay("Bishop threatens pawn...", LANG_UNIVERSAL, 0);
					}
				}

				if (me->HealthBelowPct(25))
				{
					if (!bSay3)
					{
						bSay3 = true;
						DoCast(me, SPELL_POWER_SHIELSD);
						me->MonsterSay("Check!", LANG_UNIVERSAL, 0);
					}
				}
			}

			if (me->HealthBelowPct(20))
			{
				if (m_uidcast_timer <= diff)
				{
					events.ScheduleEvent(EVENT_COMBAT, 25);
					m_uidcast_timer = 2000;
				}
				else
				{
					m_uidcast_timer -= diff;
				}

				if (!bSay4)
				{
					bSay4 = true;
					me->MonsterSay("Bishop threatens pawn...", LANG_UNIVERSAL, 0);
				}

				if (me->HealthBelowPct(10))
				{
					if (!bSay5)
					{
						bSay5 = true;
						me->MonsterSay("The games isn't over yet...", LANG_UNIVERSAL, 0);
					}
				}
			}

			if (uint32 eventId = events.ExecuteEvent())
			{
				Unit* target = me->GetVictim();
				switch (eventId)
				{
					case EVENT_MINDBLAST:
						DoCast(SPELL_MIND_BLAST);
						break;
					case EVENT_PENITENCE:
						me->CastSpell(target, SPELL_PENITENCE, true);
						break;
					case EVENT_COMBAT:
					{
						int rand = irand(1, 2);
						
						switch (rand)
						{
							case 1:
								events.ScheduleEvent(EVENT_MINDBLAST, 300);
								break;
							case 2:
								events.ScheduleEvent(EVENT_PENITENCE, 300);
								break;
						}
					} break;
					case EVENT_MOVE_DIAGONALLY:
					{
						tele_b = me->FindNearestCreature(NPC_BLACK_BISHOP_TELEPORT_BUNNY, 4.0f, true);
						if (!tele_b)
						{
							b_position = irand(1, 4);
						}
						else
						{
							b_position = NextCorner(b_position);
						}
						tele_b = FindCreatureNear(me, BunnyGUID[b_position - 1]);
						me->CastSpell(tele_b, SPELL_DIAGONAL_SLIDE, true);
						events.ScheduleEvent(EVENT_TELEPORTDELAY, 250);
					} break;
					case EVENT_TELEPORTDELAY:
						me->NearTeleportTo(tele_b->GetPositionX(), tele_b->GetPositionY(), tele_b->GetPositionZ() - 1.5f, tele_b->GetOrientation());
						break;
				}
			}
			DoMeleeAttackIfReady();
		}

		void JustDied(Unit* killer/*killer*/) 
		{
			me->MonsterSay("Pawn ... takes ... bishop ... ", LANG_UNIVERSAL, 0);
		}

	private:
		EventMap events;
	};

	CreatureAI* GetAI(Creature* creature) const
	{
		return new npc_the_black_bishopAI(creature);
	}
};

/*######
## npc_the_black_bishop_teleport_bunny
######*/

class npc_the_black_bishop_teleport_bunny : public CreatureScript
{
public:

	npc_the_black_bishop_teleport_bunny()
		: CreatureScript("npc_the_black_bishop_teleport_bunny")
	{
	}

	struct npc_the_black_bishop_teleport_bunnyAI : public ScriptedAI
	{

		npc_the_black_bishop_teleport_bunnyAI(Creature* creature) : ScriptedAI(creature) {}

		void SpellHit(Unit* caster, const SpellInfo* spell)
		{
			if (spell->Id == SPELL_DIAGONAL_SLIDE)
			{
				Creature *bishop = me->FindNearestCreature(NPC_BLACK_BISHOP, 50.0f, true);
				me->CastSpell(bishop, SPELL_DIAGONAL_SLIDE_EFFECT, true);
				bishop->RemoveUnitMovementFlag(MOVEMENTFLAG_FALLING);
				CAST_AI(npc_the_black_bishop::npc_the_black_bishopAI, bishop->AI())->can_cast = true;
			}
		}
	};

	CreatureAI* GetAI(Creature* creature) const
	{
		return new npc_the_black_bishop_teleport_bunnyAI(creature);
	}

};