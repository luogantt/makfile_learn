cmake_minimum_required (VERSION 3.1)

project (demo)



cmake_host_system_information(RESULT var QUERY HOSTNAME)
message("hostname: ${var}")
cmake_host_system_information(RESULT var QUERY NUMBER_OF_LOGICAL_CORES NUMBER_OF_PHYSICAL_CORES)
message("cores: ${var}")
cmake_host_system_information(RESULT var QUERY TOTAL_VIRTUAL_MEMORY TOTAL_PHYSICAL_MEMORY)
message("memory(MB): ${var}")
cmake_host_system_information(RESULT var QUERY PROCESSOR_NAME)
message("processor name: ${var}")
cmake_host_system_information(RESULT var QUERY OS_NAME OS_RELEASE OS_VERSION OS_PLATFORM)
message("os information: ${var}")



add_executable(main main.cpp)

