set(FORGE_OS_INCLUDE_DIRS ${FORGE_OS_INCLUDE_DIRS} "${FORGE_COMMON_DIR}")

set(FORGE_OS_ANIMATION_FILES
        "${FORGE_COMMON_DIR}/Resources/AnimationSystem/Animation/AnimatedObject.cpp"
        "${FORGE_COMMON_DIR}/Resources/AnimationSystem/Animation/AnimatedObject.h"
        "${FORGE_COMMON_DIR}/Resources/AnimationSystem/Animation/Animation.cpp"
        "${FORGE_COMMON_DIR}/Resources/AnimationSystem/Animation/Animation.h"
        "${FORGE_COMMON_DIR}/Resources/AnimationSystem/Animation/Clip.cpp"
        "${FORGE_COMMON_DIR}/Resources/AnimationSystem/Animation/Clip.h"
        "${FORGE_COMMON_DIR}/Resources/AnimationSystem/Animation/ClipController.cpp"
        "${FORGE_COMMON_DIR}/Resources/AnimationSystem/Animation/ClipController.h"
        "${FORGE_COMMON_DIR}/Resources/AnimationSystem/Animation/ClipMask.cpp"
        "${FORGE_COMMON_DIR}/Resources/AnimationSystem/Animation/ClipMask.h"
        "${FORGE_COMMON_DIR}/Resources/AnimationSystem/Animation/Rig.cpp"
        "${FORGE_COMMON_DIR}/Resources/AnimationSystem/Animation/Rig.h"
        "${FORGE_COMMON_DIR}/Resources/AnimationSystem/Animation/SkeletonBatcher.cpp"
        "${FORGE_COMMON_DIR}/Resources/AnimationSystem/Animation/SkeletonBatcher.h"
)

set(FORGE_MIDDLEWARE_PANINIPROJECTION_FILES
        "${FORGE_MIDDLEWARE_DIR}/PaniniProjection/Shaders/FSL/resources.h"
)

set(FORGE_OS_CAMERA_FILES
        "${FORGE_COMMON_DIR}/Application/CameraController.cpp"
)

set(FORGE_OS_CORE_FILES
        "${FORGE_COMMON_DIR}/Utilities/Threading/Atomics.h"
        "${FORGE_COMMON_DIR}/Application/Config.h"
        "${FORGE_COMMON_DIR}/Utilities/Math/Algorithms.c"
        "${FORGE_COMMON_DIR}/Utilities/Math/Algorithms.h"
        "${FORGE_COMMON_DIR}/Utilities/Math/BStringHashMap.h"
        "${FORGE_COMMON_DIR}/Utilities/Math/StbDs.c"
        "${FORGE_COMMON_DIR}/Utilities/RingBuffer.h"
        "${FORGE_COMMON_DIR}/Utilities/Timer.c"
        "${FORGE_COMMON_DIR}/OS/CPUConfig.cpp"
        "${FORGE_COMMON_DIR}/Utilities/Threading/ThreadSystem.cpp"
        "${FORGE_COMMON_DIR}/Application/DLL.h"
        "${FORGE_COMMON_DIR}/Application/Screenshot.cpp"
        "${FORGE_COMMON_DIR}/Utilities/Threading/ThreadSystem.h"
)

set(FORGE_OS_INPUT_FILES
        "${FORGE_COMMON_DIR}/Application/InputSystem.cpp"
)

