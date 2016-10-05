# TER-Server
if( ${CMAKE_PROJECT_NAME} STREQUAL "TER-Server_S")
file(GLOB_RECURSE scripts_Spells Spells/*.cpp Spells/*.h)
source_group(Spells FILES ${scripts_Spells})

set(scripts_STAT_SRCS
  ${scripts_STAT_SRCS}
  ${scripts_Spells}
  Spells/spell_holiday.cpp
  Spells/spell_guild.cpp
)
endif()
message("  -> Prepared: Spells")