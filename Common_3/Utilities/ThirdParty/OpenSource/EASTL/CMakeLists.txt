cmake_minimum_required(VERSION 3.6)

project(EASTL)

# TODO(jochumdev): No more needed when merged with the-forge
set(EASTL_DIR "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/EASTL/")
# set(EASTL_DIR ${CMAKE_CURRENT_SOURCE_DIR})

set(EASTL_ROOT_FILES
    "${EASTL_DIR}/EAStdC/EASprintf.cpp"
    "${EASTL_DIR}/EAStdC/EAMemory.cpp"
)

set(EASTL_EAStdC_FILES
    "${EASTL_DIR}/thread_support.cpp"
    "${EASTL_DIR}/string.cpp"
    "${EASTL_DIR}/red_black_tree.cpp"
    "${EASTL_DIR}/numeric_limits.cpp"
    "${EASTL_DIR}/intrusive_list.cpp"
    "${EASTL_DIR}/hashtable.cpp"
    "${EASTL_DIR}/fixed_pool.cpp"
    "${EASTL_DIR}/assert.cpp"
    "${EASTL_DIR}/allocator_forge.cpp"
    "${EASTL_DIR}/allocator_eastl.cpp"
)

set(EASTL_FILES
    ${EASTL_ROOT_FILES}
    ${EASTL_EAStdC_FILES}
)

add_library(${PROJECT_NAME} STATIC ${EASTL_FILES})