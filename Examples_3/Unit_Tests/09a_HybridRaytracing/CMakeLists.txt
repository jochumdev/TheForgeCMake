forge_build_example_unit_test(
    NAME 09a_HybridRaytracing
    FILES 09a_HybridRaytracing.cpp
    LIBS TheForgeOS TheForgeRenderer gainput EASTL
    SHADERS ${FORGE_UI_SHADERS} ${FORGE_TEXT_SHADERS} ${FORGE_PANINI_SHADERS}

    ART_DOWNLOAD ON
    COPY_DIRS "${FORGE_SOURCE_DIR}/Art/Sponza/Textures/|Textures/" "${FORGE_SOURCE_DIR}/Art/Sponza/Meshes/|Meshes/"
)