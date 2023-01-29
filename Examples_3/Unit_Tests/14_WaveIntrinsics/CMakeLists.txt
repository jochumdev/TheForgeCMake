forge_build_example_unit_test(
    NAME 14_WaveIntrinsics
    FILES 14_WaveIntrinsics.cpp
    LIBS TheForgeOS TheForgeRenderer gainput EASTL
    SHADERS ${FORGE_UI_SHADERS} ${FORGE_TEXT_SHADERS}
)