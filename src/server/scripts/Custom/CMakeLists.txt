
file(GLOB_RECURSE scripts_Custom Custom/*.cpp Custom/*.h)
source_group(Custom FILES ${scripts_Custom})

set(scripts_STAT_SRCS
  ${scripts_STAT_SRCS}
  ${scripts_Custom}
    Custom/VAS_AutoBalance.cpp
    Custom/npc_profession.cpp
	Custom/gm_login.cpp
	Custom/npc_arena1v1.h
	Custom/npc_arena1v1.cpp
)

message("  -> Prepared: Custom")
