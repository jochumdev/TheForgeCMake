forge_build_example_unit_test(
    NAME 17_EntityComponentSystem
    FILES 17_EntityComponentSystem.cpp ../../../../Common_3/Game/ThirdParty/OpenSource/flecs/flecs.c
    LIBS TheForgeOS TheForgeRenderer gainput EASTL
    SHADERS ${FORGE_UI_SHADERS} ${FORGE_TEXT_SHADERS} ${FORGE_PANINI_SHADERS}

    COPY_FILES "${FORGE_EXAMPLES_DIR}/Unit_Tests/UnitTestResources/Textures/sprites.dds|Textures/"
)