forge_build_example_unit_test(
    NAME 19_CodeHotReload_Main
    FILES 19_CodeHotReload_Main.cpp
    LIBS TheForgeOS TheForgeRenderer gainput EASTL
    SHADERS ${FORGE_UI_SHADERS} ${FORGE_TEXT_SHADERS}

    COPY_FILES "${FORGE_EXAMPLES_DIR}/Unit_Tests/UnitTestResources/Textures/sprites.dds|Textures/"
)