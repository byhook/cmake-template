# 引入FetchContent模块
include(FetchContent)

# 克隆源代码
fetchcontent_declare(
        libuv
        GIT_REPOSITORY "https://github.com/libuv/libuv.git"
        GIT_TAG        "v1.51.0"  # 指定版本
)

# 解压到构建目录
fetchcontent_makeavailable(libuv)

#set(CMAKE_INSTALL_PREFIX "${CMAKE_SOURCE_DIR}/build/${PROJECT_NAME}")
#
### 设置 libuv 源码路径（根据实际路径调整）
#set(LIBUV_SRC_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../../../libuv)
#
## 添加 libuv 源码文件
#file(GLOB LIBUV_SOURCES
#        "${LIBUV_SRC_DIR}/src/*.c"
#        "${LIBUV_SRC_DIR}/src/*.h"
#        "${LIBUV_SRC_DIR}/src/unix/*.c"  # Unix/Linux/Android
#        "${LIBUV_SRC_DIR}/src/unix/*.h"
#)
#
## 排除不需要的文件（如 Windows 相关）
#list(REMOVE_ITEM LIBUV_SOURCES
#        "${LIBUV_SRC_DIR}/src/win/*.c"
#        "${LIBUV_SRC_DIR}/src/win/*.h"
#)
#
## 添加 libuv 头文件路径
#include_directories(
#        ${LIBUV_SRC_DIR}/include
#        ${LIBUV_SRC_DIR}/src
#)
#
## 编译 libuv 为动态库
#add_library(uv SHARED ${LIBUV_SOURCES})
#
## 设置动态库输出目录（可选）
#set_target_properties(uv PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/../libs)