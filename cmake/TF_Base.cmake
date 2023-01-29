# #pragma once
include_guard(GLOBAL)

set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/modules")

# Fix behavior of CMAKE_CXX_STANDARD when targeting macOS.
if (POLICY CMP0025)
    cmake_policy(SET CMP0025 NEW)
endif ()

set(FORGE_SOURCE_DIR "${CMAKE_CURRENT_LIST_DIR}/../../TheForge" CACHE STRING "The Forge source directory")
set(FORGE_OS "" CACHE STRING "The Forge OS (for cross compilation)")
set(FORGE_RENDERERS "" CACHE STRING "The Forge RENDERER (for cross compilation)")

option(FORGE_ENABLE_API "Enable Forge API" ON)
option(FORGE_ENABLE_RENDERER_API "Enable Forge Renderer" ON)

option(FORGE_ENABLE_MEMORY_TRACKING "Enable memory Tracking" ON)
option(FORGE_ENABLE_LOGGING "Enable logging" ON)
option(FORGE_ENABLE_SCRIPTING "Enable scripting" ON)
option(FORGE_ENABLE_UI "Enable UI" ON)
option(FORGE_ENABLE_FONTS "Enable Fonts" ON)
option(FORGE_ENABLE_ZIP_FILESYSTEM "Enable ZIP Filesystem" ON)
option(FORGE_ENABLE_SCREENSHOT "Enable Screenshots" ON)
option(FORGE_ENABLE_PROFILER "Enable Profiler" ON)
option(FORGE_ENABLE_MESHOPTIMIZER "Enable meshoptimizer" ON)

#	eNONE = 0, eRAW = 1, eDEBUG = 2, eINFO = 4, eWARNING = 8, eERROR = 16, eALL = ~0
set(FORGE_DEFAULT_LOG_LEVEL "eALL" CACHE STRING "Default Log level")


option(FORGE_BUILD_EXAMPLES "Build TheForge examples" OFF)

#
# Do some OS checks, and setup accordingly.
#
set(FORGE_OS_APPLE OFF)
set(FORGE_OS_LINUX OFF)
set(FORGE_OS_WINDOWS OFF)

if ("${FORGE_OS}" STREQUAL "")
    set(FORGE_OS ${CMAKE_SYSTEM_NAME})
endif ()

if ("${FORGE_OS}" MATCHES "Linux")
    set(CMAKE_SYSTEM_NAME "Linux")
    set(FORGE_OS_LINUX ON)
    set(FORGE_OS_APPLE OFF)
    set(FORGE_OS_WINDOWS OFF)

    set(FORGE_RENDERER_VULKAN ON)
endif()

if ("${FORGE_OS}" MATCHES "Darwin")
    set(CMAKE_SYSTEM_NAME "Darwin")
    set(FORGE_OS_LINUX OFF)
    set(FORGE_OS_APPLE ON)
    set(FORGE_OS_WINDOWS OFF)
endif()

if ("${FORGE_OS}" MATCHES "Windows")
    set(CMAKE_SYSTEM_NAME "Windows")
    set(FORGE_OS_LINUX OFF)
    set(FORGE_OS_APPLE OFF)
    set(FORGE_OS_WINDOWS ON)
endif()

#
# Renderer
#
set(FORGE_RENDERER_METAL OFF)
set(FORGE_RENDERER_DX12 OFF)
set(FORGE_RENDERER_DX11 OFF)
set(FORGE_RENDERER_VULKAN OFF)

if ("${FORGE_RENDERER}" STREQUAL "")
    if (${FORGE_OS_LINUX} MATCHES ON)
        set(FORGE_RENDERERS "VULKAN" CACHE INTERNAL "")
    elseif (${FORGE_OS_APPLE} MATCHES ON)
        set(FORGE_RENDERERS "METAL" CACHE INTERNAL "")
    elseif (${FROGE_OS_WINDOWS} MATCHES ON)
        set(FORGE_RENDERERS "VULKAN;DX11;DX12" CACHE INTERNAL "")
    endif()
endif()


if ("VULKAN" IN_LIST FORGE_RENDERERS)
    set(FORGE_RENDERER_VULKAN ON)
else ()
    set(FORGE_RENDERER_VULKAN OFF)
endif ()

if ("METAL" IN_LIST FORGE_RENDERERS)
    set(FORGE_RENDERER_METAL ON)
else ()
    set(FORGE_RENDERER_METAL OFF)
endif ()

if ("DX12" IN_LIST FORGE_RENDERERS)
    set(FORGE_RENDERER_DX12 ON)
else ()
    set(FORGE_RENDERER_DX12 OFF)
endif ()

if ("DX11" IN_LIST FORGE_RENDERERS)
    set(FORGE_RENDERER_DX11 ON)
else ()
    set(FORGE_RENDERER_DX11 OFF)
endif ()

#
# Option validation
#
if (${FORGE_ENABLE_LOGGING} MATCHES OFF)
    set(FORGE_DEFAULT_LOG_LEVEL "eNONE")
endif ()
if (${FORGE_ENABLE_UI} MATCHES ON)
    set(FORGE_ENABLE_FONTS ON)
endif ()

