# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/joagz/esp-idf/projects/web-esp32

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/joagz/esp-idf/projects/web-esp32/build

# Include any dependencies generated for this target.
include esp-idf/main/CMakeFiles/__idf_main.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include esp-idf/main/CMakeFiles/__idf_main.dir/compiler_depend.make

# Include the progress variables for this target.
include esp-idf/main/CMakeFiles/__idf_main.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/main/CMakeFiles/__idf_main.dir/flags.make

esp-idf/main/CMakeFiles/__idf_main.dir/web-esp32.c.obj: esp-idf/main/CMakeFiles/__idf_main.dir/flags.make
esp-idf/main/CMakeFiles/__idf_main.dir/web-esp32.c.obj: /home/joagz/esp-idf/projects/web-esp32/main/web-esp32.c
esp-idf/main/CMakeFiles/__idf_main.dir/web-esp32.c.obj: esp-idf/main/CMakeFiles/__idf_main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/joagz/esp-idf/projects/web-esp32/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/main/CMakeFiles/__idf_main.dir/web-esp32.c.obj"
	cd /home/joagz/esp-idf/projects/web-esp32/build/esp-idf/main && /home/joagz/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240305/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/main/CMakeFiles/__idf_main.dir/web-esp32.c.obj -MF CMakeFiles/__idf_main.dir/web-esp32.c.obj.d -o CMakeFiles/__idf_main.dir/web-esp32.c.obj -c /home/joagz/esp-idf/projects/web-esp32/main/web-esp32.c

esp-idf/main/CMakeFiles/__idf_main.dir/web-esp32.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_main.dir/web-esp32.c.i"
	cd /home/joagz/esp-idf/projects/web-esp32/build/esp-idf/main && /home/joagz/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240305/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/joagz/esp-idf/projects/web-esp32/main/web-esp32.c > CMakeFiles/__idf_main.dir/web-esp32.c.i

esp-idf/main/CMakeFiles/__idf_main.dir/web-esp32.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_main.dir/web-esp32.c.s"
	cd /home/joagz/esp-idf/projects/web-esp32/build/esp-idf/main && /home/joagz/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240305/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/joagz/esp-idf/projects/web-esp32/main/web-esp32.c -o CMakeFiles/__idf_main.dir/web-esp32.c.s

esp-idf/main/CMakeFiles/__idf_main.dir/__/http/contextholder.c.obj: esp-idf/main/CMakeFiles/__idf_main.dir/flags.make
esp-idf/main/CMakeFiles/__idf_main.dir/__/http/contextholder.c.obj: /home/joagz/esp-idf/projects/web-esp32/http/contextholder.c
esp-idf/main/CMakeFiles/__idf_main.dir/__/http/contextholder.c.obj: esp-idf/main/CMakeFiles/__idf_main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/joagz/esp-idf/projects/web-esp32/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object esp-idf/main/CMakeFiles/__idf_main.dir/__/http/contextholder.c.obj"
	cd /home/joagz/esp-idf/projects/web-esp32/build/esp-idf/main && /home/joagz/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240305/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/main/CMakeFiles/__idf_main.dir/__/http/contextholder.c.obj -MF CMakeFiles/__idf_main.dir/__/http/contextholder.c.obj.d -o CMakeFiles/__idf_main.dir/__/http/contextholder.c.obj -c /home/joagz/esp-idf/projects/web-esp32/http/contextholder.c

esp-idf/main/CMakeFiles/__idf_main.dir/__/http/contextholder.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_main.dir/__/http/contextholder.c.i"
	cd /home/joagz/esp-idf/projects/web-esp32/build/esp-idf/main && /home/joagz/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240305/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/joagz/esp-idf/projects/web-esp32/http/contextholder.c > CMakeFiles/__idf_main.dir/__/http/contextholder.c.i

esp-idf/main/CMakeFiles/__idf_main.dir/__/http/contextholder.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_main.dir/__/http/contextholder.c.s"
	cd /home/joagz/esp-idf/projects/web-esp32/build/esp-idf/main && /home/joagz/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240305/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/joagz/esp-idf/projects/web-esp32/http/contextholder.c -o CMakeFiles/__idf_main.dir/__/http/contextholder.c.s

