cmake_minimum_required(VERSION 3.29)
project(static_assert)

set(CMAKE_CXX_STANDARD 17)

add_executable(static_assert main.cpp
        array_utils.cpp
        array_utils.h)
