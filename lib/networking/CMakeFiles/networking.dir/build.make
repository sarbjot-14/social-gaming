# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /workspaces/social-gaming2/social-gaming

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /workspaces/social-gaming2/social-gaming

# Include any dependencies generated for this target.
include lib/networking/CMakeFiles/networking.dir/depend.make

# Include the progress variables for this target.
include lib/networking/CMakeFiles/networking.dir/progress.make

# Include the compile flags for this target's objects.
include lib/networking/CMakeFiles/networking.dir/flags.make

lib/networking/CMakeFiles/networking.dir/src/Server.cpp.o: lib/networking/CMakeFiles/networking.dir/flags.make
lib/networking/CMakeFiles/networking.dir/src/Server.cpp.o: lib/networking/src/Server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/social-gaming2/social-gaming/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/networking/CMakeFiles/networking.dir/src/Server.cpp.o"
	cd /workspaces/social-gaming2/social-gaming/lib/networking && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/networking.dir/src/Server.cpp.o -c /workspaces/social-gaming2/social-gaming/lib/networking/src/Server.cpp

lib/networking/CMakeFiles/networking.dir/src/Server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/networking.dir/src/Server.cpp.i"
	cd /workspaces/social-gaming2/social-gaming/lib/networking && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspaces/social-gaming2/social-gaming/lib/networking/src/Server.cpp > CMakeFiles/networking.dir/src/Server.cpp.i

lib/networking/CMakeFiles/networking.dir/src/Server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/networking.dir/src/Server.cpp.s"
	cd /workspaces/social-gaming2/social-gaming/lib/networking && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspaces/social-gaming2/social-gaming/lib/networking/src/Server.cpp -o CMakeFiles/networking.dir/src/Server.cpp.s

lib/networking/CMakeFiles/networking.dir/src/Client.cpp.o: lib/networking/CMakeFiles/networking.dir/flags.make
lib/networking/CMakeFiles/networking.dir/src/Client.cpp.o: lib/networking/src/Client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/social-gaming2/social-gaming/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object lib/networking/CMakeFiles/networking.dir/src/Client.cpp.o"
	cd /workspaces/social-gaming2/social-gaming/lib/networking && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/networking.dir/src/Client.cpp.o -c /workspaces/social-gaming2/social-gaming/lib/networking/src/Client.cpp

lib/networking/CMakeFiles/networking.dir/src/Client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/networking.dir/src/Client.cpp.i"
	cd /workspaces/social-gaming2/social-gaming/lib/networking && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspaces/social-gaming2/social-gaming/lib/networking/src/Client.cpp > CMakeFiles/networking.dir/src/Client.cpp.i

lib/networking/CMakeFiles/networking.dir/src/Client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/networking.dir/src/Client.cpp.s"
	cd /workspaces/social-gaming2/social-gaming/lib/networking && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspaces/social-gaming2/social-gaming/lib/networking/src/Client.cpp -o CMakeFiles/networking.dir/src/Client.cpp.s

# Object files for target networking
networking_OBJECTS = \
"CMakeFiles/networking.dir/src/Server.cpp.o" \
"CMakeFiles/networking.dir/src/Client.cpp.o"

# External object files for target networking
networking_EXTERNAL_OBJECTS =

lib/libnetworking.a: lib/networking/CMakeFiles/networking.dir/src/Server.cpp.o
lib/libnetworking.a: lib/networking/CMakeFiles/networking.dir/src/Client.cpp.o
lib/libnetworking.a: lib/networking/CMakeFiles/networking.dir/build.make
lib/libnetworking.a: lib/networking/CMakeFiles/networking.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/workspaces/social-gaming2/social-gaming/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library ../libnetworking.a"
	cd /workspaces/social-gaming2/social-gaming/lib/networking && $(CMAKE_COMMAND) -P CMakeFiles/networking.dir/cmake_clean_target.cmake
	cd /workspaces/social-gaming2/social-gaming/lib/networking && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/networking.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/networking/CMakeFiles/networking.dir/build: lib/libnetworking.a

.PHONY : lib/networking/CMakeFiles/networking.dir/build

lib/networking/CMakeFiles/networking.dir/clean:
	cd /workspaces/social-gaming2/social-gaming/lib/networking && $(CMAKE_COMMAND) -P CMakeFiles/networking.dir/cmake_clean.cmake
.PHONY : lib/networking/CMakeFiles/networking.dir/clean

lib/networking/CMakeFiles/networking.dir/depend:
	cd /workspaces/social-gaming2/social-gaming && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/social-gaming2/social-gaming /workspaces/social-gaming2/social-gaming/lib/networking /workspaces/social-gaming2/social-gaming /workspaces/social-gaming2/social-gaming/lib/networking /workspaces/social-gaming2/social-gaming/lib/networking/CMakeFiles/networking.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/networking/CMakeFiles/networking.dir/depend
