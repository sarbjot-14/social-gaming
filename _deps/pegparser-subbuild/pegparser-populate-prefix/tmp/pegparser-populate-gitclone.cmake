
if(NOT "/workspaces/social-gaming2/social-gaming/_deps/pegparser-subbuild/pegparser-populate-prefix/src/pegparser-populate-stamp/pegparser-populate-gitinfo.txt" IS_NEWER_THAN "/workspaces/social-gaming2/social-gaming/_deps/pegparser-subbuild/pegparser-populate-prefix/src/pegparser-populate-stamp/pegparser-populate-gitclone-lastrun.txt")
  message(STATUS "Avoiding repeated git clone, stamp file is up to date: '/workspaces/social-gaming2/social-gaming/_deps/pegparser-subbuild/pegparser-populate-prefix/src/pegparser-populate-stamp/pegparser-populate-gitclone-lastrun.txt'")
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E remove_directory "/workspaces/social-gaming2/social-gaming/_deps/pegparser-src"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/workspaces/social-gaming2/social-gaming/_deps/pegparser-src'")
endif()

# try the clone 3 times in case there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "/usr/bin/git"  clone --no-checkout "https://github.com/TheLartians/PEGParser.git" "pegparser-src"
    WORKING_DIRECTORY "/workspaces/social-gaming2/social-gaming/_deps"
    RESULT_VARIABLE error_code
    )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once:
          ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/TheLartians/PEGParser.git'")
endif()

execute_process(
  COMMAND "/usr/bin/git"  checkout v2.0 --
  WORKING_DIRECTORY "/workspaces/social-gaming2/social-gaming/_deps/pegparser-src"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: 'v2.0'")
endif()

set(init_submodules TRUE)
if(init_submodules)
  execute_process(
    COMMAND "/usr/bin/git"  submodule update --recursive --init 
    WORKING_DIRECTORY "/workspaces/social-gaming2/social-gaming/_deps/pegparser-src"
    RESULT_VARIABLE error_code
    )
endif()
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: '/workspaces/social-gaming2/social-gaming/_deps/pegparser-src'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy
    "/workspaces/social-gaming2/social-gaming/_deps/pegparser-subbuild/pegparser-populate-prefix/src/pegparser-populate-stamp/pegparser-populate-gitinfo.txt"
    "/workspaces/social-gaming2/social-gaming/_deps/pegparser-subbuild/pegparser-populate-prefix/src/pegparser-populate-stamp/pegparser-populate-gitclone-lastrun.txt"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: '/workspaces/social-gaming2/social-gaming/_deps/pegparser-subbuild/pegparser-populate-prefix/src/pegparser-populate-stamp/pegparser-populate-gitclone-lastrun.txt'")
endif()

