# iOS 特定配置
set(CMAKE_XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY "iPhone Developer")
set(CMAKE_XCODE_ATTRIBUTE_IPHONEOS_DEPLOYMENT_TARGET "12.0")

# iOS 特定编译选项
add_definitions(-DIOS -DAPPLE)

# 设置框架
find_library(UIKIT UIKit)
find_library(FOUNDATION Foundation)
target_link_libraries(${PROJECT_NAME} PRIVATE ${UIKIT} ${FOUNDATION})

# iOS 特定源文件
target_sources(${PROJECT_NAME} PRIVATE src/platform/ios/...)