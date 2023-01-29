# We need at least 3.12 for list(JOIN....), add_compile_definitions
# 3.15 for CMAKE_CXX_COMPILER_FRONTEND_VARIANT
cmake_minimum_required(VERSION 3.15)

project(TheForgeCMake)

#
# The-Forge
#
include("cmake/TF_Renderer.cmake")

#
# Examples
#
if (${FORGE_BUILD_EXAMPLES} MATCHES ON)
    add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/Examples_3)
endif ()