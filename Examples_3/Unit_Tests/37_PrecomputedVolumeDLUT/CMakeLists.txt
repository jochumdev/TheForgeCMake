forge_build_example_unit_test(
    NAME 37_PrecomputedVolumeDLUT
    FILES 37_PrecomputedVolumeDLUT.cpp
    LIBS TheForgeOS TheForgeRenderer gainput EASTL OZZAnimationRuntime OZZAnimationOffline
    SHADERS ${FORGE_UI_SHADERS} ${FORGE_TEXT_SHADERS} ${FORGE_PANINI_SHADERS}

    COPY_FILES "${FORGE_EXAMPLES_DIR}/Unit_Tests/UnitTestResources/Textures/*.basis|Textures/" "${FORGE_EXAMPLES_DIR}/Unit_Tests/UnitTestResources/Textures/DLUT/*.ktx|Textures/"
)