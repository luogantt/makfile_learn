cmake_minimum_required (VERSION 2.8)

project (demo)

message("当前目录如下．．．")
message("hello")
message(${CMAKE_CURRENT_BINARY_DIR})

set (EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)

aux_source_directory (src SRC_LIST)

include_directories (include)

add_executable (main ${SRC_LIST})