esp-idf/main/CMakeFiles/__idf_main.dir/__/http/filter.c.obj: esp-idf/main/CMakeFiles/__idf_main.dir/flags.make
esp-idf/main/CMakeFiles/__idf_main.dir/__/http/filter.c.obj: /home/joagz/esp-idf/projects/web-esp32/http/filter.c
esp-idf/main/CMakeFiles/__idf_main.dir/__/http/filter.c.obj: esp-idf/main/CMakeFiles/__idf_main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/joagz/esp-idf/projects/web-esp32/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object esp-idf/main/CMakeFiles/__idf_main.dir/__/http/filter.c.obj"
	cd /home/joagz/esp-idf/projects/web-esp32/build/esp-idf/main && /home/joagz/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240305/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/main/CMakeFiles/__idf_main.dir/__/http/filter.c.obj -MF CMakeFiles/__idf_main.dir/__/http/filter.c.obj.d -o CMakeFiles/__idf_main.dir/__/http/filter.c.obj -c /home/joagz/esp-idf/projects/web-esp32/http/filter.c

esp-idf/main/CMakeFiles/__idf_main.dir/__/http/filter.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_main.dir/__/http/filter.c.i"
	cd /home/joagz/esp-idf/projects/web-esp32/build/esp-idf/main && /home/joagz/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240305/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/joagz/esp-idf/projects/web-esp32/http/filter.c > CMakeFiles/__idf_main.dir/__/http/filter.c.i

esp-idf/main/CMakeFiles/__idf_main.dir/__/http/filter.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_main.dir/__/http/filter.c.s"
	cd /home/joagz/esp-idf/projects/web-esp32/build/esp-idf/main && /home/joagz/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240305/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/joagz/esp-idf/projects/web-esp32/http/filter.c -o CMakeFiles/__idf_main.dir/__/http/filter.c.s

esp-idf/main/CMakeFiles/__idf_main.dir/__/http/http-commons.c.obj: esp-idf/main/CMakeFiles/__idf_main.dir/flags.make
esp-idf/main/CMakeFiles/__idf_main.dir/__/http/http-commons.c.obj: /home/joagz/esp-idf/projects/web-esp32/http/http-commons.c
esp-idf/main/CMakeFiles/__idf_main.dir/__/http/http-commons.c.obj: esp-idf/main/CMakeFiles/__idf_main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/joagz/esp-idf/projects/web-esp32/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object esp-idf/main/CMakeFiles/__idf_main.dir/__/http/http-commons.c.obj"
	cd /home/joagz/esp-idf/projects/web-esp32/build/esp-idf/main && /home/joagz/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240305/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/main/CMakeFiles/__idf_main.dir/__/http/http-commons.c.obj -MF CMakeFiles/__idf_main.dir/__/http/http-commons.c.obj.d -o CMakeFiles/__idf_main.dir/__/http/http-commons.c.obj -c /home/joagz/esp-idf/projects/web-esp32/http/http-commons.c

esp-idf/main/CMakeFiles/__idf_main.dir/__/http/http-commons.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_main.dir/__/http/http-commons.c.i"
	cd /home/joagz/esp-idf/projects/web-esp32/build/esp-idf/main && /home/joagz/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240305/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/joagz/esp-idf/projects/web-esp32/http/http-commons.c > CMakeFiles/__idf_main.dir/__/http/http-commons.c.i

esp-idf/main/CMakeFiles/__idf_main.dir/__/http/http-commons.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_main.dir/__/http/http-commons.c.s"
	cd /home/joagz/esp-idf/projects/web-esp32/build/esp-idf/main && /home/joagz/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240305/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/joagz/esp-idf/projects/web-esp32/http/http-commons.c -o CMakeFiles/__idf_main.dir/__/http/http-commons.c.s

esp-idf/main/CMakeFiles/__idf_main.dir/__/http/server.c.obj: esp-idf/main/CMakeFiles/__idf_main.dir/flags.make
esp-idf/main/CMakeFiles/__idf_main.dir/__/http/server.c.obj: /home/joagz/esp-idf/projects/web-esp32/http/server.c
esp-idf/main/CMakeFiles/__idf_main.dir/__/http/server.c.obj: esp-idf/main/CMakeFiles/__idf_main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/joagz/esp-idf/projects/web-esp32/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object esp-idf/main/CMakeFiles/__idf_main.dir/__/http/server.c.obj"
	cd /home/joagz/esp-idf/projects/web-esp32/build/esp-idf/main && /home/joagz/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240305/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/main/CMakeFiles/__idf_main.dir/__/http/server.c.obj -MF CMakeFiles/__idf_main.dir/__/http/server.c.obj.d -o CMakeFiles/__idf_main.dir/__/http/server.c.obj -c /home/joagz/esp-idf/projects/web-esp32/http/server.c

