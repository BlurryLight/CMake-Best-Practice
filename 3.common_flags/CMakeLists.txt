cmake_minimum_required(VERSION 3.5)

PROJECT(HELLO LANGUAGES CXX)

add_executable(HELLO main.cpp)
# = cmake -DDEFINITION_TEST ....
target_compile_definitions(HELLO PUBLIC DEFINITION_TEST)

if(CMAKE_CXX_COMPILER_ID MATCHES "GNU|Clang")
    target_compile_options(HELLO PRIVATE -Wall
                                       -Wextra
                                       -Wpedantic
                                       -Werror
                                       -std=c++11)
    target_compile_options(HELLO PRIVATE -fno-exceptions
                                       -fno-rtti)
elseif(CMAKE_CXX_COMPILER_ID STREQUAL "MSVC")
    target_compile_options(HELLO PRIVATE /W4
                                       /WX)
    target_compile_options(HELLO PRIVATE /EHs-c-
                                       /GR-)
endif()
