cmake_minimum_required(VERSION 3.29)
project(template)

set(CMAKE_CXX_STANDARD 26)

add_executable(template main.cpp
        array_utils.cpp
        array_utils.h
        template.cpp
        template.h)
