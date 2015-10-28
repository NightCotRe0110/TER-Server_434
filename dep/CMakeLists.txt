# TER-Server

if( CMAKE_COMPILER_IS_GNUCXX )
  add_definitions(--no-warnings)
elseif( MSVC )
  add_definitions(/W0)
endif()

if(CMAKE_SYSTEM_NAME MATCHES "Linux")
  if(SERVERS AND NOT NOJEM)
    add_subdirectory(jemalloc)  
  endif()
endif()

if(CMAKE_SYSTEM_NAME MATCHES "Windows")
  add_subdirectory(acelite)
  if(USE_MYSQL_SOURCES)
      add_subdirectory(mysqllite)
  endif()
  if(TOOLS)
    add_subdirectory(bzip2)
  endif()
  add_subdirectory(zlib)
endif()

add_subdirectory(g3dlite)
add_subdirectory(recastnavigation)

if(SERVERS)
  add_subdirectory(gsoap)
endif()

if(TOOLS)
  add_subdirectory(StormLib)
endif()
