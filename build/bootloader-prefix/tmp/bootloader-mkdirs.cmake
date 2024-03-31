# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/joagz/esp-idf/components/bootloader/subproject"
  "/home/joagz/esp-idf/projects/web-esp32/build/bootloader"
  "/home/joagz/esp-idf/projects/web-esp32/build/bootloader-prefix"
  "/home/joagz/esp-idf/projects/web-esp32/build/bootloader-prefix/tmp"
  "/home/joagz/esp-idf/projects/web-esp32/build/bootloader-prefix/src/bootloader-stamp"
  "/home/joagz/esp-idf/projects/web-esp32/build/bootloader-prefix/src"
  "/home/joagz/esp-idf/projects/web-esp32/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/joagz/esp-idf/projects/web-esp32/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/joagz/esp-idf/projects/web-esp32/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
