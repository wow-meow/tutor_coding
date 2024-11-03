cmake_minimum_required(VERSION 3.29)
project(create_consume_str_vectors C)

set(CMAKE_C_STANDARD 11)

add_executable(create_consume_str_vectors main.c
        create_string_copies.h
        duplicate_and_concatenate_string.h
        duplicate_and_concatenate_string.c
        create_string_vector.h
        create_string_vector.c
)