esp-idf/main/CMakeFiles/__idf_main.dir/__/http/server.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_main.dir/__/http/server.c.i"
	cd /home/joagz/esp-idf/projects/web-esp32/build/esp-idf/main && /home/joagz/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240305/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/joagz/esp-idf/projects/web-esp32/http/server.c > CMakeFiles/__idf_main.dir/__/http/server.c.i

esp-idf/main/CMakeFiles/__idf_main.dir/__/http/server.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_main.dir/__/http/server.c.s"
	cd /home/joagz/esp-idf/projects/web-esp32/build/esp-idf/main && /home/joagz/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240305/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/joagz/esp-idf/projects/web-esp32/http/server.c -o CMakeFiles/__idf_main.dir/__/http/server.c.s

esp-idf/main/CMakeFiles/__idf_main.dir/__/wifi/wificlient.c.obj: esp-idf/main/CMakeFiles/__idf_main.dir/flags.make
esp-idf/main/CMakeFiles/__idf_main.dir/__/wifi/wificlient.c.obj: /home/joagz/esp-idf/projects/web-esp32/wifi/wificlient.c
esp-idf/main/CMakeFiles/__idf_main.dir/__/wifi/wificlient.c.obj: esp-idf/main/CMakeFiles/__idf_main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/joagz/esp-idf/projects/web-esp32/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object esp-idf/main/CMakeFiles/__idf_main.dir/__/wifi/wificlient.c.obj"
	cd /home/joagz/esp-idf/projects/web-esp32/build/esp-idf/main && /home/joagz/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240305/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/main/CMakeFiles/__idf_main.dir/__/wifi/wificlient.c.obj -MF CMakeFiles/__idf_main.dir/__/wifi/wificlient.c.obj.d -o CMakeFiles/__idf_main.dir/__/wifi/wificlient.c.obj -c /home/joagz/esp-idf/projects/web-esp32/wifi/wificlient.c

esp-idf/main/CMakeFiles/__idf_main.dir/__/wifi/wificlient.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_main.dir/__/wifi/wificlient.c.i"
	cd /home/joagz/esp-idf/projects/web-esp32/build/esp-idf/main && /home/joagz/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240305/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/joagz/esp-idf/projects/web-esp32/wifi/wificlient.c > CMakeFiles/__idf_main.dir/__/wifi/wificlient.c.i

esp-idf/main/CMakeFiles/__idf_main.dir/__/wifi/wificlient.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_main.dir/__/wifi/wificlient.c.s"
	cd /home/joagz/esp-idf/projects/web-esp32/build/esp-idf/main && /home/joagz/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240305/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/joagz/esp-idf/projects/web-esp32/wifi/wificlient.c -o CMakeFiles/__idf_main.dir/__/wifi/wificlient.c.s

esp-idf/main/CMakeFiles/__idf_main.dir/__/filesys/load_fs.c.obj: esp-idf/main/CMakeFiles/__idf_main.dir/flags.make
esp-idf/main/CMakeFiles/__idf_main.dir/__/filesys/load_fs.c.obj: /home/joagz/esp-idf/projects/web-esp32/filesys/load_fs.c
esp-idf/main/CMakeFiles/__idf_main.dir/__/filesys/load_fs.c.obj: esp-idf/main/CMakeFiles/__idf_main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/joagz/esp-idf/projects/web-esp32/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object esp-idf/main/CMakeFiles/__idf_main.dir/__/filesys/load_fs.c.obj"
	cd /home/joagz/esp-idf/projects/web-esp32/build/esp-idf/main && /home/joagz/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240305/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/main/CMakeFiles/__idf_main.dir/__/filesys/load_fs.c.obj -MF CMakeFiles/__idf_main.dir/__/filesys/load_fs.c.obj.d -o CMakeFiles/__idf_main.dir/__/filesys/load_fs.c.obj -c /home/joagz/esp-idf/projects/web-esp32/filesys/load_fs.c