#
# Options (from PyBuild.py)
#
add_compile_definitions(
    "EXTERNAL_CONFIG_FILEPATH=\"${CMAKE_CURRENT_LIST_DIR}/../Common_3/Application/CMakeConfig.h\""
    "DEFAULT_LOG_LEVEL=${FORGE_DEFAULT_LOG_LEVEL}"
)
if (${FORGE_ENABLE_API} MATCHES ON)
    add_compile_definitions("FORGE_API=")
endif ()
if (${FORGE_ENABLE_RENDERER_API} MATCHES ON)
    add_compile_definitions("FORGE_RENDERER_API=")
endif ()
if (${FORGE_ENABLE_LOGGING} MATCHES ON)
    add_compile_definitions("ENABLE_LOGGING=")
endif ()
if (${FORGE_ENABLE_MEMORY_TRACKING} MATCHES ON)
    add_compile_definitions("ENABLE_MEMORY_TRACKING=")
endif ()
if (${FORGE_ENABLE_SCRIPTING} MATCHES ON)
    add_compile_definitions("ENABLE_FORGE_SCRIPTING=")
endif ()
if (${FORGE_ENABLE_UI} MATCHES ON)
    add_compile_definitions("ENABLE_FORGE_UI=")
endif ()
if (${FORGE_ENABLE_FONTS} MATCHES ON)
    add_compile_definitions("ENABLE_FORGE_FONTS=")
endif ()
if (${FORGE_ENABLE_ZIP_FILESYSTEM} MATCHES ON)
    add_compile_definitions("ENABLE_ZIP_FILESYSTEM=")
endif ()
if (${FORGE_ENABLE_SCREENSHOT} MATCHES ON)
    add_compile_definitions("ENABLE_SCREENSHOT=")
endif ()
if (${FORGE_ENABLE_PROFILER} MATCHES ON)
    add_compile_definitions("ENABLE_PROFILER=")
endif ()
if (${CMAKE_BUILD_TYPE} MATCHES "Debug")
    add_compile_definitions("DEBUG=" "FORGE_DEBUG=" "_DEBUG=")
else ()
    add_compile_definitions("DNEBUG=")
endif ()

#
# Configure the compiler
#
set(CXX_STANDARD 14)
set(CXX_STANDARD_REQUIRED ON)
set(CXX_EXTENSIONS OFF)
# set(CMAKE_C_STANDARD 99)

if ((CMAKE_CXX_COMPILER_ID STREQUAL "Clang" OR CMAKE_CXX_COMPILER_ID STREQUAL "GNU") AND NOT CMAKE_CXX_COMPILER_FRONTEND_VARIANT STREQUAL "MSVC")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wno-comment -Wall -Wextra")
    set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} -g")
    set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE} -O3")
    set(CMAKE_CXX_FLAGS "-std=gnu++14 ${CMAKE_CXX_FLAGS} -Wno-comment -Wno-unknown-pragmas -Wall -Wextra")
    set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -g")
    set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -O3")

    # See: https://github.com/jochumdev/TheForgeCMake/issues/7
    # set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror")
    # set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Werror")
elseif (CMAKE_CXX_COMPILER_ID STREQUAL "Intel")
  # using Intel C++
elseif (CMAKE_CXX_COMPILER_ID STREQUAL "MSVC")
    if (CMAKE_CXX_COMPILER_ID STREQUAL "Clang")
        # clang-cl
    else ()
        # using Visual Studio C++
    endif ()
endif()

# Dumb options
set(_FORGE_DUMB_VARS "CMAKE_C_FLAGS;CMAKE_CXX_FLAGS;CMAKE_CXX_FLAGS_DEBUG;CMAKE_CXX_FLAGS_RELEASE;CMAKE_BUILD_TYPE;FORGE_OS;FORGE_RENDERERS;FORGE_SOURCE_DIR;FORGE_DEFAULT_LOG_LEVEL;FORGE_ENABLE_API;FORGE_ENABLE_RENDERER_API;FORGE_ENABLE_MEMORY_TRACKING;FORGE_ENABLE_SCRIPTING;FORGE_ENABLE_UI;FORGE_ENABLE_FONTS;FORGE_ENABLE_ZIP_FILESYSTEM;FORGE_ENABLE_SCREENSHOT;FORGE_ENABLE_PROFILER;FORGE_BUILD_EXAMPLES")

message(STATUS "The following options have been set:")
foreach(_FDV ${_FORGE_DUMB_VARS})
    message(STATUS "${_FDV}: ${${_FDV}}")
endforeach()
message("")

#
# Set the objc on Apple
#
if (${FORGE_OS_APPLE} MATCHES ON)
    set(FORGE_C_FLAGS "${FORGE_C_FLAGS} -fobjc-arc")
    set(FORGE_CXX_FLAGS "${FORGE_CXX_FLAGS} -x objective-c++")
endif()

#
# Various directories for later reference
#
set(FORGE_COMMON_DIR ${FORGE_SOURCE_DIR}/Common_3)
set(FORGE_MIDDLEWARE_DIR ${FORGE_SOURCE_DIR}/Middleware_3)

#
# Shader compiler script
#
set(FORGE_SHADERCOMPILER_SCRIPT "${CMAKE_CURRENT_LIST_DIR}/TF_CompileShader.cmake" CACHE INTERNAL "")

#
# Executable dependencies.
#
add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/../Common_3/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation)
add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/../Common_3/Utilities/ThirdParty/OpenSource/SpirVTools)