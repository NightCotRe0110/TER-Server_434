/*
TER-Server
*/


#include "AppenderDB.h"
#include "Database/DatabaseEnv.h"

AppenderDB::AppenderDB(uint8 id, std::string const& name, LogLevel level)
    : Appender(id, name, APPENDER_DB, level), realmId(0), enabled(false)
{
}

AppenderDB::~AppenderDB()
{
}

void AppenderDB::_write(LogMessage const& message)
{
    if (!enabled)
        return;

    switch (message.type)
    {
        case LOG_FILTER_SQL:
        case LOG_FILTER_SQL_DRIVER:
        case LOG_FILTER_SQL_DEV:
            break; // Avoid infinite loop, PExecute triggers Logging with LOG_FILTER_SQL type
        default:
            PreparedStatement* stmt = LoginDatabase.GetPreparedStatement(LOGIN_INS_LOG);
            stmt->setUInt64(0, message.mtime);
            stmt->setUInt32(1, realmId);
            stmt->setUInt8(2, uint8(message.type));
            stmt->setUInt8(3, uint8(message.level));
            stmt->setString(4, message.text);
            LoginDatabase.Execute(stmt);
            break;
    }
}

void AppenderDB::setRealmId(uint32 _realmId)
{
    enabled = true;
    realmId = _realmId;
}
