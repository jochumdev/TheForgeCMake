forge_build_example_unit_test(
    NAME 07_Tessellation
    FILES 07_Tessellation.cpp
    LIBS TheForgeOS TheForgeRenderer
    SHADERS ${FORGE_UI_SHADERS} ${FORGE_TEXT_SHADERS}

    ART_DOWNLOAD ON
    COPY_DIRS "${FORGE_SOURCE_DIR}/Art/PBR/|Textures/PBR/"
)