set(FORGE_OS_INTERFACES_FILES
        "${FORGE_COMMON_DIR}/Application/Interfaces/IProfiler.h"
        "${FORGE_COMMON_DIR}/Application/Interfaces/IApp.h"
        "${FORGE_COMMON_DIR}/Utilities/Interfaces/IFileSystem.h"
        "${FORGE_COMMON_DIR}/Utilities/Interfaces/ILog.h"
        "${FORGE_COMMON_DIR}/Utilities/Interfaces/IMemory.h"
        "${FORGE_COMMON_DIR}/OS/Interfaces/IOperatingSystem.h"
        "${FORGE_COMMON_DIR}/Utilities/Interfaces/IThread.h"
        "${FORGE_COMMON_DIR}/Utilities/Interfaces/ITime.h"
        "${FORGE_COMMON_DIR}/OS/Interfaces/IUIManager.h"
        "${FORGE_COMMON_DIR}/Application/Interfaces/IFont.h"
        "${FORGE_COMMON_DIR}/Game/Interfaces/IScripting.h"
        "${FORGE_COMMON_DIR}/Application/Interfaces/IUI.h"
        "${FORGE_COMMON_DIR}/Application/Interfaces/ICameraController.h"
        "${FORGE_COMMON_DIR}/Application/Interfaces/IInput.h"
        "${FORGE_COMMON_DIR}/Application/Interfaces/IMiddleware.h"
        "${FORGE_COMMON_DIR}/Application/Interfaces/IScreenshot.h"
)

set(FORGE_OS_LOGGING_FILES
        "${FORGE_COMMON_DIR}/Utilities/Log/Log.c"
)

set(FORGE_OS_LOGGING_FILES
        "${FORGE_COMMON_DIR}/Utilities/Log/Log.c"
)

set(FORGE_OS_MATH_FILES
        "${FORGE_COMMON_DIR}/Utilities/Math/MathTypes.h"
)

set(FORGE_OS_MEMORYTRACKING_FILES
        "${FORGE_COMMON_DIR}/Utilities/MemoryTracking/MemoryTracking.c"
)

set(FORGE_OS_DEPENDENCY_BSTRLIB_FILES
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/bstrlib/bstrlib.c"
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/bstrlib/bstrlib.h"
)

set(FORGE_OS_DEPENDENCY_MINIZIP_FILES
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/minizip/zip.h"
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/minizip/mz_zip.h"
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/minizip/mz_zip.c"
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/minizip/mz_strm_zlib.h"
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/minizip/mz_strm_zlib.c"
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/minizip/mz_strm_wzaes.h"
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/minizip/mz_strm_wzaes.c"
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/minizip/mz_strm_raw.c"
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/minizip/mz_strm.h"
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/minizip/mz_os.h"
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/minizip/mz_os.cpp"
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/minizip/mz_crypt_brg.c"
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/minizip/mz_crypt.h"
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/minizip/mz_crypt.c"
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/minizip/mz.h"
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/minizip/lib/brg/sha2.h"
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/minizip/lib/brg/sha2.c"
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/minizip/lib/brg/sha1.h"
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/minizip/lib/brg/sha1.c"
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/minizip/lib/brg/hmac.h"
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/minizip/lib/brg/hmac.c"
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/minizip/lib/brg/brg_types.h"
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/minizip/lib/brg/brg_endian.h"
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/minizip/lib/brg/aestab.h"
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/minizip/lib/brg/aestab.c"
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/minizip/lib/brg/aesopt.h"
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/minizip/lib/brg/aeskey.c"
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/minizip/lib/brg/aescrypt.c"
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/minizip/lib/brg/aes.h"
)

set(FORGE_OS_DEPENDENCY_RMEM_FILES
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/rmem/src/rmem_get_module_info.cpp"
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/rmem/src/rmem_hook.cpp"
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/rmem/src/rmem_lib.cpp"
)

set(FORGE_OS_DEPENDENCY_BASISU_FILES
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/basis_universal/transcoder/basisu_transcoder.cpp"
)

set(FORGE_OS_DEPENDENCY_IMGUI_FILES
        "${FORGE_COMMON_DIR}/Application/ThirdParty/OpenSource/imgui/imconfig.h"
        "${FORGE_COMMON_DIR}/Application/ThirdParty/OpenSource/imgui/imgui.cpp"
        "${FORGE_COMMON_DIR}/Application/ThirdParty/OpenSource/imgui/imgui.h"
        "${FORGE_COMMON_DIR}/Application/ThirdParty/OpenSource/imgui/imgui_demo.cpp"
        "${FORGE_COMMON_DIR}/Application/ThirdParty/OpenSource/imgui/imgui_draw.cpp"
        "${FORGE_COMMON_DIR}/Application/ThirdParty/OpenSource/imgui/imgui_internal.h"
        "${FORGE_COMMON_DIR}/Application/ThirdParty/OpenSource/imgui/imgui_widgets.cpp"
        "${FORGE_COMMON_DIR}/Application/ThirdParty/OpenSource/imgui/imgui_tables.cpp"
)

