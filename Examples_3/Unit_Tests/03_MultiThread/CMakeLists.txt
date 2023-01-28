forge_build_example_unit_test(
    NAME 03_MultiThread
    FILES 03_MultiThread.cpp
    COPY_FILES "${FORGE_EXAMPLES_DIR}/Unit_Tests/UnitTestResources/Textures/Skybox_*.dds|Textures/" "${FORGE_EXAMPLES_DIR}/Unit_Tests/UnitTestResources/Textures/Palette_*.dds|Textures/"
    LIBS TheForgeOS TheForgeRenderer gainput EASTL
    SHADERS ${FORGE_UI_SHADERS} ${FORGE_TEXT_SHADERS} ${FORGE_PANINI_SHADERS}
)