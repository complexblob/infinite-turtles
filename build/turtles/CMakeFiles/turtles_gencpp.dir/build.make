# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/daniel/repos/infinite-turtles/src/turtles

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/daniel/repos/infinite-turtles/build/turtles

# Utility rule file for turtles_gencpp.

# Include the progress variables for this target.
include CMakeFiles/turtles_gencpp.dir/progress.make

turtles_gencpp: CMakeFiles/turtles_gencpp.dir/build.make

.PHONY : turtles_gencpp

# Rule to build all files generated by this target.
CMakeFiles/turtles_gencpp.dir/build: turtles_gencpp

.PHONY : CMakeFiles/turtles_gencpp.dir/build

CMakeFiles/turtles_gencpp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/turtles_gencpp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/turtles_gencpp.dir/clean

CMakeFiles/turtles_gencpp.dir/depend:
	cd /home/daniel/repos/infinite-turtles/build/turtles && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/daniel/repos/infinite-turtles/src/turtles /home/daniel/repos/infinite-turtles/src/turtles /home/daniel/repos/infinite-turtles/build/turtles /home/daniel/repos/infinite-turtles/build/turtles /home/daniel/repos/infinite-turtles/build/turtles/CMakeFiles/turtles_gencpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/turtles_gencpp.dir/depend

