/*
TER-Server
*/


#ifndef TRINITYCORE_ERRORS_H
#define TRINITYCORE_ERRORS_H

#include "Common.h"
#include "Log.h"
#include <ace/Stack_Trace.h>
#include <ace/OS_NS_unistd.h>

#define WPAssert(assertion) { if (!(assertion)) { ACE_Stack_Trace st; fprintf(stderr, "\n%s:%i in %s ASSERTION FAILED:\n  %s\n%s\n", __FILE__, __LINE__, __FUNCTION__, #assertion, st.c_str()); *((volatile int*)NULL) = 0; } }
#define WPError(assertion, errmsg) { if (!(assertion)) { sLog->outError(LOG_FILTER_GENERAL, "%\n%s:%i in %s ERROR:\n  %s\n", __FILE__, __LINE__, __FUNCTION__, (char *)errmsg); *((volatile int*)NULL) = 0; } }
#define WPWarning(assertion, errmsg) { if (!(assertion)) { sLog->outError(LOG_FILTER_GENERAL, "\n%s:%i in %s WARNING:\n  %s\n", __FILE__, __LINE__, __FUNCTION__, (char *)errmsg); } }
#define WPFatal(assertion, errmsg) { if (!(assertion)) { sLog->outError(LOG_FILTER_GENERAL, "\n%s:%i in %s FATAL ERROR:\n  %s\n", __FILE__, __LINE__, __FUNCTION__, (char *)errmsg); ACE_OS::sleep(10); *((volatile int*)NULL) = 0; } }

#define ASSERT WPAssert
#endif
