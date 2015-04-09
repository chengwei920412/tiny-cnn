cmake_minimum_required(VERSION 2.8)

set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O4 -std=c++0x")

find_package(TBB REQUIRED)
include_directories(include/ ${TBB_INCLUDE_DIRS})

add_executable(cnn_cli src/main.cpp)
target_link_libraries(cnn_cli ${TBB_LIBRARIES})