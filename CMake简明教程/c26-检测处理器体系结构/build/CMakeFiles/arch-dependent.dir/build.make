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
CMAKE_SOURCE_DIR = /home/ledi/图片/３/makfile_learn/CMake简明教程/c26-检测处理器体系结构

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ledi/图片/３/makfile_learn/CMake简明教程/c26-检测处理器体系结构/build

# Include any dependencies generated for this target.
include CMakeFiles/arch-dependent.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/arch-dependent.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/arch-dependent.dir/flags.make

CMakeFiles/arch-dependent.dir/arch-dependent.cpp.o: CMakeFiles/arch-dependent.dir/flags.make
CMakeFiles/arch-dependent.dir/arch-dependent.cpp.o: ../arch-dependent.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ledi/图片/３/makfile_learn/CMake简明教程/c26-检测处理器体系结构/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/arch-dependent.dir/arch-dependent.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/arch-dependent.dir/arch-dependent.cpp.o -c /home/ledi/图片/３/makfile_learn/CMake简明教程/c26-检测处理器体系结构/arch-dependent.cpp

CMakeFiles/arch-dependent.dir/arch-dependent.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/arch-dependent.dir/arch-dependent.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ledi/图片/３/makfile_learn/CMake简明教程/c26-检测处理器体系结构/arch-dependent.cpp > CMakeFiles/arch-dependent.dir/arch-dependent.cpp.i

CMakeFiles/arch-dependent.dir/arch-dependent.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/arch-dependent.dir/arch-dependent.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ledi/图片/３/makfile_learn/CMake简明教程/c26-检测处理器体系结构/arch-dependent.cpp -o CMakeFiles/arch-dependent.dir/arch-dependent.cpp.s

# Object files for target arch-dependent
arch__dependent_OBJECTS = \
"CMakeFiles/arch-dependent.dir/arch-dependent.cpp.o"

# External object files for target arch-dependent
arch__dependent_EXTERNAL_OBJECTS =

arch-dependent: CMakeFiles/arch-dependent.dir/arch-dependent.cpp.o
arch-dependent: CMakeFiles/arch-dependent.dir/build.make
arch-dependent: CMakeFiles/arch-dependent.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ledi/图片/３/makfile_learn/CMake简明教程/c26-检测处理器体系结构/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable arch-dependent"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/arch-dependent.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/arch-dependent.dir/build: arch-dependent

.PHONY : CMakeFiles/arch-dependent.dir/build

CMakeFiles/arch-dependent.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/arch-dependent.dir/cmake_clean.cmake
.PHONY : CMakeFiles/arch-dependent.dir/clean

CMakeFiles/arch-dependent.dir/depend:
	cd /home/ledi/图片/３/makfile_learn/CMake简明教程/c26-检测处理器体系结构/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ledi/图片/３/makfile_learn/CMake简明教程/c26-检测处理器体系结构 /home/ledi/图片/３/makfile_learn/CMake简明教程/c26-检测处理器体系结构 /home/ledi/图片/３/makfile_learn/CMake简明教程/c26-检测处理器体系结构/build /home/ledi/图片/３/makfile_learn/CMake简明教程/c26-检测处理器体系结构/build /home/ledi/图片/３/makfile_learn/CMake简明教程/c26-检测处理器体系结构/build/CMakeFiles/arch-dependent.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/arch-dependent.dir/depend

