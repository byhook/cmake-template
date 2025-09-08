cmake_minimum_required(VERSION 3.22.1)
project(cmake-template)

set(CMAKE_CXX_STANDARD 20)

add_executable(${PROJECT_NAME} src/main.cpp)