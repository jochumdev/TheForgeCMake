cmake_minimum_required(VERSION 3.6)

project(SpirVTools)

# TODO(jochumdev): No more needed when merged with the-forge
set(SPIRVTOOLS_DIR "${FORGE_COMMON_DIR}/Graphics/ThirdParty/OpenSource/SPIRV_Cross/")
# set(SPIRVTOOLS_DIR ${CMAKE_CURRENT_SOURCE_DIR})

set(SPIRVTOOLS_FILES
        "${SPIRVTOOLS_DIR}/spirv_cpp.cpp"
        "${SPIRVTOOLS_DIR}/spirv_cfg.cpp"
        "${SPIRVTOOLS_DIR}/spirv_cross.cpp"
        "${SPIRVTOOLS_DIR}/spirv_cross_parsed_ir.cpp"
        "${SPIRVTOOLS_DIR}/spirv_cross_util.cpp"
        "${SPIRVTOOLS_DIR}/spirv_glsl.cpp"
        "${SPIRVTOOLS_DIR}/spirv_hlsl.cpp"
        "${SPIRVTOOLS_DIR}/spirv_msl.cpp"
        "${SPIRVTOOLS_DIR}/spirv_parser.cpp"
        "${SPIRVTOOLS_DIR}/spirv_reflect.cpp"
        "${SPIRVTOOLS_DIR}/SpirvTools.cpp"
        "${SPIRVTOOLS_DIR}/SpirvTools.h"
)

add_library(${PROJECT_NAME} STATIC ${SPIRVTOOLS_FILES})