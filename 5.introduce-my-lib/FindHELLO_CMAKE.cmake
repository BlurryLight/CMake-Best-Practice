## -----------------------------------------------------------------------------
## Check for the header files

find_path (HELLO_INCLUDES hello_cmake.h
  PATHS ../4.provide-my-lib/include
  )

## -----------------------------------------------------------------------------
## Check for the library

find_library(HELLO_LIBRARIES  NAMES hello_cmake
  PATHS ../4.provide-my-lib/build)

## -----------------------------------------------------------------------------
IF (HELLO_INCLUDES AND HELLO_LIBRARIES)
  SET(HELLO_FOUND TRUE)
ENDIF (HELLO_INCLUDES AND HELLO_LIBRARIES)

IF (HELLO_FOUND)
  IF (NOT HELLO_FIND_QUIETLY)
     MESSAGE(STATUS "Found Hello: ${HELLO_LIBRARIES}")
ENDIF (NOT HELLO_FIND_QUIETLY)
ELSE (HELLO_FOUND)
  IF (HELLO_FIND_REQUIRED)
     MESSAGE(FATAL_ERROR "Could not find hello library")
  ENDIF (HELLO_FIND_REQUIRED)
ENDIF (HELLO_FOUND)