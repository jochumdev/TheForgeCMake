forge_build_example_unit_test(
    NAME 10_ScreenSpaceReflections
    FILES 10_ScreenSpaceReflections.cpp
    LIBS TheForgeOS TheForgeRenderer gainput EASTL
    COPY_FILES "${FORGE_EXAMPLES_DIR}/Unit_Tests/UnitTestResources/Textures/LA_Helipad.dds|Textures/"
    COPY_DIRS "${FORGE_SOURCE_DIR}/Art/Sponza/Textures/|Textures/" "${FORGE_SOURCE_DIR}/Art/Sponza/Meshes/|Meshes/"
    SHADERS ${FORGE_UI_SHADERS} ${FORGE_TEXT_SHADERS} ${FORGE_PANINI_SHADERS}
)