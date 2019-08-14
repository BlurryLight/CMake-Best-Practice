cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

project(boost_example)

find_package(Boost COMPONENTS program_options REQUIRED)
#Version can be specified after the library name

add_executable(boost_example main.cpp)

target_link_libraries(boost_example PRIVATE Boost::program_options)
