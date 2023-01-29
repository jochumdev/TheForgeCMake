forge_build_example_unit_test(
    NAME 06_MaterialPlayground
    FILES 06_MaterialPlayground.cpp
    LIBS TheForgeOS TheForgeRenderer gainput EASTL OZZAnimationRuntime
    SHADERS ${FORGE_UI_SHADERS} ${FORGE_TEXT_SHADERS}

    ART_DOWNLOAD ON
    COPY_FILES "${FORGE_EXAMPLES_DIR}/Unit_Tests/UnitTestResources/Textures/LA_Helipad.dds|Textures/"
    COPY_DIRS "${FORGE_SOURCE_DIR}/Art/PBR/|Textures/PBR/" "${FORGE_EXAMPLES_DIR}/Unit_Tests/UnitTestResources/Meshes|Meshes/" "${FORGE_SOURCE_DIR}/Art/Hair/|Meshes/Hair"
)