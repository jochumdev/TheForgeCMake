#
# Setup
#
set (FORGE_SOURCE_DIR "" CACHE STRING "The Forge source directory")
set (FORGE_RENDERER "all" CACHE STRING "language, defaults to all")
option (FCS_VERBOSE "Verbose output")
option (FCS_INCREMENTAL "Only build on change")
set (FCS_DESTINATION "" CACHE STRING "Destination directory")
set (FCS_BINARYDESTINATION "" CACHE STRING "Binary destination directory")
set (FCS_SHADERS "" CACHE STRING "List of shaders, semicolon seperated")

#
# Options
#
include(FindPythonInterp)
set(_FCS_COMMAND ${PYTHON_EXECUTABLE} ${_FCS_COMMAND} ${FORGE_SOURCE_DIR}/Common_3/Tools/ForgeShadingLanguage/fsl.py -l ${FORGE_RENDERER} -d ${FCS_DESTINATION})
if ("${FCS_VERBOSE}" MATCHES ON)
    set(_FCS_COMMAND ${_FCS_COMMAND} --verbose)
endif ()
set(_FCS_COMMAND ${_FCS_COMMAND} -b ${FCS_BINARYDESTINATION})
if ("${FCS_INCREMENTAL}" MATCHES ON)
    set(_FCS_COMMAND ${_FCS_COMMAND} --incremental)
endif ()
set(_FCS_COMMAND ${_FCS_COMMAND} --compile)

#
# Run Script
#
string(REPLACE "%" ";" _SHADERS ${FCS_SHADERS})

execute_process(
    COMMAND ${CMAKE_COMMAND} -E make_directory "${FCS_DESTINATION}"
)
execute_process(
    COMMAND ${CMAKE_COMMAND} -E make_directory "${FCS_BINARYDESTINATION}/${FORGE_RENDERER}/"
)

foreach(_FCS_SHADER IN LISTS _SHADERS)
    if (${FCS_VERBOSE} MATCHES ON)
        string(JOIN " " _TMP_CMD ${_FCS_COMMAND} ${_FCS_SHADER})
        message(${_TMP_CMD})
    endif ()

    execute_process(
        COMMAND ${_FCS_COMMAND} ${_FCS_SHADER}
        RESULT_VARIABLE _FCS_RESULT
    )
    if (${FCS_VERBOSE} MATCHES ON)
        message(STATUS "Exited with code '${_FCS_RESULT}'")
    endif ()
endforeach()
