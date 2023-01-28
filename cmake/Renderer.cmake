set(FORGE_RENDERER_INCLUDE_DIRS ${FORGE_RENDERER_INCLUDE_DIRS} "${FORGE_COMMON_DIR}")

set(FORGE_RENDERER_COMMON_FILES
#        "${FORGE_COMMON_DIR}/Renderer/IMemoryAllocator.h"
        "${FORGE_COMMON_DIR}/Graphics/Interfaces/IGraphics.h"
        "${FORGE_COMMON_DIR}/Resources/ResourceLoader/Interfaces/IResourceLoader.h"
        "${FORGE_COMMON_DIR}/Graphics/CommonShaderReflection.cpp"
        "${FORGE_COMMON_DIR}/Graphics/DependencyTracking.cpp"
        "${FORGE_COMMON_DIR}/Graphics/Interfaces/IShaderReflection.h"
        "${FORGE_COMMON_DIR}/Graphics/Graphics.cpp"
        "${FORGE_COMMON_DIR}/Resources/ResourceLoader/ResourceLoader.cpp"
        "${FORGE_COMMON_DIR}/Graphics/GPUConfig.h"
        "${FORGE_COMMON_DIR}/Graphics/GPUConfig.cpp"
)

set(FORGE_RENDERER_DEPENDENCY_MESHOPTIMIZER_FILES
        "${FORGE_COMMON_DIR}/Resources/ResourceLoader/ThirdParty/OpenSource/meshoptimizer/src/allocator.cpp"
        "${FORGE_COMMON_DIR}/Resources/ResourceLoader/ThirdParty/OpenSource/meshoptimizer/src/indexgenerator.cpp"
        "${FORGE_COMMON_DIR}/Resources/ResourceLoader/ThirdParty/OpenSource/meshoptimizer/src/overdrawoptimizer.cpp"
        "${FORGE_COMMON_DIR}/Resources/ResourceLoader/ThirdParty/OpenSource/meshoptimizer/src/vcacheoptimizer.cpp"
        "${FORGE_COMMON_DIR}/Resources/ResourceLoader/ThirdParty/OpenSource/meshoptimizer/src/vfetchoptimizer.cpp"
)

set(FORGE_RENDERER_VULKAN_FILES
        "${FORGE_COMMON_DIR}/Graphics/Vulkan/Vulkan.cpp"
        "${FORGE_COMMON_DIR}/Graphics/Vulkan/VulkanRaytracing.cpp"
        "${FORGE_COMMON_DIR}/Graphics/Vulkan/VulkanShaderReflection.cpp"
)

set(FORGE_RENDERER_METAL_FILES
        "${FORGE_COMMON_DIR}/Graphics/Metal/MetalAvailabilityMacros.h"
        "${FORGE_COMMON_DIR}/Graphics/Metal/MetalCapBuilder.h"
        "${FORGE_COMMON_DIR}/Graphics/Metal/MetalConfig.h"
        "${FORGE_COMMON_DIR}/Graphics/Metal/MetalMemoryAllocatorImpl.h"
        "${FORGE_COMMON_DIR}/Graphics/Metal/MetalRaytracing.mm"
        "${FORGE_COMMON_DIR}/Graphics/Metal/MetalRenderer.mm"
        "${FORGE_COMMON_DIR}/Graphics/Metal/MetalShaderReflection.mm"
)

set(FORGE_RENDERER_DX11_FILES
        "${FORGE_COMMON_DIR}/Graphics/Direct3D11/Direct3D11.cpp"
        "${FORGE_COMMON_DIR}/Graphics/Direct3D11/Direct3D11Raytracing.cpp"
        "${FORGE_COMMON_DIR}/Graphics/Direct3D11/Direct3D11ShaderReflection.cpp"
)

set(FORGE_RENDERER_DX12_FILES
        "${FORGE_COMMON_DIR}/Graphics/Direct3D12/Direct3D12.cpp"
        "${FORGE_COMMON_DIR}/Graphics/Direct3D12/Direct3D12Hooks.cpp"
        "${FORGE_COMMON_DIR}/Graphics/Direct3D12/Direct3D12Raytracing.cpp"
        "${FORGE_COMMON_DIR}/Graphics/Direct3D12/Direct3D12ShaderReflection.cpp"
)

set(FORGE_RENDERER_FILES 
        ${FORGE_RENDERER_COMMON_FILES} 
        ${FORGE_RENDERER_DEPENDENCY_MESHOPTIMIZER_FILES}
)

set(FORGE_RENDERER_LIBRARIES TheForgeOS OZZAnimationBase)

