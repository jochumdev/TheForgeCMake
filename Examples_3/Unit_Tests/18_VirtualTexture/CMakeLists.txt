forge_build_example_unit_test(
    NAME 18_VirtualTexture
    FILES 18_VirtualTexture.cpp
    LIBS TheForgeOS TheForgeRenderer gainput EASTL
    SHADERS ${FORGE_UI_SHADERS} ${FORGE_TEXT_SHADERS}

    ART_DOWNLOAD ON
    COPY_DIRS "${FORGE_SOURCE_DIR}/Art/SparseTextures/|Textures/" "${FORGE_EXAMPLES_DIR}/Unit_Tests/UnitTestResources/Meshes/|Meshes/"
)