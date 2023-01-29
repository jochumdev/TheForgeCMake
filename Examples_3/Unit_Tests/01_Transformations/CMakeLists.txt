forge_build_example_unit_test(
    NAME 01_Transformations
    FILES 01_Transformations.cpp
    COPY_FILES "${FORGE_EXAMPLES_DIR}/Unit_Tests/UnitTestResources/Textures/Skybox_*.dds|Textures/"
    LIBS TheForgeOS TheForgeRenderer gainput EASTL
    SHADERS ${FORGE_UI_SHADERS} ${FORGE_TEXT_SHADERS}
)