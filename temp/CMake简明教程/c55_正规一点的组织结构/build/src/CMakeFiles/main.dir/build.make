# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ledi/桌面/slam_project/cmake_learn/CMake简明教程/c55_正规一点的组织结构

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ledi/桌面/slam_project/cmake_learn/CMake简明教程/c55_正规一点的组织结构/build

# Include any dependencies generated for this target.
include src/CMakeFiles/main.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/main.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/main.dir/flags.make

src/CMakeFiles/main.dir/main.cpp.o: src/CMakeFiles/main.dir/flags.make
src/CMakeFiles/main.dir/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ledi/桌面/slam_project/cmake_learn/CMake简明教程/c55_正规一点的组织结构/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/main.dir/main.cpp.o"
	cd /home/ledi/桌面/slam_project/cmake_learn/CMake简明教程/c55_正规一点的组织结构/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/main.cpp.o -c /home/ledi/桌面/slam_project/cmake_learn/CMake简明教程/c55_正规一点的组织结构/src/main.cpp

src/CMakeFiles/main.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/main.cpp.i"
	cd /home/ledi/桌面/slam_project/cmake_learn/CMake简明教程/c55_正规一点的组织结构/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ledi/桌面/slam_project/cmake_learn/CMake简明教程/c55_正规一点的组织结构/src/main.cpp > CMakeFiles/main.dir/main.cpp.i

src/CMakeFiles/main.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/main.cpp.s"
	cd /home/ledi/桌面/slam_project/cmake_learn/CMake简明教程/c55_正规一点的组织结构/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ledi/桌面/slam_project/cmake_learn/CMake简明教程/c55_正规一点的组织结构/src/main.cpp -o CMakeFiles/main.dir/main.cpp.s

src/CMakeFiles/main.dir/testFunc.cpp.o: src/CMakeFiles/main.dir/flags.make
src/CMakeFiles/main.dir/testFunc.cpp.o: ../src/testFunc.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ledi/桌面/slam_project/cmake_learn/CMake简明教程/c55_正规一点的组织结构/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/main.dir/testFunc.cpp.o"
	cd /home/ledi/桌面/slam_project/cmake_learn/CMake简明教程/c55_正规一点的组织结构/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/testFunc.cpp.o -c /home/ledi/桌面/slam_project/cmake_learn/CMake简明教程/c55_正规一点的组织结构/src/testFunc.cpp

src/CMakeFiles/main.dir/testFunc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/testFunc.cpp.i"
	cd /home/ledi/桌面/slam_project/cmake_learn/CMake简明教程/c55_正规一点的组织结构/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ledi/桌面/slam_project/cmake_learn/CMake简明教程/c55_正规一点的组织结构/src/testFunc.cpp > CMakeFiles/main.dir/testFunc.cpp.i

src/CMakeFiles/main.dir/testFunc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/testFunc.cpp.s"
	cd /home/ledi/桌面/slam_project/cmake_learn/CMake简明教程/c55_正规一点的组织结构/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ledi/桌面/slam_project/cmake_learn/CMake简明教程/c55_正规一点的组织结构/src/testFunc.cpp -o CMakeFiles/main.dir/testFunc.cpp.s

src/CMakeFiles/main.dir/testFunc1.cpp.o: src/CMakeFiles/main.dir/flags.make
src/CMakeFiles/main.dir/testFunc1.cpp.o: ../src/testFunc1.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ledi/桌面/slam_project/cmake_learn/CMake简明教程/c55_正规一点的组织结构/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/main.dir/testFunc1.cpp.o"
	cd /home/ledi/桌面/slam_project/cmake_learn/CMake简明教程/c55_正规一点的组织结构/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/testFunc1.cpp.o -c /home/ledi/桌面/slam_project/cmake_learn/CMake简明教程/c55_正规一点的组织结构/src/testFunc1.cpp

src/CMakeFiles/main.dir/testFunc1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/testFunc1.cpp.i"
	cd /home/ledi/桌面/slam_project/cmake_learn/CMake简明教程/c55_正规一点的组织结构/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ledi/桌面/slam_project/cmake_learn/CMake简明教程/c55_正规一点的组织结构/src/testFunc1.cpp > CMakeFiles/main.dir/testFunc1.cpp.i

src/CMakeFiles/main.dir/testFunc1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/testFunc1.cpp.s"
	cd /home/ledi/桌面/slam_project/cmake_learn/CMake简明教程/c55_正规一点的组织结构/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ledi/桌面/slam_project/cmake_learn/CMake简明教程/c55_正规一点的组织结构/src/testFunc1.cpp -o CMakeFiles/main.dir/testFunc1.cpp.s

# Object files for target main
main_OBJECTS = \
"CMakeFiles/main.dir/main.cpp.o" \
"CMakeFiles/main.dir/testFunc.cpp.o" \
"CMakeFiles/main.dir/testFunc1.cpp.o"

# External object files for target main
main_EXTERNAL_OBJECTS =

../bin/main: src/CMakeFiles/main.dir/main.cpp.o
../bin/main: src/CMakeFiles/main.dir/testFunc.cpp.o
../bin/main: src/CMakeFiles/main.dir/testFunc1.cpp.o
../bin/main: src/CMakeFiles/main.dir/build.make
../bin/main: src/CMakeFiles/main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ledi/桌面/slam_project/cmake_learn/CMake简明教程/c55_正规一点的组织结构/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable ../../bin/main"
	cd /home/ledi/桌面/slam_project/cmake_learn/CMake简明教程/c55_正规一点的组织结构/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/main.dir/build: ../bin/main

.PHONY : src/CMakeFiles/main.dir/build

src/CMakeFiles/main.dir/clean:
	cd /home/ledi/桌面/slam_project/cmake_learn/CMake简明教程/c55_正规一点的组织结构/build/src && $(CMAKE_COMMAND) -P CMakeFiles/main.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/main.dir/clean

src/CMakeFiles/main.dir/depend:
	cd /home/ledi/桌面/slam_project/cmake_learn/CMake简明教程/c55_正规一点的组织结构/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ledi/桌面/slam_project/cmake_learn/CMake简明教程/c55_正规一点的组织结构 /home/ledi/桌面/slam_project/cmake_learn/CMake简明教程/c55_正规一点的组织结构/src /home/ledi/桌面/slam_project/cmake_learn/CMake简明教程/c55_正规一点的组织结构/build /home/ledi/桌面/slam_project/cmake_learn/CMake简明教程/c55_正规一点的组织结构/build/src /home/ledi/桌面/slam_project/cmake_learn/CMake简明教程/c55_正规一点的组织结构/build/src/CMakeFiles/main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/main.dir/depend

