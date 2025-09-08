# android 特定配置
set(ANDROID TRUE)
set(ANDROID_NATIVE_API_LEVEL 21)
set(ANDROID_STL c++_shared)

# 添加 NDK 工具链
if(NOT ANDROID_NDK)
    message(FATAL_ERROR "ANDROID_NDK NOT SET")
endif()

# 设置 android 特定编译选项
add_definitions(-DANDROID -D__ANDROID_API__=${ANDROID_NATIVE_API_LEVEL})

# 添加 JNI 支持
find_package(JNI REQUIRED)
include_directories(${JNI_INCLUDE_DIRS})

# android 特定源文件
target_sources(${PROJECT_NAME} PRIVATE src/platform/android/...)