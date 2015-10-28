/*
TER-Server
*/


#ifndef APPENDERFILE_H
#define APPENDERFILE_H

#include "Appender.h"

class AppenderFile: public Appender
{
    public:
        AppenderFile(uint8 _id, std::string const& _name, LogLevel level, const char* filename, const char* logDir, const char* mode, AppenderFlags flags, uint64 maxSize);
        ~AppenderFile();
        FILE* OpenFile(std::string const& _name, std::string const& _mode, bool _backup);

    private:
        void CloseFile();
        void _write(LogMessage const& message);
        FILE* logfile;
        std::string filename;
        std::string logDir;
        std::string mode;
        bool dynamicName;
        bool backup;
        uint64 maxFileSize;
        uint64 fileSize;
};

#endif
