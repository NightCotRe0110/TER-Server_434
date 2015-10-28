/*
TER-Server
*/


#include "AchievementMgr.h"
#include "Chat.h"
#include "Language.h"
#include "Player.h"
#include "ScriptMgr.h"

class achievement_commandscript : public CommandScript
{
public:
    achievement_commandscript() : CommandScript("achievement_commandscript") { }

    ChatCommand* GetCommands() const
    {
        static ChatCommand achievementCommandTable[] =
        {
            { "add",            SEC_ADMINISTRATOR,  false,  &HandleAchievementAddCommand,      "", NULL },
            { NULL,             0,                  false,  NULL,                              "", NULL }
        };
        static ChatCommand commandTable[] =
        {
            { "achievement",    SEC_ADMINISTRATOR,  false, NULL,            "", achievementCommandTable },
            { NULL,             0,                  false, NULL,                               "", NULL }
        };
        return commandTable;
    }

    static bool HandleAchievementAddCommand(ChatHandler* handler, char const* args)
    {
        if (!*args)
            return false;

        uint32 achievementId = atoi((char*)args);
        if (!achievementId)
        {
            if (char* id = handler->extractKeyFromLink((char*)args, "Hachievement"))
                achievementId = atoi(id);
            if (!achievementId)
                return false;
        }

        Player* target = handler->getSelectedPlayer();
        if (!target)
        {
            handler->SendSysMessage(LANG_NO_CHAR_SELECTED);
            handler->SetSentErrorMessage(true);
            return false;
        }

        if (AchievementEntry const* achievementEntry = sAchievementMgr->GetAchievement(achievementId))
            target->CompletedAchievement(achievementEntry);

        return true;
    }
};

void AddSC_achievement_commandscript()
{
    new achievement_commandscript();
}
