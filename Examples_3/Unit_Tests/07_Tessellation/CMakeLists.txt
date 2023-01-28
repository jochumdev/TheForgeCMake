forge_build_example_unit_test(
    NAME 07_Tessellation
    FILES 07_Tessellation.cpp
    LIBS TheForgeOS TheForgeRenderer gainput EASTL
    COPY_DIRS "${FORGE_SOURCE_DIR}/Art/PBR/|Textures/PBR/"
    SHADERS ${FORGE_UI_SHADERS} ${FORGE_TEXT_SHADERS} ${FORGE_PANINI_SHADERS}
)