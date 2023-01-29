forge_build_example_unit_test(
    NAME 15_Transparency
    FILES 15_Transparency.cpp
    LIBS TheForgeOS TheForgeRenderer
    SHADERS ${FORGE_UI_SHADERS} ${FORGE_TEXT_SHADERS}

    COPY_FILES "${FORGE_EXAMPLES_DIR}/Unit_Tests/UnitTestResources/Textures/grid.dds|Textures/"
    COPY_DIRS "${FORGE_EXAMPLES_DIR}/Unit_Tests/UnitTestResources/Textures/skybox/|Textures/skybox/" "${FORGE_EXAMPLES_DIR}/Unit_Tests/UnitTestResources/Meshes/|Meshes/"
)