esp-idf/main/CMakeFiles/__idf_main.dir/__/filesys/load_fs.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_main.dir/__/filesys/load_fs.c.i"
	cd /home/joagz/esp-idf/projects/web-esp32/build/esp-idf/main && /home/joagz/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240305/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/joagz/esp-idf/projects/web-esp32/filesys/load_fs.c > CMakeFiles/__idf_main.dir/__/filesys/load_fs.c.i

esp-idf/main/CMakeFiles/__idf_main.dir/__/filesys/load_fs.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_main.dir/__/filesys/load_fs.c.s"
	cd /home/joagz/esp-idf/projects/web-esp32/build/esp-idf/main && /home/joagz/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240305/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/joagz/esp-idf/projects/web-esp32/filesys/load_fs.c -o CMakeFiles/__idf_main.dir/__/filesys/load_fs.c.s

# Object files for target __idf_main
__idf_main_OBJECTS = \
"CMakeFiles/__idf_main.dir/web-esp32.c.obj" \
"CMakeFiles/__idf_main.dir/__/http/contextholder.c.obj" \
"CMakeFiles/__idf_main.dir/__/http/filter.c.obj" \
"CMakeFiles/__idf_main.dir/__/http/http-commons.c.obj" \
"CMakeFiles/__idf_main.dir/__/http/server.c.obj" \
"CMakeFiles/__idf_main.dir/__/wifi/wificlient.c.obj" \
"CMakeFiles/__idf_main.dir/__/filesys/load_fs.c.obj"

# External object files for target __idf_main
__idf_main_EXTERNAL_OBJECTS =

esp-idf/main/libmain.a: esp-idf/main/CMakeFiles/__idf_main.dir/web-esp32.c.obj
esp-idf/main/libmain.a: esp-idf/main/CMakeFiles/__idf_main.dir/__/http/contextholder.c.obj
esp-idf/main/libmain.a: esp-idf/main/CMakeFiles/__idf_main.dir/__/http/filter.c.obj
esp-idf/main/libmain.a: esp-idf/main/CMakeFiles/__idf_main.dir/__/http/http-commons.c.obj
esp-idf/main/libmain.a: esp-idf/main/CMakeFiles/__idf_main.dir/__/http/server.c.obj
esp-idf/main/libmain.a: esp-idf/main/CMakeFiles/__idf_main.dir/__/wifi/wificlient.c.obj
esp-idf/main/libmain.a: esp-idf/main/CMakeFiles/__idf_main.dir/__/filesys/load_fs.c.obj
esp-idf/main/libmain.a: esp-idf/main/CMakeFiles/__idf_main.dir/build.make
esp-idf/main/libmain.a: esp-idf/main/CMakeFiles/__idf_main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/joagz/esp-idf/projects/web-esp32/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking C static library libmain.a"
	cd /home/joagz/esp-idf/projects/web-esp32/build/esp-idf/main && $(CMAKE_COMMAND) -P CMakeFiles/__idf_main.dir/cmake_clean_target.cmake
	cd /home/joagz/esp-idf/projects/web-esp32/build/esp-idf/main && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/__idf_main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/main/CMakeFiles/__idf_main.dir/build: esp-idf/main/libmain.a
.PHONY : esp-idf/main/CMakeFiles/__idf_main.dir/build

esp-idf/main/CMakeFiles/__idf_main.dir/clean:
	cd /home/joagz/esp-idf/projects/web-esp32/build/esp-idf/main && $(CMAKE_COMMAND) -P CMakeFiles/__idf_main.dir/cmake_clean.cmake
.PHONY : esp-idf/main/CMakeFiles/__idf_main.dir/clean

esp-idf/main/CMakeFiles/__idf_main.dir/depend:
	cd /home/joagz/esp-idf/projects/web-esp32/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/joagz/esp-idf/projects/web-esp32 /home/joagz/esp-idf/projects/web-esp32/main /home/joagz/esp-idf/projects/web-esp32/build /home/joagz/esp-idf/projects/web-esp32/build/esp-idf/main /home/joagz/esp-idf/projects/web-esp32/build/esp-idf/main/CMakeFiles/__idf_main.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : esp-idf/main/CMakeFiles/__idf_main.dir/depend

