# set minimum cmake version
cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

# project name and language
project(recipe-03 LANGUAGES CXX)

# generate a library from sources
#生成静态库
add_library(message
    STATIC
    Message.hpp
    Message.cpp
  )

add_executable(hello-world hello-world.cpp)

#将静态库链接到　主函数
target_link_libraries(hello-world message)


