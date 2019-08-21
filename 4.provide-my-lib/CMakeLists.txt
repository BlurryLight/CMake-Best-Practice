cmake_minimum_required(VERSION 3.5)

project(hello_cmake LANGUAGES CXX)

# Modern Way to set CXX_STANDARD
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# set the target as SHARED_LIBRARY
add_library(hello_cmake SHARED
    src/hello_cmake.cpp
)

# where to find include fold
# It equals `g++ -I/path/`

target_include_directories(hello_cmake
#   PRIVATE
#   The difference between PRIVATE and PUBLIC
#   is hard to explain
#   In a nutshell, if you use PRIVATE,
#   it will throw an error when linking
    PUBLIC
    include)


add_executable(HELLO
    src/main.cpp)
# target_link_libraries() must be after the
# add_executable();
target_link_libraries(HELLO
    PRIVATE
    hello_cmake)
