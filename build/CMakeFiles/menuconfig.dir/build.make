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

# Utility rule file for menuconfig.

# Include any custom commands dependencies for this target.
include CMakeFiles/menuconfig.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/menuconfig.dir/progress.make

CMakeFiles/menuconfig:
	/home/joagz/.espressif/python_env/idf5.3_py3.11_env/bin/python /home/joagz/esp-idf/tools/kconfig_new/prepare_kconfig_files.py --list-separator=semicolon --env-file /home/joagz/esp-idf/projects/web-esp32/build/config.env
	/home/joagz/.espressif/python_env/idf5.3_py3.11_env/bin/python -m kconfgen --list-separator=semicolon --kconfig /home/joagz/esp-idf/Kconfig --sdkconfig-rename /home/joagz/esp-idf/sdkconfig.rename --config /home/joagz/esp-idf/projects/web-esp32/sdkconfig --env-file /home/joagz/esp-idf/projects/web-esp32/build/config.env --env IDF_TARGET=esp32 --env IDF_TOOLCHAIN=gcc --env IDF_ENV_FPGA= --env IDF_INIT_VERSION=5.3.0 --dont-write-deprecated --output config /home/joagz/esp-idf/projects/web-esp32/sdkconfig
	/home/joagz/.espressif/python_env/idf5.3_py3.11_env/bin/python /home/joagz/esp-idf/tools/check_term.py
	/usr/bin/cmake -E env COMPONENT_KCONFIGS_SOURCE_FILE=/home/joagz/esp-idf/projects/web-esp32/build/kconfigs.in COMPONENT_KCONFIGS_PROJBUILD_SOURCE_FILE=/home/joagz/esp-idf/projects/web-esp32/build/kconfigs_projbuild.in KCONFIG_CONFIG=/home/joagz/esp-idf/projects/web-esp32/sdkconfig IDF_TARGET=esp32 IDF_TOOLCHAIN=gcc IDF_ENV_FPGA= IDF_INIT_VERSION=5.3.0 /home/joagz/.espressif/python_env/idf5.3_py3.11_env/bin/python -m menuconfig /home/joagz/esp-idf/Kconfig
	/home/joagz/.espressif/python_env/idf5.3_py3.11_env/bin/python -m kconfgen --list-separator=semicolon --kconfig /home/joagz/esp-idf/Kconfig --sdkconfig-rename /home/joagz/esp-idf/sdkconfig.rename --config /home/joagz/esp-idf/projects/web-esp32/sdkconfig --env-file /home/joagz/esp-idf/projects/web-esp32/build/config.env --env IDF_TARGET=esp32 --env IDF_TOOLCHAIN=gcc --env IDF_ENV_FPGA= --env IDF_INIT_VERSION=5.3.0 --output config /home/joagz/esp-idf/projects/web-esp32/sdkconfig

menuconfig: CMakeFiles/menuconfig
menuconfig: CMakeFiles/menuconfig.dir/build.make
.PHONY : menuconfig

# Rule to build all files generated by this target.
CMakeFiles/menuconfig.dir/build: menuconfig
.PHONY : CMakeFiles/menuconfig.dir/build

CMakeFiles/menuconfig.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/menuconfig.dir/cmake_clean.cmake
.PHONY : CMakeFiles/menuconfig.dir/clean

CMakeFiles/menuconfig.dir/depend:
	cd /home/joagz/esp-idf/projects/web-esp32/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/joagz/esp-idf/projects/web-esp32 /home/joagz/esp-idf/projects/web-esp32 /home/joagz/esp-idf/projects/web-esp32/build /home/joagz/esp-idf/projects/web-esp32/build /home/joagz/esp-idf/projects/web-esp32/build/CMakeFiles/menuconfig.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/menuconfig.dir/depend