set(FORGE_OS_DEPENDENCY_LUA_FILES
        "${FORGE_COMMON_DIR}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lapi.c"
        "${FORGE_COMMON_DIR}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lauxlib.c"
        "${FORGE_COMMON_DIR}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lbaselib.c"
        "${FORGE_COMMON_DIR}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lbitlib.c"
        "${FORGE_COMMON_DIR}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lcode.c"
        "${FORGE_COMMON_DIR}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lcorolib.c"
        "${FORGE_COMMON_DIR}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lctype.c"
        "${FORGE_COMMON_DIR}/Game/ThirdParty/OpenSource/lua-5.3.5/src/ldblib.c"
        "${FORGE_COMMON_DIR}/Game/ThirdParty/OpenSource/lua-5.3.5/src/ldebug.c"
        "${FORGE_COMMON_DIR}/Game/ThirdParty/OpenSource/lua-5.3.5/src/ldo.c"
        "${FORGE_COMMON_DIR}/Game/ThirdParty/OpenSource/lua-5.3.5/src/ldump.c"
        "${FORGE_COMMON_DIR}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lfunc.c"
        "${FORGE_COMMON_DIR}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lgc.c"
        "${FORGE_COMMON_DIR}/Game/ThirdParty/OpenSource/lua-5.3.5/src/linit.c"
        "${FORGE_COMMON_DIR}/Game/ThirdParty/OpenSource/lua-5.3.5/src/liolib.c"
        "${FORGE_COMMON_DIR}/Game/ThirdParty/OpenSource/lua-5.3.5/src/llex.c"
        "${FORGE_COMMON_DIR}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lmathlib.c"
        "${FORGE_COMMON_DIR}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lmem.c"
        "${FORGE_COMMON_DIR}/Game/ThirdParty/OpenSource/lua-5.3.5/src/loadlib.c"
        "${FORGE_COMMON_DIR}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lobject.c"
        "${FORGE_COMMON_DIR}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lopcodes.c"
        "${FORGE_COMMON_DIR}/Game/ThirdParty/OpenSource/lua-5.3.5/src/loslib.c"
        "${FORGE_COMMON_DIR}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lparser.c"
        "${FORGE_COMMON_DIR}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lstate.c"
        "${FORGE_COMMON_DIR}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lstring.c"
        "${FORGE_COMMON_DIR}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lstrlib.c"
        "${FORGE_COMMON_DIR}/Game/ThirdParty/OpenSource/lua-5.3.5/src/ltable.c"
        "${FORGE_COMMON_DIR}/Game/ThirdParty/OpenSource/lua-5.3.5/src/ltablib.c"
        "${FORGE_COMMON_DIR}/Game/ThirdParty/OpenSource/lua-5.3.5/src/ltm.c"
        "${FORGE_COMMON_DIR}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lundump.c"
        "${FORGE_COMMON_DIR}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lutf8lib.c"
        "${FORGE_COMMON_DIR}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lvm.c"
        "${FORGE_COMMON_DIR}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lzio.c"
)

set(FORGE_OS_DEPENDENCY_CPU_FEATURES_FILES
        "${FORGE_COMMON_DIR}/OS/ThirdParty/OpenSource/cpu_features/src/impl_x86_linux_or_android.c"
        "${FORGE_COMMON_DIR}/OS/ThirdParty/OpenSource/cpu_features/src/impl_aarch64_linux_or_android.c"
)

