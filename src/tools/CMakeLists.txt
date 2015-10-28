# TER-Server

add_subdirectory(map_extractor)
add_subdirectory(vmap4_assembler)
add_subdirectory(vmap4_extractor)
add_subdirectory(mmaps_generator)
if (WITH_MESHEXTRACTOR)
  add_subdirectory(mesh_extractor)
endif()
