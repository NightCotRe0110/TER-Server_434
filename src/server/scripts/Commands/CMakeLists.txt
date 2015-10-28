# TER-Server


file(GLOB_RECURSE scripts_Commands Commands/*.cpp Commands/*.h)
source_group(Commands FILES ${scripts_Commands})

set(scripts_STAT_SRCS
  ${scripts_STAT_SRCS}
  ${scripts_Commands}
  Commands/cs_arena.cpp
  Commands/cs_rbac.cpp
)

message("  -> Prepared: Commands")
