forge_build_example_unit_test(
    NAME 38_AmbientOcclusion_GTAO
    FILES 38_AmbientOcclusion_GTAO.cpp Geometry.cpp
    LIBS TheForgeOS TheForgeRenderer gainput EASTL
    SHADERS ${FORGE_UI_SHADERS} ${FORGE_TEXT_SHADERS} ${FORGE_PANINI_SHADERS}

    COPY_DIRS "${FORGE_SOURCE_DIR}/Art/SanMiguel_3/Textures/|Textures/" "${FORGE_SOURCE_DIR}/Art/SanMiguel_3/Meshes/|Meshes/" "${FORGE_SOURCE_DIR}/Art/SDF/|SDF/"
)