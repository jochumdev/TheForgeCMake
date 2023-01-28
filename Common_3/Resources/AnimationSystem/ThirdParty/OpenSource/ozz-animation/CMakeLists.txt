cmake_minimum_required(VERSION 3.6)

project(OZZAnimation)

# TODO(jochumdev): No more needed when merged with the-forge
set(OZZ_DIR "${FORGE_COMMON_DIR}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation")
# set(OZZ_DIR ${CMAKE_CURRENT_SOURCE_DIR})

set(OZZ_BASE_FILES
    "${OZZ_DIR}/src/base/memory/allocator.cc"
    "${OZZ_DIR}/src/base/io/archive.cc"
    "${OZZ_DIR}/src/base/maths/math_archive.cc"
    "${OZZ_DIR}/src/base/platform.cc"
    "${OZZ_DIR}/src/base/maths/simd_math_archive.cc"
    "${OZZ_DIR}/src/base/maths/soa_math_archive.cc"
    "${OZZ_DIR}/src/base/containers/string_archive.cc"
)

set(OZZ_RUNTIME_FILES
    "${OZZ_DIR}/src/animation/runtime/ik_aim_job.cc"
    "${OZZ_DIR}/src/animation/runtime/ik_two_bone_job.cc"
    "${OZZ_DIR}/src/animation/runtime/animation.cc"
    "${OZZ_DIR}/src/animation/runtime/blending_job.cc"
    "${OZZ_DIR}/src/animation/runtime/local_to_model_job.cc"
    "${OZZ_DIR}/src/animation/runtime/sampling_job.cc"
    "${OZZ_DIR}/src/animation/runtime/skeleton.cc"
    "${OZZ_DIR}/src/animation/runtime/skeleton_utils.cc"
    "${OZZ_DIR}/src/animation/runtime/track.cc"
    "${OZZ_DIR}/src/animation/runtime/track_sampling_job.cc"
    "${OZZ_DIR}/src/animation/runtime/track_triggering_job.cc"
)

set(OZZ_OFFLINE_FILES
    "${OZZ_DIR}/src/animation/offline/raw_animation.cc"
    "${OZZ_DIR}/src/animation/offline/raw_animation_archive.cc"
    "${OZZ_DIR}/src/animation/offline/raw_animation_utils.cc"
    "${OZZ_DIR}/src/animation/offline/animation_builder.cc"
    "${OZZ_DIR}/src/animation/offline/animation_optimizer.cc"
    "${OZZ_DIR}/src/animation/offline/additive_animation_builder.cc"
    "${OZZ_DIR}/src/animation/offline/raw_skeleton.cc"
    "${OZZ_DIR}/src/animation/offline/raw_skeleton_archive.cc"
    "${OZZ_DIR}/src/animation/offline/skeleton_builder.cc"
    "${OZZ_DIR}/src/animation/offline/raw_track.cc"
    "${OZZ_DIR}/src/animation/offline/track_builder.cc"
    "${OZZ_DIR}/src/animation/offline/track_optimizer.cc"
)

add_library(${PROJECT_NAME}Base STATIC ${OZZ_BASE_FILES})
target_include_directories(${PROJECT_NAME}Base SYSTEM PRIVATE "${OZZ_DIR}/src")


add_library(${PROJECT_NAME}Runtime STATIC ${OZZ_RUNTIME_FILES})
target_link_libraries(${PROJECT_NAME}Runtime ${PROJECT_NAME}Base)
target_include_directories(${PROJECT_NAME}Runtime SYSTEM PRIVATE "${OZZ_DIR}/src")


add_library(${PROJECT_NAME}Offline STATIC ${OZZ_OFFLINE_FILES})
target_link_libraries(${PROJECT_NAME}Offline ${PROJECT_NAME}Base)
target_include_directories(${PROJECT_NAME}Offline SYSTEM PRIVATE "${OZZ_DIR}/src")