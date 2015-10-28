# TER-Server

if(NOT BUILDDIR)
set(NO_GIT ${WITHOUT_GIT})
  set(GIT_EXEC ${GIT_EXECUTABLE})
  set(BUILDDIR ${CMAKE_BINARY_DIR})
endif()

if(NO_GIT)
  set(rev_date "2007-2016")
  	set(rev_hash "Server")
  set(rev_hash "TER-Server CORE")
else()
if(GIT_EXEC)
    execute_process(
      COMMAND "${GIT_EXEC}" describe --match init --dirty=+ --abbrev=12
      WORKING_DIRECTORY "${CMAKE_SOURCE_DIR}"
      OUTPUT_VARIABLE rev_info
      OUTPUT_STRIP_TRAILING_WHITESPACE
      ERROR_QUIET
    )
    execute_process(
      COMMAND "${GIT_EXEC}" show -s --format=%ci
      WORKING_DIRECTORY "${CMAKE_SOURCE_DIR}"
      OUTPUT_VARIABLE rev_date
      OUTPUT_STRIP_TRAILING_WHITESPACE
      ERROR_QUIET
    )
    execute_process(
      COMMAND "${GIT_EXEC}" rev-parse --abbrev-ref HEAD
      WORKING_DIRECTORY "${CMAKE_SOURCE_DIR}"
      OUTPUT_VARIABLE rev_branch
      OUTPUT_STRIP_TRAILING_WHITESPACE
      ERROR_QUIET
    )
  endif()

if(NOT rev_info)
    message(STATUS "
    Could not find a proper repository signature (hash) - you may need to pull tags with git fetch -t
    Continuing anyway - note that the versionstring will be set to 2007-2016 (TER-Server CORE)")
    set(rev_date "2007-2016")
	set(rev_hash "Server")
    set(rev_hash "TER-Server CORE")
  else()
    string(REGEX REPLACE init-|[0-9]+-g "" rev_hash ${rev_info})
  endif()
endif()

if(NOT "${rev_hash_cached}" MATCHES "${rev_hash}" OR NOT "${rev_branch_cached}" MATCHES "${rev_branch}")
  configure_file(
    "${CMAKE_SOURCE_DIR}/revision.h.in.cmake"
    "${BUILDDIR}/revision.h"
    @ONLY
  )
  set(rev_hash_cached "${rev_hash}" CACHE INTERNAL "Cached commit-hash")
  set(rev_branch_cached "${rev_branch}" CACHE INTERNAL "Cached branch name")
endif()