set(FORGE_OS_DEPENDENCY_TASK_SCHEDULER_FILES
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/TaskScheduler/Scheduler/Source/MTDefaultAppInterop.cpp"
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/TaskScheduler/Scheduler/Source/MTFiberContext.cpp"
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/TaskScheduler/Scheduler/Source/MTScheduler.cpp"
        "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/TaskScheduler/Scheduler/Source/MTThreadContext.cpp"
)
set(FORGE_OS_INCLUDE_DIRS ${FORGE_OS_INCLUDE_DIRS} "${FORGE_COMMON_DIR}/Utilities/ThirdParty/OpenSource/TaskScheduler/Scheduler/Include")


set(FORGE_OS_DEPENDENCIES_FILES
        ${FORGE_OS_DEPENDENCY_BSTRLIB_FILES}
        ${FORGE_OS_DEPENDENCY_MINIZIP_FILES}
        ${FORGE_OS_DEPENDENCY_RMEM_FILES}
        ${FORGE_OS_DEPENDENCY_BASISU_FILES}
        ${FORGE_OS_DEPENDENCY_IMGUI_FILES}
        ${FORGE_OS_DEPENDENCY_LUA_FILES}
        ${FORGE_OS_DEPENDENCY_CPU_FEATURES_FILES}
        ${FORGE_OS_DEPENDENCY_TASK_SCHEDULER_FILES}
)

set(FORGE_OS_FILESYSTEM_FILES
        "${FORGE_COMMON_DIR}/Utilities/FileSystem/FileSystem.cpp"
        "${FORGE_COMMON_DIR}/Utilities/FileSystem/SystemRun.cpp"
        "${FORGE_COMMON_DIR}/Utilities/FileSystem/UnixFileSystem.cpp"
        "${FORGE_COMMON_DIR}/Utilities/FileSystem/ZipFileSystem.c"
)

set(FORGE_OS_PROFILER_FILES
        "${FORGE_COMMON_DIR}/Application/Profiler/GpuProfiler.cpp"
        "${FORGE_COMMON_DIR}/Application/Profiler/ProfilerBase.cpp"
)

set(FORGE_OS_FONTS_FILES
        "${FORGE_COMMON_DIR}/Application/Fonts/FontSystem.cpp"
        "${FORGE_COMMON_DIR}/Application/Fonts/stbtt.cpp"   
)

set(FORGE_OS_UI_FILES
        "${FORGE_COMMON_DIR}/Application/UI/UI.cpp"
)

set(FORGE_OS_SCRIPTING_FILES
        "${FORGE_COMMON_DIR}/Game/Scripting/LuaManager.cpp"
        "${FORGE_COMMON_DIR}/Game/Scripting/LuaManagerImpl.cpp"
        "${FORGE_COMMON_DIR}/Game/Scripting/LuaSystem.cpp"
)

set(FORGE_OS_WINDOWSYSTEM_FILES
        "${FORGE_COMMON_DIR}/OS/WindowSystem/WindowSystem.cpp"
)

set(FORGE_OS_WINDOWS_FILES
        "${FORGE_COMMON_DIR}/OS/Windows/WindowsBase.cpp"
        "${FORGE_COMMON_DIR}/OS/Windows/WindowsFileSystem.cpp"
        "${FORGE_COMMON_DIR}/OS/Windows/WindowsLog.c"
        "${FORGE_COMMON_DIR}/OS/Windows/WindowsStackTraceDump.cpp"
        "${FORGE_COMMON_DIR}/OS/Windows/WindowsThread.c"
        "${FORGE_COMMON_DIR}/OS/Windows/WindowsTime.c"
        "${FORGE_COMMON_DIR}/OS/Windows/WindowsWindow.cpp"
)

set(FORGE_OS_DARWIN_FILES
        "${FORGE_COMMON_DIR}/OS/Darwin/CocoaFileSystem.mm"
        "${FORGE_COMMON_DIR}/OS/Darwin/DarwinLog.c"
        "${FORGE_COMMON_DIR}/OS/Darwin/DarwinThread.c"
        "${FORGE_COMMON_DIR}/Utilities/FileSystem/UnixFileSystem.cpp"
)

