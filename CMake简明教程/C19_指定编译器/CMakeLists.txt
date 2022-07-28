cmake_minimum_required(VERSION 3.12)

project(cm-config-file)


message(STATUS "Is the C++ compiler loaded? ${CMAKE_CXX_COMPILER_LOADED}")
if(CMAKE_CXX_COMPILER_LOADED)
  message(STATUS "The C++ compiler ID is: ${CMAKE_CXX_COMPILER_ID}")
  message(STATUS "Is the C++ from GNU? ${CMAKE_COMPILER_IS_GNUCXX}")
  message(STATUS "The C++ compiler version is: ${CMAKE_CXX_COMPILER_VERSION}")
endif()

message(STATUS "Is the C compiler loaded? ${CMAKE_C_COMPILER_LOADED}")
if(CMAKE_C_COMPILER_LOADED)
  message(STATUS "The C compiler ID is: ${CMAKE_C_COMPILER_ID}")
  message(STATUS "Is the C from GNU? ${CMAKE_COMPILER_IS_GNUCC}")
  message(STATUS "The C compiler version is: ${CMAKE_C_COMPILER_VERSION}")
endif()


string(TIMESTAMP BUILD_TIME_YEAR %y)
string(TIMESTAMP BUILD_TIME_MONTH %m)
string(TIMESTAMP BUILD_TIME_DAY %d)

set(BUILD_AUTHOR "sdc")

set(DEBUG_LEVEL 1 CACHE STRING "debug level")

option(MEM_CHECKER "check memory malloc and free" ON)

configure_file (${CMAKE_CURRENT_LIST_DIR}/config.h.in ${CMAKE_CURRENT_BINARY_DIR}/config.h)

include_directories(${CMAKE_CURRENT_BINARY_DIR})

add_executable(${PROJECT_NAME} main.c)
