cmake_minimum_required(VERSION 3.29)
project(templates_in_c C)

set(CMAKE_C_STANDARD 17)

add_executable(templates_in_c main.c
        list.h
        list.c
)