if(${FORGE_OS_APPLE} MATCHES ON)
        find_library(APPLE_METAL Metal)
        find_library(APPLE_METALKIT MetalKit)
        find_library(APPLE_METALPS MetalPerformanceShaders)

        set(FORGE_RENDER_LIBRARIES ${FORGE_RENDER_LIBRARIES}
                ${APPLE_METAL}
                ${APPLE_METALKIT}
                ${APPLE_METALPS}
        )

        set(FORGE_RENDERER_FILES ${FORGE_RENDERER_FILES} ${FORGE_RENDERER_METAL_FILES})

        find_library(APPLE_APPKIT AppKit)
        find_library(APPLE_QUARTZCORE QuartzCore)
        find_library(APPLE_IOKIT IOKit)

        set(FORGE_RENDER_LIBRARIES
                ${FORGE_RENDER_LIBRARIES}
                ${APPLE_QUARTZCORE}
                ${APPLE_APPKIT}
                ${APPLE_IOKIT}
        )
endif()

if(${FORGE_RENDERER_VULKAN} MATCHES ON)
    find_package(Vulkan REQUIRED)
    if (Vulkan_FOUND MATCHES TRUE)
        set(FORGE_RENDER_LIBRARIES ${FORGE_RENDER_LIBRARIES} Vulkan::Vulkan)
    else()
        message("Vulkan SDK not found.  Please make sure it is installed and added to your path.")
    endif()

    message("VULKAN...")

    set(FORGE_RENDERER_LIBRARIES ${FORGE_RENDERER_LIBRARIES} SpirVTools)

    set(FORGE_RENDERER_FILES ${FORGE_RENDERER_FILES} ${FORGE_RENDERER_VULKAN_FILES})

    set(FORGE_RENDERER_INCLUDE_DIRS ${FORGE_RENDERER_INCLUDE_DIRS} ${Vulkan_INCLUDE_DIRS})

endif()

if(${FORGE_RENDERER_DX11} MATCHES ON)
    set(FORGE_RENDER_LIBRARIES ${FORGE_RENDER_LIBRARIES}
            DirectXShaderCompiler
            "d3d11.lib"
            )
    set(RENDERER_FILES ${RENDERER_FILES} ${FORGE_RENDERER_DX11_FILES})
endif()

if(${FORGE_RENDERER_DX12} MATCHES ON)
    set(FORGE_RENDER_LIBRARIES ${FORGE_RENDER_LIBRARIES}
            D3D12MemoryAllocator
            )

    set(FORGE_RENDER_LIBRARIES ${FORGE_RENDER_LIBRARIES}
            "d3d12.lib"
            )

    set(RENDERER_FILES ${RENDERER_FILES} ${FORGE_RENDERER_DX12_FILES})
endif()

if(${FORGE_OS_WINDOWS} MATCHES ON)
    set(FORGE_RENDER_LIBRARIES ${FORGE_RENDER_LIBRARIES}
            WinPixEventRuntime
            AGS
            Nvapi

            )

    set(FORGE_RENDER_LIBRARIES ${FORGE_RENDER_LIBRARIES}
            "Xinput9_1_0.lib"
            "ws2_32.lib"
            )

    set(FORGE_RENDERER_DEFINES ${FORGE_RENDERER_DEFINES}
            "_WINDOWS"
            )
endif()

add_library(TheForgeRenderer STATIC ${FORGE_RENDERER_FILES})

target_include_directories(TheForgeRenderer SYSTEM PRIVATE ${FORGE_RENDERER_INCLUDE_DIRS})
target_link_libraries(TheForgeRenderer ${FORGE_RENDERER_LIBRARIES})
target_compile_definitions(TheForgeRenderer PUBLIC ${FORGE_RENDERER_DEFINES})

# Shader list
set(FORGE_UI_SHADERS_DIR "${FORGE_COMMON_DIR}/Application/UI/Shaders")
file(GLOB FORGE_UI_SHADERS "${FORGE_UI_SHADERS_DIR}/FSL/*.fsl")
set(FORGE_TEXT_SHADERS_DIR "${FORGE_COMMON_DIR}/Application/Fonts/Shaders")
file(GLOB FORGE_TEXT_SHADERS "${FORGE_TEXT_SHADERS_DIR}/FSL/*.fsl")
set(FORGE_PANINI_SHADERS_DIR "${FORGE_MIDDLEWARE_DIR}/PaniniProjection/Shaders")
file(GLOB FORGE_PANINI_SHADERS "${FORGE_PANINI_SHADERS_DIR}/FSL/*.fsl")