forge_build_example_unit_test(
    NAME 12_ZipFileSystem
    FILES 12_ZipFileSystem.cpp
    LIBS TheForgeOS TheForgeRenderer gainput EASTL
    COPY_DIRS "${FORGE_EXAMPLES_DIR}/Unit_Tests/UnitTestResources/ZipFiles|ZipFiles/"
    SHADERS ${FORGE_UI_SHADERS} ${FORGE_TEXT_SHADERS}
)