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
CMAKE_SOURCE_DIR = /home/ledi/图片/３/makfile_learn/CMake简明教程/c11_configure-file

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ledi/图片/３/makfile_learn/CMake简明教程/c11_configure-file/build

# Include any dependencies generated for this target.
include CMakeFiles/cm-config-file.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cm-config-file.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cm-config-file.dir/flags.make

CMakeFiles/cm-config-file.dir/main.c.o: CMakeFiles/cm-config-file.dir/flags.make
CMakeFiles/cm-config-file.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ledi/图片/３/makfile_learn/CMake简明教程/c11_configure-file/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/cm-config-file.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cm-config-file.dir/main.c.o   -c /home/ledi/图片/３/makfile_learn/CMake简明教程/c11_configure-file/main.c

CMakeFiles/cm-config-file.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cm-config-file.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ledi/图片/３/makfile_learn/CMake简明教程/c11_configure-file/main.c > CMakeFiles/cm-config-file.dir/main.c.i

CMakeFiles/cm-config-file.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cm-config-file.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ledi/图片/３/makfile_learn/CMake简明教程/c11_configure-file/main.c -o CMakeFiles/cm-config-file.dir/main.c.s

# Object files for target cm-config-file
cm__config__file_OBJECTS = \
"CMakeFiles/cm-config-file.dir/main.c.o"

# External object files for target cm-config-file
cm__config__file_EXTERNAL_OBJECTS =

cm-config-file: CMakeFiles/cm-config-file.dir/main.c.o
cm-config-file: CMakeFiles/cm-config-file.dir/build.make
cm-config-file: CMakeFiles/cm-config-file.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ledi/图片/３/makfile_learn/CMake简明教程/c11_configure-file/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable cm-config-file"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cm-config-file.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cm-config-file.dir/build: cm-config-file

.PHONY : CMakeFiles/cm-config-file.dir/build

CMakeFiles/cm-config-file.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cm-config-file.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cm-config-file.dir/clean

CMakeFiles/cm-config-file.dir/depend:
	cd /home/ledi/图片/３/makfile_learn/CMake简明教程/c11_configure-file/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ledi/图片/３/makfile_learn/CMake简明教程/c11_configure-file /home/ledi/图片/３/makfile_learn/CMake简明教程/c11_configure-file /home/ledi/图片/３/makfile_learn/CMake简明教程/c11_configure-file/build /home/ledi/图片/３/makfile_learn/CMake简明教程/c11_configure-file/build /home/ledi/图片/３/makfile_learn/CMake简明教程/c11_configure-file/build/CMakeFiles/cm-config-file.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cm-config-file.dir/depend

