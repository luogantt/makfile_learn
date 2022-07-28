cmake_minimum_required (VERSION 3.1)

project (demo)


# print custom message depending on the operating system
if(CMAKE_SYSTEM_NAME STREQUAL "Linux")
  message(STATUS "Configuring on/for Linux")
elseif(CMAKE_SYSTEM_NAME STREQUAL "Darwin")
  message(STATUS "Configuring on/for macOS")
elseif(CMAKE_SYSTEM_NAME STREQUAL "Windows")
  message(STATUS "Configuring on/for Windows")
elseif(CMAKE_SYSTEM_NAME STREQUAL "AIX")
  message(STATUS "Configuring on/for IBM AIX")
else()
  message(STATUS "Configuring on/for ${CMAKE_SYSTEM_NAME}")
endif()

add_executable(main main.cpp)

