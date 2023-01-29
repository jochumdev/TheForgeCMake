add_library(19a_CodeHotReload_Game "${FORGE_EXAMPLES_DIR}/Unit_Tests/src/19_CodeHotReload/19_CodeHotReload_Game.cpp")
target_link_libraries(19a_CodeHotReload_Game PRIVATE EASTL Threads::Threads)

forge_build_example_unit_test(
    NAME 19_CodeHotReload
    FILES 19_CodeHotReload_Main.cpp ../../../../Common_3/Game/ThirdParty/OpenSource/flecs/flecs.c
    LIBS TheForgeOS TheForgeRenderer 19a_CodeHotReload_Game
    SHADERS ${FORGE_UI_SHADERS} ${FORGE_TEXT_SHADERS}

    COPY_FILES "${FORGE_EXAMPLES_DIR}/Unit_Tests/UnitTestResources/Textures/sprites.dds|Textures/"
)

# target_compile_definitions(19_CodeHotReload PUBLIC "FORGE_CODE_HOT_RELOAD=0")