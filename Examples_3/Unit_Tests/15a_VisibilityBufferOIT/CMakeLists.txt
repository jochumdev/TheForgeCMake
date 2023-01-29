forge_build_example_unit_test(
    NAME 15a_VisibilityBufferOIT
    FILES 15a_VisibilityBufferOIT.cpp Geometry.cpp
    LIBS TheForgeOS TheForgeRenderer
    SHADERS ${FORGE_UI_SHADERS} ${FORGE_TEXT_SHADERS}

    ART_DOWNLOAD ON
    COPY_FILES "${FORGE_EXAMPLES_DIR}/Unit_Tests/UnitTestResources/cameraPath.bin|/"
    COPY_DIRS "${FORGE_SOURCE_DIR}/Art/SanMiguel_3/Textures/|Textures/" "${FORGE_SOURCE_DIR}/Art/SanMiguel_3/Meshes/|Meshes/"
)