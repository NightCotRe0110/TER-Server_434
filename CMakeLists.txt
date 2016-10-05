# TER-Server project
project(TER-Server_S)

cmake_minimum_required(VERSION 2.8)
cmake_policy(SET CMP0005 OLD)
if(POLICY CMP0043)
  cmake_policy(SET CMP0043 OLD)
endif()

if(POLICY CMP0054)
  cmake_policy(SET CMP0054 NEW)
endif()

set(CMAKE_DISABLE_SOURCE_CHANGES ON)
set(CMAKE_DISABLE_IN_SOURCE_BUILD ON)

set(CMAKE_SKIP_BUILD_RPATH 0)
set(CMAKE_BUILD_WITH_INSTALL_RPATH 0)
set(CMAKE_INSTALL_RPATH "${CMAKE_INSTALL_PREFIX}/lib")
set(CMAKE_INSTALL_RPATH_USE_LINK_PATH 1)

set(CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake/macros")

if( NOT CMAKE_BUILD_TYPE )
  set(CMAKE_BUILD_TYPE "Release")
endif()

include(CheckCXXSourceRuns)
include(CheckIncludeFiles)

include(cmake/options.cmake)

if( NOPCH )
  set(USE_COREPCH 0)
  set(USE_SCRIPTPCH 0)
endif()

include(CheckPlatform)

find_package(PCHSupport)
find_package(ACE REQUIRED)
find_package(OpenSSL REQUIRED)
find_package(Threads REQUIRED)

if( NOT USE_MYSQL_SOURCES )
  find_package(MySQL REQUIRED)
endif()

if( UNIX )
  find_package(Readline)
  find_package(ZLIB)
  find_package(BZip2)
endif()

include(cmake/genrev.cmake)

include(cmake/showoptions.cmake)
add_subdirectory(dep)
add_subdirectory(src)
