cmake_minimum_required(VERSION 3.22.1)
project(cmake-template)

set(CMAKE_CXX_STANDARD 20)

include(libs/source/libuv.cmake)

set(CMAKE_BINARY_DIR "${CMAKE_SOURCE_DIR}/build")

# 设置可执行文件和库文件的输出目录
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/libs)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/libs)

# 对于多配置生成器
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_DEBUG ${CMAKE_BINARY_DIR}/bin/Debug)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELEASE ${CMAKE_BINARY_DIR}/bin/Release)

add_executable(${PROJECT_NAME} src/main.cpp)


