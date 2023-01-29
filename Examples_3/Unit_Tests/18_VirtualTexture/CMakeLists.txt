# We need at least 3.12 for list(JOIN....), add_compile_definitions
# 3.15 for CMAKE_CXX_COMPILER_FRONTEND_VARIANT
cmake_minimum_required(VERSION 3.15)

include("${CMAKE_CURRENT_SOURCE_DIR}/../example.cmake")

forge_build_example_unit_test(
    NAME 18_VirtualTexture
    FILES 18_VirtualTexture.cpp
    LIBS TheForgeOS TheForgeRenderer
    SHADERS ${FORGE_UI_SHADERS} ${FORGE_TEXT_SHADERS}

    ART_DOWNLOAD ON
    COPY_DIRS "${FORGE_SOURCE_DIR}/Art/SparseTextures/|Textures/" "${FORGE_EXAMPLES_DIR}/Unit_Tests/UnitTestResources/Meshes/|Meshes/"
)