forge_build_example_unit_test(
    NAME 21_Animations
    FILES 21_Animations.cpp
    LIBS TheForgeOS TheForgeRenderer gainput EASTL OZZAnimationRuntime
    SHADERS ${FORGE_UI_SHADERS} ${FORGE_TEXT_SHADERS}

    COPY_DIRS "${FORGE_EXAMPLES_DIR}/Unit_Tests/UnitTestResources/Animation|Animation/"
)