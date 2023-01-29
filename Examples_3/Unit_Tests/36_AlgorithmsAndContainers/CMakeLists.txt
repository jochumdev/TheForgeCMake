forge_build_example_unit_test(
    NAME 36_AlgorithmsAndContainers
    FILES 36_AlgorithmsAndContainers.cpp AlgorithmsTest.c
    LIBS TheForgeOS TheForgeRenderer gainput EASTL
    SHADERS ${FORGE_UI_SHADERS} ${FORGE_TEXT_SHADERS}
)