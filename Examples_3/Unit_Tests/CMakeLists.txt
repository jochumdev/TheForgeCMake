function (forge_build_example_unit_test)
    set(options ART_DOWNLOAD)
    set(oneValueArgs NAME)
    set(multiValueArgs FILES LIBS COPY_FILES COPY_DIRS SHADERS SCRIPTS)
    cmake_parse_arguments(_EXAMPLE "${options}" "${oneValueArgs}"
                        "${multiValueArgs}" ${ARGN})

    # Dumb options
    set(_DUMB_VARS "ART_DOWNLOAD;FILES;LIBS;COPY_FILES;COPY_DIRS;SHADERS;SCRIPTS")

    message(STATUS "Will build examples \"${_EXAMPLE_NAME}\":")
    foreach(_FDV ${_DUMB_VARS})
        message(STATUS "${_FDV}: ${_EXAMPLE_${_FDV}}")
    endforeach()
    message("")

    project(${_EXAMPLE_NAME})

    set(_EXAMPLE_DIR "${FORGE_EXAMPLES_DIR}/Unit_Tests/src/${PROJECT_NAME}")

    set(_FILES)
    foreach (_FILE ${_EXAMPLE_FILES})
        set(_FILES ${_FILES} ${_EXAMPLE_DIR}/${_FILE})
    endforeach ()

    add_executable(${PROJECT_NAME} ${_FILES})
    if (_EXAMPLE_ART_DOWNLOAD AND NOT EXISTS "${FORGE_SOURCE_DIR}/Art.zip")
        message(STATUS "Downloading Art.zip, this can take a LONG time.")
        # Replace with something else
        add_custom_command(
            TARGET ${PROJECT_NAME} PRE_BUILD
            COMMAND wget -O Art.zip http://www.conffx.com/Art.zip
            COMMAND 7z x Art.zip
            WORKING_DIRECTORY ${FORGE_SOURCE_DIR}
            VERBATIM USES_TERMINAL
        )
    endif()

    target_link_libraries(${PROJECT_NAME} ${_EXAMPLE_LIBS})

    # GPUCfg
    add_custom_command(
            TARGET ${PROJECT_NAME} POST_BUILD
            COMMAND ${CMAKE_COMMAND} -E copy_directory
            ${_EXAMPLE_DIR}/../../UnitTestResources/GPUCfg
            ${CMAKE_CURRENT_BINARY_DIR}/GPUCfg)

    # Font
    add_custom_command(
            TARGET ${PROJECT_NAME} POST_BUILD
            COMMAND ${CMAKE_COMMAND} -E copy_directory
            ${_EXAMPLE_DIR}/../../UnitTestResources/Fonts
            ${CMAKE_CURRENT_BINARY_DIR}/Fonts)

    # Files
    if (_EXAMPLE_COPY_FILES)
        foreach(FILE ${_EXAMPLE_COPY_FILES})
            string(REPLACE "|" ";" __SPLIT ${FILE})
            list(GET __SPLIT 0 __FILE)
            list(GET __SPLIT 1 __DIR)

            add_custom_command(
                TARGET ${PROJECT_NAME} POST_BUILD
                COMMAND ${CMAKE_COMMAND} -E make_directory ${CMAKE_CURRENT_BINARY_DIR}/${__DIR}
            )

            add_custom_command(
                TARGET ${PROJECT_NAME} POST_BUILD
                COMMAND ${CMAKE_COMMAND} -E copy_if_different ${__FILE} ${CMAKE_CURRENT_BINARY_DIR}/${__DIR})
        endforeach()
    endif ()

    # Dirs
    if (_EXAMPLE_COPY_DIRS)
        foreach(DIR ${_EXAMPLE_COPY_DIRS})
            string(REPLACE "|" ";" __SPLIT ${DIR})
            list(GET __SPLIT 0 __SRC)
            list(GET __SPLIT 1 __DST)

            add_custom_command(
                TARGET ${PROJECT_NAME} POST_BUILD
                COMMAND ${CMAKE_COMMAND} -E copy_directory ${__SRC} ${CMAKE_CURRENT_BINARY_DIR}/${__DST})
        endforeach()
    endif ()

    # Scripts
    file(GLOB _SCRIPTS ${_EXAMPLE_DIR}/Scripts/*.lua)
    string(JOIN ";" _EXAMPLE_SCRIPTS ${_SCRIPTS} ${_EXAMPLE_SCRIPTS})
    if (_EXAMPLE_SCRIPTS)
        add_custom_command(
            TARGET ${PROJECT_NAME} POST_BUILD
            COMMAND ${CMAKE_COMMAND} -E make_directory ${CMAKE_CURRENT_BINARY_DIR}/Scripts/
        )
        add_custom_command(
            TARGET ${PROJECT_NAME} POST_BUILD
            COMMAND ${CMAKE_COMMAND} -E copy_if_different
            ${_EXAMPLE_SCRIPTS}
            ${CMAKE_CURRENT_BINARY_DIR}/Scripts/)
    endif ()

    # Noesis
    add_custom_command(
        TARGET ${PROJECT_NAME} POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E make_directory ${CMAKE_CURRENT_BINARY_DIR}/Noesis/
    )
    add_custom_command(
        TARGET ${PROJECT_NAME} POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy_if_different
        ${FORGE_COMMON_DIR}/Application/UI/*.xaml
        ${CMAKE_CURRENT_BINARY_DIR}/Noesis/)

    # Shaders
    file(GLOB SHADERS ${_EXAMPLE_DIR}/Shaders/FSL/*.fsl)
    string(JOIN "%" _SHADERS ${_EXAMPLE_SHADERS} ${SHADERS})

    add_custom_command(
        TARGET ${PROJECT_NAME} POST_BUILD
        COMMAND ${CMAKE_COMMAND} 
            -DFORGE_SOURCE_DIR="${FORGE_SOURCE_DIR}"
            -DFORGE_RENDERER="${FORGE_RENDERER}"
            -DFCS_VERBOSE=ON
            -DFCS_INCREMENTAL=ON
            -DFCS_DESTINATION="${CMAKE_CURRENT_BINARY_DIR}/Shaders"
            -DFCS_BINARYDESTINATION="${CMAKE_CURRENT_BINARY_DIR}/CompiledShaders"
            -DFCS_SHADERS="${_SHADERS}"
            -P ${FORGE_SHADERCOMPILER_SCRIPT}
    )
endfunction ()

add_subdirectory(01_Transformations)
add_subdirectory(03_MultiThread)
add_subdirectory(04_ExecuteIndirect)
add_subdirectory(06_MaterialPlayground)
add_subdirectory(07_Tessellation)
add_subdirectory(09_LightShadowPlayground)
add_subdirectory(09a_HybridRaytracing)
add_subdirectory(10_ScreenSpaceReflections)
add_subdirectory(12_ZipFileSystem)
add_subdirectory(14_WaveIntrinsics)
add_subdirectory(15_Transparency)
add_subdirectory(15a_VisibilityBufferOIT)
add_subdirectory(16_Raytracing)
add_subdirectory(17_EntityComponentSystem)
add_subdirectory(18_VirtualTexture)
# add_subdirectory(19_CodeHotReload)
# add_subdirectory(21_Animations)
add_subdirectory(28_Skinning)
add_subdirectory(33_YUV)
add_subdirectory(34_Input)
add_subdirectory(36_AlgorithmsAndContainers)
add_subdirectory(37_PrecomputedVolumeDLUT)
add_subdirectory(38_AmbientOcclusion_GTAO)