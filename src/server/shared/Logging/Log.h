/*
TER-Server
*/


#ifndef TRINITYCORE_LOG_H
#define TRINITYCORE_LOG_H

#include "Define.h"
#include "Appender.h"
#include "LogWorker.h"
#include "Logger.h"

#include <ace/Singleton.h>

#include <string>
#include <set>

class Log
{
    friend class ACE_Singleton<Log, ACE_Thread_Mutex>;

    typedef std::map<uint8, Logger> LoggerMap;

    private:
        Log();
        ~Log();

    public:
        void LoadFromConfig();
        void Close();
        bool ShouldLog(LogFilterType type, LogLevel level) const;
        bool SetLogLevel(std::string const& name, char const* level, bool isLogger = true);

        void outTrace(LogFilterType f, char const* str, ...) ATTR_PRINTF(3, 4);
        void outDebug(LogFilterType f, char const* str, ...) ATTR_PRINTF(3, 4);
        void outInfo(LogFilterType f, char const* str, ...) ATTR_PRINTF(3, 4);
        void outWarn(LogFilterType f, char const* str, ...) ATTR_PRINTF(3, 4);
        void outError(LogFilterType f, char const* str, ...) ATTR_PRINTF(3, 4);
        void outFatal(LogFilterType f, char const* str, ...) ATTR_PRINTF(3, 4);

        void outCommand(uint32 account, const char * str, ...) ATTR_PRINTF(3, 4);
        void outCharDump(char const* str, uint32 account_id, uint32 guid, char const* name);
        static std::string GetTimestampStr();

        void SetRealmId(uint32 id);

    private:
        void vlog(LogFilterType f, LogLevel level, char const* str, va_list argptr);
        void write(LogMessage* msg);

        Logger* GetLoggerByType(LogFilterType filter);
        Appender* GetAppenderByName(std::string const& name);
        uint8 NextAppenderId();
        void CreateAppenderFromConfig(const char* name);
        void CreateLoggerFromConfig(const char* name);
        void ReadAppendersFromConfig();
        void ReadLoggersFromConfig();

        AppenderMap appenders;
        LoggerMap loggers;
        uint8 AppenderId;

        std::string m_logsDir;
        std::string m_logsTimestamp;

        LogWorker* worker;
};

#define sLog ACE_Singleton<Log, ACE_Thread_Mutex>::instance()

#endif
