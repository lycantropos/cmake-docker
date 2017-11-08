cmake_minimum_required(VERSION 3.9.4)
project(cmake_docker)

set(CMAKE_CXX_STANDARD 17)

set(SOURCE_FILES cmake_docker.cpp)
add_executable(cmake_docker ${SOURCE_FILES})
