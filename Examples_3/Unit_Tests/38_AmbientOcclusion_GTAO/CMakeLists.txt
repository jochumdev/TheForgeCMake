# We need at least 3.12 for list(JOIN....), add_compile_definitions
# 3.15 for CMAKE_CXX_COMPILER_FRONTEND_VARIANT
cmake_minimum_required(VERSION 3.15)

include("${CMAKE_CURRENT_SOURCE_DIR}/../example.cmake")

forge_build_example_unit_test(
    NAME 38_AmbientOcclusion_GTAO
    FILES 38_AmbientOcclusion_GTAO.cpp Geometry.cpp
    LIBS TheForgeOS TheForgeRenderer
    SHADERS ${FORGE_UI_SHADERS} ${FORGE_TEXT_SHADERS}

    ART_DOWNLOAD ON
    COPY_DIRS "${FORGE_SOURCE_DIR}/Art/SanMiguel_3/Textures/|Textures/" "${FORGE_SOURCE_DIR}/Art/SanMiguel_3/Meshes/|Meshes/" "${FORGE_SOURCE_DIR}/Art/SDF/|SDF/"
)