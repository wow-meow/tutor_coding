cmake_minimum_required(VERSION 3.29)
project(cassert_vs_static_assert)

set(CMAKE_CXX_STANDARD 17)

add_executable(cassert_vs_static_assert main.cpp
        tutor_cassert.cpp
        tutor_cassert.h
        tutor_static_assert.cpp
        tutor_static_assert.h
        Vector.h
        array_utils.h)
