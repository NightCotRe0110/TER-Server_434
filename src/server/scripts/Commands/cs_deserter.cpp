/*
 *TER-Server
 */

#include "Chat.h"
#include "Player.h"
#include "Language.h"
#include "ScriptMgr.h"
#include "SpellAuras.h"

enum Spells
{
    LFG_SPELL_DUNGEON_DESERTER = 71041,
    BG_SPELL_DESERTER = 26013
};

class deserter_commandscript : public CommandScript
{
public:
    deserter_commandscript() : CommandScript("deserter_commandscript") { }

    ChatCommand* GetCommands() const
    {
        static ChatCommand deserterInstanceCommandTable[] = 
        {
            { "add",            SEC_ADMINISTRATOR, false, &HandleDeserterInstanceAdd,          "", NULL },
            { "remove",         SEC_ADMINISTRATOR, false, &HandleDeserterInstanceRemove,       "", NULL },
            { NULL,             SEC_PLAYER,        false, NULL,                                "", NULL }
        };
        static ChatCommand deserterBGCommandTable[] = 
        {
            { "add",            SEC_ADMINISTRATOR, false, &HandleDeserterBGAdd,                "", NULL },
            { "remove",         SEC_ADMINISTRATOR, false, &HandleDeserterBGRemove,             "", NULL },
            { NULL,             SEC_PLAYER,        false, NULL,                                "", NULL }
        };

        static ChatCommand deserterCommandTable[] = 
        {
            { "instance",       SEC_ADMINISTRATOR, false, NULL,        "", deserterInstanceCommandTable },
            { "bg",             SEC_ADMINISTRATOR, false, NULL,              "", deserterBGCommandTable },
            { NULL,             SEC_PLAYER,        false, NULL,                                "", NULL }
        };
        static ChatCommand commandTable[] =
        {
            { "deserter",       SEC_ADMINISTRATOR,  false, NULL,               "", deserterCommandTable },
            { NULL,             SEC_PLAYER,         false, NULL,                               "", NULL }
        };
        return commandTable;
    }

    static bool HandleDeserterAdd(ChatHandler* handler, char const* args, bool isInstance)
    {
        if (!*args)
            return false;

        Player* player = handler->getSelectedPlayer();
        if (!player)
        {
            handler->SendSysMessage(LANG_NO_CHAR_SELECTED);
            handler->SetSentErrorMessage(true);
            return false;
        }
        char* timeStr = strtok((char*)args, " ");
        if (!timeStr)
        {
            handler->SendSysMessage(LANG_BAD_VALUE);
            handler->SetSentErrorMessage(true);
            return false;
        }
        uint32 time = atoi(timeStr);

        if (!time)
        {
            handler->SendSysMessage(LANG_BAD_VALUE);
            handler->SetSentErrorMessage(true);
            return false;
        }

        Aura* aura = player->AddAura(isInstance ? LFG_SPELL_DUNGEON_DESERTER : BG_SPELL_DESERTER, player);

        if (!aura)
        {
            handler->SendSysMessage(LANG_BAD_VALUE);
            handler->SetSentErrorMessage(true);
            return false;
        }
        aura->SetDuration(time * IN_MILLISECONDS);

        return true;
    }

	static bool HandleDeserterRemove(ChatHandler* handler, char const* /*args*/, bool isInstance)
    {
        Player* player = handler->getSelectedPlayer();
        if (!player)
        {
            handler->SendSysMessage(LANG_NO_CHAR_SELECTED);
            handler->SetSentErrorMessage(true);
            return false;
        }

        player->RemoveAura(isInstance ? LFG_SPELL_DUNGEON_DESERTER : BG_SPELL_DESERTER);

        return true;
    }

    static bool HandleDeserterInstanceAdd(ChatHandler* handler, char const* args)
    {
        return HandleDeserterAdd(handler, args, true);
    }

    static bool HandleDeserterBGAdd(ChatHandler* handler, char const* args)
    {
        return HandleDeserterAdd(handler, args, false);
    }

    static bool HandleDeserterInstanceRemove(ChatHandler* handler, char const* args)
    {
        return HandleDeserterRemove(handler, args, true);
    }

    static bool HandleDeserterBGRemove(ChatHandler* handler, char const* args)
    {
        return HandleDeserterRemove(handler, args, false);
    }
};

void AddSC_deserter_commandscript()
{
    new deserter_commandscript();
}
