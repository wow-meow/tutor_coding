cmake_minimum_required(VERSION 3.29)
project(circular_array C)

set(CMAKE_C_STANDARD 11)

add_executable(circular_array main.c
        using_global_indexes.c
        using_global_indexes.h
        passing_encapsulated_indexes.c
        passing_encapsulated_indexes.h
        types.h
        snellmans_blog.c
        snellmans_blog.h
)