set(FORGE_OS_APPLE_FILES
        "${FORGE_COMMON_DIR}/OS/Darwin/macOSAppDelegate.h"
        "${FORGE_COMMON_DIR}/OS/Darwin/macOSAppDelegate.m"
        "${FORGE_COMMON_DIR}/OS/Darwin/macOSBase.mm"
        "${FORGE_COMMON_DIR}/OS/Darwin/macOSWindow.mm"
)

set(FORGE_OX_LINUX_FILES
        "${FORGE_COMMON_DIR}/OS/Linux/LinuxTime.c"
        "${FORGE_COMMON_DIR}/OS/Linux/LinuxLog.c"
        "${FORGE_COMMON_DIR}/OS/Linux/LinuxBase.cpp"
        "${FORGE_COMMON_DIR}/OS/Linux/LinuxFileSystem.cpp"
        "${FORGE_COMMON_DIR}/OS/Linux/LinuxThread.c"
        "${FORGE_COMMON_DIR}/OS/Linux/LinuxWindow.cpp"
)

set(FORGE_OS_FILES
        ${FORGE_OS_ANIMATION_FILES}
        ${FORGE_MIDDLEWARE_PANINIPROJECTION_FILES}
        ${FORGE_OS_CAMERA_FILES}
        ${FORGE_OS_CORE_FILES}
        ${FORGE_OS_INPUT_FILES}
        ${FORGE_OS_LOGGING_FILES}
        ${FORGE_OS_MATH_FILES}
        ${FORGE_OS_MEMORYTRACKING_FILES}
        ${FORGE_OS_DEPENDENCIES_FILES}
        ${FORGE_OS_FILESYSTEM_FILES}
        ${FORGE_OS_PROFILER_FILES}
        ${FORGE_OS_FONTS_FILES}
        ${FORGE_OS_UI_FILES}
        ${FORGE_OS_SCRIPTING_FILES}
        ${FORGE_OS_WINDOWSYSTEM_FILES}
)

set(${FORGE_OS_LIBRARIES} OZZAnimationBase)

if (${FORGE_OS_WINDOWS} MATCHES ON)
    set(FORGE_OS_FILES ${FORGE_OS_FILES} ${FORGE_OS_WINDOWS_FILES})
elseif (${FORGE_OS_APPLE} MATCHES ON)
    set(FORGE_OS_FILES ${FORGE_OS_FILES} ${FORGE_OS_DARWIN_FILES} ${FORGE_OS_APPLE_FILES})
elseif (${FORGE_OS_LINUX} MATCHES ON)
    find_package(X11 REQUIRED COMPONENTS Xrandr)
    set(FORGE_OS_INCLUDE_DIRS ${FORGE_OS_INCLUDE_DIRS} ${X11_INCLUDE_DIR})
    set(FORGE_OS_LIBRARIES ${FORGE_OS_LIBRARIES} ${X11_LIBRARIES} ${X11_Xrandr_LIB})

    find_package(GTK3 3.0 REQUIRED gtk)
    set(FORGE_OS_INCLUDE_DIRS ${FORGE_OS_INCLUDE_DIRS} ${GTK3_INCLUDE_DIRS})
    set(FORGE_OS_LIBRARIES ${FORGE_OS_LIBRARIES} ${GTK3_LIBRARIES})

    set(FORGE_OS_FILES ${FORGE_OS_FILES} ${FORGE_OX_LINUX_FILES})
endif ()

#
# dependencies.
#
set(THREADS_PREFER_PTHREAD_FLAG ON)
find_package(Threads REQUIRED)

add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/Common_3/Application/ThirdParty/OpenSource/gainput)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/Common_3/Utilities/ThirdParty/OpenSource/EASTL)

#
# The library
#
add_library(TheForgeOS STATIC ${FORGE_OS_FILES})

target_include_directories(TheForgeOS SYSTEM PRIVATE ${FORGE_OS_INCLUDE_DIRS})
target_link_libraries(TheForgeOS 
        PRIVATE ${FORGE_OS_LIBRARIES}
        PUBLIC EASTL gainput Threads::Threads
)