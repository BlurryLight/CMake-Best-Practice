cmake_minimum_required(VERSION 3.5)

project(HELLO LANGUAGES CXX)

SET(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR})
#Module way
find_package(HELLO_CMAKE REQUIRED MODULE)
#Config way
#find_package(HELLO_CMAKE::hello_cmake REQUIRED PATHS ../4.provide-my-lib)
if(NOT HELLO_FOUND)
    message(FATAL_ERROR "HELLO_CMAKE Not Found!")
endif()

include_directories(${HELLO_INCLUDES})

add_executable(hello main.cpp)
target_link_libraries(hello ${HELLO_LIBRARIES})



