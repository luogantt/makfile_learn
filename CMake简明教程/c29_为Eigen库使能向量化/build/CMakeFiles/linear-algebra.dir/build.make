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
CMAKE_SOURCE_DIR = /home/ledi/图片/３/makfile_learn/CMake简明教程/c29_为Eigen库使能向量化

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ledi/图片/３/makfile_learn/CMake简明教程/c29_为Eigen库使能向量化/build

# Include any dependencies generated for this target.
include CMakeFiles/linear-algebra.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/linear-algebra.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/linear-algebra.dir/flags.make

CMakeFiles/linear-algebra.dir/linear-algebra.cpp.o: CMakeFiles/linear-algebra.dir/flags.make
CMakeFiles/linear-algebra.dir/linear-algebra.cpp.o: ../linear-algebra.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ledi/图片/３/makfile_learn/CMake简明教程/c29_为Eigen库使能向量化/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/linear-algebra.dir/linear-algebra.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/linear-algebra.dir/linear-algebra.cpp.o -c /home/ledi/图片/３/makfile_learn/CMake简明教程/c29_为Eigen库使能向量化/linear-algebra.cpp

CMakeFiles/linear-algebra.dir/linear-algebra.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/linear-algebra.dir/linear-algebra.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ledi/图片/３/makfile_learn/CMake简明教程/c29_为Eigen库使能向量化/linear-algebra.cpp > CMakeFiles/linear-algebra.dir/linear-algebra.cpp.i

CMakeFiles/linear-algebra.dir/linear-algebra.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/linear-algebra.dir/linear-algebra.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ledi/图片/３/makfile_learn/CMake简明教程/c29_为Eigen库使能向量化/linear-algebra.cpp -o CMakeFiles/linear-algebra.dir/linear-algebra.cpp.s

# Object files for target linear-algebra
linear__algebra_OBJECTS = \
"CMakeFiles/linear-algebra.dir/linear-algebra.cpp.o"

# External object files for target linear-algebra
linear__algebra_EXTERNAL_OBJECTS =

linear-algebra: CMakeFiles/linear-algebra.dir/linear-algebra.cpp.o
linear-algebra: CMakeFiles/linear-algebra.dir/build.make
linear-algebra: CMakeFiles/linear-algebra.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ledi/图片/３/makfile_learn/CMake简明教程/c29_为Eigen库使能向量化/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable linear-algebra"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/linear-algebra.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/linear-algebra.dir/build: linear-algebra

.PHONY : CMakeFiles/linear-algebra.dir/build

CMakeFiles/linear-algebra.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/linear-algebra.dir/cmake_clean.cmake
.PHONY : CMakeFiles/linear-algebra.dir/clean

CMakeFiles/linear-algebra.dir/depend:
	cd /home/ledi/图片/３/makfile_learn/CMake简明教程/c29_为Eigen库使能向量化/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ledi/图片/３/makfile_learn/CMake简明教程/c29_为Eigen库使能向量化 /home/ledi/图片/３/makfile_learn/CMake简明教程/c29_为Eigen库使能向量化 /home/ledi/图片/３/makfile_learn/CMake简明教程/c29_为Eigen库使能向量化/build /home/ledi/图片/３/makfile_learn/CMake简明教程/c29_为Eigen库使能向量化/build /home/ledi/图片/３/makfile_learn/CMake简明教程/c29_为Eigen库使能向量化/build/CMakeFiles/linear-algebra.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/linear-algebra.dir/depend

