# We need at least 3.12 for list(JOIN....), add_compile_definitions
# 3.15 for CMAKE_CXX_COMPILER_FRONTEND_VARIANT
cmake_minimum_required(VERSION 3.15)

include("${CMAKE_CURRENT_SOURCE_DIR}/../example.cmake")

forge_build_example_unit_test(
    NAME 17_EntityComponentSystem
    FILES 17_EntityComponentSystem.cpp ../../../../Common_3/Game/ThirdParty/OpenSource/flecs/flecs.c
    LIBS TheForgeOS TheForgeRenderer
    SHADERS ${FORGE_UI_SHADERS} ${FORGE_TEXT_SHADERS}

    COPY_FILES "${FORGE_EXAMPLES_DIR}/Unit_Tests/UnitTestResources/Textures/sprites.dds|Textures/"
)