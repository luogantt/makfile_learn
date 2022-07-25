cmake_minimum_required(VERSION 3.12)

project(cm-config-file)

string(TIMESTAMP BUILD_TIME_YEAR %y)
string(TIMESTAMP BUILD_TIME_MONTH %m)
string(TIMESTAMP BUILD_TIME_DAY %d)

set(BUILD_AUTHOR "sdc")

set(DEBUG_LEVEL 1 CACHE STRING "debug level")

option(MEM_CHECKER "check memory malloc and free" ON)

configure_file (${CMAKE_CURRENT_LIST_DIR}/config.h.in ${CMAKE_CURRENT_BINARY_DIR}/config.h)

include_directories(${CMAKE_CURRENT_BINARY_DIR})

add_executable(${PROJECT_NAME} main.c)
