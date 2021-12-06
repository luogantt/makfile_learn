cmake_minimum_required(VERSION 3.10)
project(Hello)

set(CMAKE_CXX_STANDARD 14)
find_package(CUDA REQUIRED)

cuda_add_executable(Hello hello5.cu)

