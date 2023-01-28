forge_build_example_unit_test(
    NAME 04_ExecuteIndirect
    FILES 04_ExecuteIndirect.cpp AsteroidSim.cpp simplexnoise1234.cpp TextureGen.cpp ../../../../Middleware_3/PaniniProjection/Panini.cpp
    COPY_FILES "${FORGE_EXAMPLES_DIR}/Unit_Tests/UnitTestResources/Textures/Skybox_*.dds|Textures/"
    LIBS TheForgeOS TheForgeRenderer gainput EASTL
    SHADERS ${FORGE_UI_SHADERS} ${FORGE_TEXT_SHADERS} ${FORGE_PANINI_SHADERS}
)