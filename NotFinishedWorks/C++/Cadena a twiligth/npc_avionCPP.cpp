
enum avion
{
	NPC_AVION = 50266,
	NPC_AVION_FIJO = 50262
};


class npc_avion : public CreatureScript
{
public:
	npc_avion() : CreatureScript("npc_avion") { }



	CreatureAI* GetAI(Creature* creature) const override
	{
		return new npc_avionAI(creature);
	}


	struct npc_avionAI : public npc_escortAI
	{
		uint64 PlayerGUID;
		

		npc_avionAI(Creature* creature) : npc_escortAI(creature) { }

		bool isBoarded;
		Player* taxi;

		void Reset() override
		{
			PlayerGUID = 0;
			isBoarded = false;

		}

		void PassengerBoarded(Unit* who, int8 /*seatId*/, bool apply)
		{
						
			 if (apply && who->GetTypeId() == TYPEID_PLAYER)
				
				{										
					me->SetCanFly(true);
					me->AddUnitMovementFlag(MOVEMENTFLAG_DISABLE_GRAVITY);
					isBoarded = true;
					Start(false, true, who->GetGUID(), NULL, false, true);
				}
		}

		void WaypointReached(uint32 waypointId) override
		{
			switch (waypointId)
			{
			case 0:
				me->MonsterSay("estoy en el 0", 0, 0);
				me->CastSpell(me, 68499, true); //OOX Lift Off
				me->SetSpeed(MOVE_FLIGHT, 9.0f, true);
				
			case 1:
				me->MonsterSay("estoy en el 1", 0, 0);
				break;

			case 2:
				me->MonsterSay("estoy en el 2", 0, 0);
				break;

			
			}
		}


		void UpdateAI(const uint32 diff)
		{
			npc_escortAI::UpdateAI(diff);
		}
		void UpdateEscortAI(const uint32 diff)
		{


		}



	};

};

