cmake_minimum_required (VERSION 2.8)

project (demo)

set (EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)


set(CMAKE_CXX_STANDARD 11)
# add_compile_options(-std=c++11 -Wall) 

add_executable(main main.cpp)

