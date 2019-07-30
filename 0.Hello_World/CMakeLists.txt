cmake_minimum_required(VERSION 3.5)
# set the minimum version of CMake

PROJECT(HELLO LANGUAGES CXX)
# set the project's name
# PROJECT(HELLO) is also allowed
# However it's a good habit to specify the language

add_executable(HELLO hello_cmake.cpp)
# set our target as an EXECUTABLE
# Then it follows source files needed to build it.
# In this simple example, there is only one file "hello_cmake.cpp".
# "HELLO" is the name of the EXECUTABLE to be built.
