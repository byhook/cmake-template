# 最低版本号
cmake_minimum_required(VERSION 3.22.1)
# 项目名
project("main")

# 根路径
set(ROOT_PROJECT_DIR ${CMAKE_SOURCE_DIR}/../../../../../..)
# 源代码路径
set(ROOT_SRC_DIR ${ROOT_PROJECT_DIR}/src)
# 依赖头文件路径
set(ROOT_INCLUDE_DIR ${ROOT_PROJECT_DIR}/include)
# 依赖库路径
set(ROOT_LIBS_DIR ${ROOT_PROJECT_DIR}/libs)

#根路径的文件
file(GLOB FILES_IN_DIR "${ROOT_SRC_DIR}/*")
foreach(FILE ${FILES_IN_DIR})
    message("FOUND FILE: ${FILE}")
endforeach()

add_library(${CMAKE_PROJECT_NAME} SHARED
        native-lib.cpp)

target_link_libraries(${CMAKE_PROJECT_NAME}
        android
        log)