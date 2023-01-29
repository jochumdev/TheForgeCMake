forge_build_example_unit_test(
    NAME 33_YUV
    FILES 33_YUV.cpp
    LIBS TheForgeOS TheForgeRenderer
    SHADERS ${FORGE_UI_SHADERS} ${FORGE_TEXT_SHADERS}

    COPY_FILES "${FORGE_EXAMPLES_DIR}/Unit_Tests/UnitTestResources/Textures/test_224x116_IYUV.dds|Textures/"
)