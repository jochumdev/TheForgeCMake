forge_build_example_unit_test(
    NAME 16_Raytracing
    FILES 16_Raytracing.cpp
    LIBS TheForgeOS TheForgeRenderer gainput EASTL
    SHADERS ${FORGE_UI_SHADERS} ${FORGE_TEXT_SHADERS}

    ART_DOWNLOAD ON
    COPY_FILES "${FORGE_EXAMPLES_DIR}/Unit_Tests/UnitTestResources/cameraPath.bin|/"
    COPY_DIRS "${FORGE_SOURCE_DIR}/Art/Sponza/Textures/|Textures/" "${FORGE_SOURCE_DIR}/Art/Sponza/Meshes/|Meshes/"
)