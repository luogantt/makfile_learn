cmake_minimum_required (VERSION 2.8)

project (demo1)

aux_source_directory(. SRC_LIST)

add_executable(main1 ${SRC_LIST})

