cmake_minimum_required(VERSION 3.25)

# Include source directory
include_directories(${CMAKE_CURRENT_SOURCE_DIR})

# Traverse all the subdirectories of matching files
file(GLOB_RECURSE SOURCE_FILES **.h **.cpp)

# Traverse all the subdirectories to setup file tabs
foreach(source_file IN ITEMS ${SOURCE_FILES})
    get_filename_component(source_path "${source_file}" PATH)
    string(REPLACE "${CMAKE_CURRENT_SOURCE_DIR}" "" group_path "${source_path}")
    source_group("${group_path}" FILES "${source_file}")
endforeach()

# Define executable target
add_executable(${PROJECT_NAME} ${SOURCE_FILES})

# CXX Standard Version
target_compile_features(${PROJECT_NAME} PUBLIC cxx_std_17)