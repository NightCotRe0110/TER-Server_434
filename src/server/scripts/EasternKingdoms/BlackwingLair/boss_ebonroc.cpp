/*
 *TER-Server
 */

#include "ScriptMgr.h"
#include "ScriptedCreature.h"

#define SPELL_SHADOWFLAME           22539
#define SPELL_WINGBUFFET            23339
#define SPELL_SHADOWOFEBONROC       23340
#define SPELL_HEAL                  41386                   //The Heal spell of his Shadow
#define SPELL_THRASH                3391

class boss_ebonroc : public CreatureScript
{
public:
    boss_ebonroc() : CreatureScript("boss_ebonroc") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_ebonrocAI (creature);
    }

    struct boss_ebonrocAI : public ScriptedAI
    {
        boss_ebonrocAI(Creature* creature) : ScriptedAI(creature) {}

        uint32 ShadowFlame_Timer;
        uint32 WingBuffet_Timer;
        uint32 ShadowOfEbonroc_Timer;
        uint32 Heal_Timer;
		uint32 Thrash_Timer;

        void Reset()
        {
            ShadowFlame_Timer = 15000;                          //These times are probably wrong
            WingBuffet_Timer = 30000;
            ShadowOfEbonroc_Timer = 45000;
            Heal_Timer = 1000;
			Thrash_Timer = 10000;
        }

        void EnterCombat(Unit* /*who*/)
        {
            DoZoneInCombat();
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            //Shadowflame Timer
            if (ShadowFlame_Timer <= diff)
            {
                DoCastVictim(SPELL_SHADOWFLAME);
                ShadowFlame_Timer = urand(12000, 15000);
            } else ShadowFlame_Timer -= diff;

			//Thrash Timer
			if (Thrash_Timer <= diff)
				 {
				DoCast(me->GetVictim(), SPELL_THRASH);
				Thrash_Timer = urand(10000, 15000);
				}
			else Thrash_Timer -= diff;

            //Wing Buffet Timer
            if (WingBuffet_Timer <= diff)
            {
                DoCastVictim(SPELL_WINGBUFFET);
                WingBuffet_Timer = 25000;
            } else WingBuffet_Timer -= diff;

            //Shadow of Ebonroc Timer
            if (ShadowOfEbonroc_Timer <= diff)
            {
                DoCastVictim(SPELL_SHADOWOFEBONROC);
                ShadowOfEbonroc_Timer = urand(25000, 350000);
            } else ShadowOfEbonroc_Timer -= diff;

            if (me->GetVictim()->HasAura(SPELL_SHADOWOFEBONROC))
            {
                if (Heal_Timer <= diff)
                {
                    DoCast(me, SPELL_HEAL);
                    Heal_Timer = urand(1000, 3000);
                } else Heal_Timer -= diff;
            }

            DoMeleeAttackIfReady();
        }
    };
};

void AddSC_boss_ebonroc()
{
    new boss_ebonroc();
}
