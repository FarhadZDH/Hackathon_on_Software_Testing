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
CMAKE_SOURCE_DIR = /home/mohsen/workshop/Hackathon_on_Software_Testing/catch_tests/fizzbuzz

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mohsen/workshop/Hackathon_on_Software_Testing/catch_tests/fizzbuzz

# Include any dependencies generated for this target.
include CMakeFiles/Catch2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Catch2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Catch2.dir/flags.make

CMakeFiles/Catch2.dir/fizzbuzz.cpp.o: CMakeFiles/Catch2.dir/flags.make
CMakeFiles/Catch2.dir/fizzbuzz.cpp.o: fizzbuzz.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mohsen/workshop/Hackathon_on_Software_Testing/catch_tests/fizzbuzz/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Catch2.dir/fizzbuzz.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Catch2.dir/fizzbuzz.cpp.o -c /home/mohsen/workshop/Hackathon_on_Software_Testing/catch_tests/fizzbuzz/fizzbuzz.cpp

CMakeFiles/Catch2.dir/fizzbuzz.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Catch2.dir/fizzbuzz.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mohsen/workshop/Hackathon_on_Software_Testing/catch_tests/fizzbuzz/fizzbuzz.cpp > CMakeFiles/Catch2.dir/fizzbuzz.cpp.i

CMakeFiles/Catch2.dir/fizzbuzz.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Catch2.dir/fizzbuzz.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mohsen/workshop/Hackathon_on_Software_Testing/catch_tests/fizzbuzz/fizzbuzz.cpp -o CMakeFiles/Catch2.dir/fizzbuzz.cpp.s

CMakeFiles/Catch2.dir/fizzbuzz.cpp.o.requires:

.PHONY : CMakeFiles/Catch2.dir/fizzbuzz.cpp.o.requires

CMakeFiles/Catch2.dir/fizzbuzz.cpp.o.provides: CMakeFiles/Catch2.dir/fizzbuzz.cpp.o.requires
	$(MAKE) -f CMakeFiles/Catch2.dir/build.make CMakeFiles/Catch2.dir/fizzbuzz.cpp.o.provides.build
.PHONY : CMakeFiles/Catch2.dir/fizzbuzz.cpp.o.provides

CMakeFiles/Catch2.dir/fizzbuzz.cpp.o.provides.build: CMakeFiles/Catch2.dir/fizzbuzz.cpp.o


# Object files for target Catch2
Catch2_OBJECTS = \
"CMakeFiles/Catch2.dir/fizzbuzz.cpp.o"

# External object files for target Catch2
Catch2_EXTERNAL_OBJECTS =

Catch2: CMakeFiles/Catch2.dir/fizzbuzz.cpp.o
Catch2: CMakeFiles/Catch2.dir/build.make
Catch2: /usr/local/lib/libCatch2Main.a
Catch2: /usr/local/lib/libCatch2.a
Catch2: CMakeFiles/Catch2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mohsen/workshop/Hackathon_on_Software_Testing/catch_tests/fizzbuzz/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Catch2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Catch2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Catch2.dir/build: Catch2

.PHONY : CMakeFiles/Catch2.dir/build

CMakeFiles/Catch2.dir/requires: CMakeFiles/Catch2.dir/fizzbuzz.cpp.o.requires

.PHONY : CMakeFiles/Catch2.dir/requires

CMakeFiles/Catch2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Catch2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Catch2.dir/clean

CMakeFiles/Catch2.dir/depend:
	cd /home/mohsen/workshop/Hackathon_on_Software_Testing/catch_tests/fizzbuzz && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mohsen/workshop/Hackathon_on_Software_Testing/catch_tests/fizzbuzz /home/mohsen/workshop/Hackathon_on_Software_Testing/catch_tests/fizzbuzz /home/mohsen/workshop/Hackathon_on_Software_Testing/catch_tests/fizzbuzz /home/mohsen/workshop/Hackathon_on_Software_Testing/catch_tests/fizzbuzz /home/mohsen/workshop/Hackathon_on_Software_Testing/catch_tests/fizzbuzz/CMakeFiles/Catch2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Catch2.dir/depend

