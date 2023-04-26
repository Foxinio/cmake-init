# ---- In-src guard ----

if(CMAKE_SOURCE_DIR STREQUAL CMAKE_BINARY_DIR)
  message(
      FATAL_ERROR
      "In-src builds are not supported. "
      "Please read the BUILDING document before trying to build this project. "
      "You may need to delete 'CMakeCache.txt' and 'CMakeFiles/' first."
  )
endif()

# Needs to be included when using cpp23
set(CMAKE_TRY_COMPILE_TARGET_TYPE "STATIC_LIBRARY")

# useful to set 
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

