cmake_minimum_required(VERSION 3.6)

project(gainput)

# TODO(jochumdev): No more needed when merged with the-forge
set(GAINPUT_DIR "${FORGE_COMMON_DIR}/Application/ThirdParty/OpenSource/gainput")
# set(GAINPUT_DIR ${CMAKE_CURRENT_SOURCE_DIR})

set(GAINPUT_GAINPUT_FILES
    "${GAINPUT_DIR}/lib/source/gainput/gainput.cpp"
    "${GAINPUT_DIR}/lib/source/gainput/GainputAllocator.cpp"
    "${GAINPUT_DIR}/lib/source/gainput/GainputInputDeltaState.cpp"
    "${GAINPUT_DIR}/lib/source/gainput/GainputInputDevice.cpp"
    "${GAINPUT_DIR}/lib/source/gainput/GainputInputManager.cpp"
    "${GAINPUT_DIR}/lib/source/gainput/GainputInputMap.cpp"
    "${GAINPUT_DIR}/lib/source/gainput/GainputInputState.cpp"
    "${GAINPUT_DIR}/lib/source/gainput/GainputMapFilters.cpp"
)

set(GAINPUT_BUILTIN_FILES
    "${GAINPUT_DIR}/lib/source/gainput/builtin/GainputInputDeviceBuiltIn.cpp"
)

set(GAINPUT_DEV_FILES
    "${GAINPUT_DIR}/lib/source/gainput/dev/GainputDev.cpp"
    "${GAINPUT_DIR}/lib/source/gainput/dev/GainputMemoryStream.cpp"
    "${GAINPUT_DIR}/lib/source/gainput/dev/GainputNetAddress.cpp"
    "${GAINPUT_DIR}/lib/source/gainput/dev/GainputNetConnection.cpp"
    "${GAINPUT_DIR}/lib/source/gainput/dev/GainputNetListener.cpp"
)

set(GAINPUT_GESTURES_FILES
    "${GAINPUT_DIR}/lib/source/gainput/gestures/GainputButtonStickGesture.cpp"
    "${GAINPUT_DIR}/lib/source/gainput/gestures/GainputDoubleClickGesture.cpp"
    "${GAINPUT_DIR}/lib/source/gainput/gestures/GainputHoldGesture.cpp"
    "${GAINPUT_DIR}/lib/source/gainput/gestures/GainputPinchGesture.cpp"
    "${GAINPUT_DIR}/lib/source/gainput/gestures/GainputRotateGesture.cpp"
    "${GAINPUT_DIR}/lib/source/gainput/gestures/GainputSimultaneouslyDownGesture.cpp"
    "${GAINPUT_DIR}/lib/source/gainput/gestures/GainputTapGesture.cpp"
)

set(GAINPUT_KEYBOARD_FILES
    "${GAINPUT_DIR}/lib/source/gainput/keyboard/GainputInputDeviceKeyboard.cpp"
    "${GAINPUT_DIR}/lib/source/gainput/keyboard/GainputInputDeviceKeyboardMac.cpp"
)

set(GAINPUT_MOUSE_FILES
    "${GAINPUT_DIR}/lib/source/gainput/mouse/GainputInputDeviceMouse.cpp"
)

set(GAINPUT_PAD_FILES
    "${GAINPUT_DIR}/lib/source/gainput/pad/GainputInputDevicePad.cpp"
    "${GAINPUT_DIR}/lib/source/gainput/pad/GainputInputDevicePadMac.cpp"
)

set(GAINPUT_RECORDER_FILES
    "${GAINPUT_DIR}/lib/source/gainput/recorder/GainputInputPlayer.cpp"
    "${GAINPUT_DIR}/lib/source/gainput/recorder/GainputInputRecorder.cpp"
    "${GAINPUT_DIR}/lib/source/gainput/recorder/GainputInputRecording.cpp"
)

set(GAINPUT_TOUCH_FILES
    "${GAINPUT_DIR}/lib/source/gainput/touch/GainputInputDeviceTouch.cpp"
)

set(GAINPUT_HID_FILES
    "${GAINPUT_DIR}/lib/source/gainput/hid/hidparsers/HIDParserPS5Controller.cpp"
    "${GAINPUT_DIR}/lib/source/gainput/hid/hidparsers/HIDParserPS5Controller.h"
    "${GAINPUT_DIR}/lib/source/gainput/hid/hidparsers/HIDParserPS4Controller.cpp"
    "${GAINPUT_DIR}/lib/source/gainput/hid/hidparsers/HIDParserPS4Controller.h"

    "${GAINPUT_DIR}/lib/source/gainput/hid/GainputHID.cpp"
    "${GAINPUT_DIR}/lib/source/gainput/hid/GainputHID.h"
    "${GAINPUT_DIR}/lib/source/gainput/hid/GainputHIDTypes.h"
    "${GAINPUT_DIR}/lib/source/gainput/hid/GainputHIDWhitelist.cpp"
    "${GAINPUT_DIR}/lib/source/gainput/hid/GainputHIDWhitelist.h"
)

set(GAINPUT_HIDAPI_FILES
    "${GAINPUT_DIR}/lib/source/hidapi/hidapi.h"
    "${GAINPUT_DIR}/lib/source/hidapi/linux/hid.c"
)

set(GAINPUT_FILES
    ${GAINPUT_GAINPUT_FILES}
    ${GAINPUT_BUILTIN_FILES}
    ${GAINPUT_DEV_FILES}
    ${GAINPUT_GESTURES_FILES}
    ${GAINPUT_KEYBOARD_FILES}
    ${GAINPUT_MOUSE_FILES}
    ${GAINPUT_PAD_FILES}
    ${GAINPUT_RECORDER_FILES}
    ${GAINPUT_TOUCH_FILES}
    ${GAINPUT_HID_FILES}
    ${GAINPUT_HIDAPI_FILES}
)

# <VirtualDirectory Name="include">
# <VirtualDirectory Name="lib">
#   <VirtualDirectory Name="include">
#     <VirtualDirectory Name="gainput">
#       "${GAINPUT_DIR}/lib/include/gainput/GainputAllocator.h"
#       "${GAINPUT_DIR}/lib/include/gainput/GainputContainers.h"
#       "${GAINPUT_DIR}/lib/include/gainput/GainputDebugRenderer.h"
#       "${GAINPUT_DIR}/lib/include/gainput/GainputHelpers.h"
#       "${GAINPUT_DIR}/lib/include/gainput/GainputInputDeltaState.h"
#       "${GAINPUT_DIR}/lib/include/gainput/GainputInputDevice.h"
#       "${GAINPUT_DIR}/lib/include/gainput/GainputInputDeviceBuiltIn.h"
#       "${GAINPUT_DIR}/lib/include/gainput/GainputInputDeviceKeyboard.h"
#       "${GAINPUT_DIR}/lib/include/gainput/GainputInputDeviceMouse.h"
#       "${GAINPUT_DIR}/lib/include/gainput/GainputInputDevicePad.h"
#       "${GAINPUT_DIR}/lib/include/gainput/GainputInputDeviceTouch.h"
#       "${GAINPUT_DIR}/lib/include/gainput/GainputInputListener.h"
#       "${GAINPUT_DIR}/lib/include/gainput/GainputInputManager.h"
#       "${GAINPUT_DIR}/lib/include/gainput/GainputInputMap.h"
#       "${GAINPUT_DIR}/lib/include/gainput/GainputInputState.h"
#       "${GAINPUT_DIR}/lib/include/gainput/GainputIos.h"
#       "${GAINPUT_DIR}/lib/include/gainput/GainputLog.h"
#       "${GAINPUT_DIR}/lib/include/gainput/GainputMapFilters.h"
#       "${GAINPUT_DIR}/lib/include/gainput/gainput.h"
#       <VirtualDirectory Name="gestures">
#         "${GAINPUT_DIR}/lib/include/gainput/gestures/GainputButtonStickGesture.h"
#         "${GAINPUT_DIR}/lib/include/gainput/gestures/GainputDoubleClickGesture.h"
#         "${GAINPUT_DIR}/lib/include/gainput/gestures/GainputGestures.h"
#         "${GAINPUT_DIR}/lib/include/gainput/gestures/GainputHoldGesture.h"
#         "${GAINPUT_DIR}/lib/include/gainput/gestures/GainputPinchGesture.h"
#         "${GAINPUT_DIR}/lib/include/gainput/gestures/GainputRotateGesture.h"
#         "${GAINPUT_DIR}/lib/include/gainput/gestures/GainputSimultaneouslyDownGesture.h"
#         "${GAINPUT_DIR}/lib/include/gainput/gestures/GainputTapGesture.h"
#       </VirtualDirectory>
#       <VirtualDirectory Name="recorder">
#         "${GAINPUT_DIR}/lib/include/gainput/recorder/GainputInputPlayer.h"
#         "${GAINPUT_DIR}/lib/include/gainput/recorder/GainputInputRecorder.h"
#         "${GAINPUT_DIR}/lib/include/gainput/recorder/GainputInputRecording.h"
#       </VirtualDirectory>
#     </VirtualDirectory>
#   </VirtualDirectory>
#   <VirtualDirectory Name="source">
#     <VirtualDirectory Name="gainput">
#       "${GAINPUT_DIR}/lib/source/gainput/GainputHelpersEvdev.h"
#       "${GAINPUT_DIR}/lib/source/gainput/GainputWindows.h"
#       <VirtualDirectory Name="builtin">
#         "${GAINPUT_DIR}/lib/source/gainput/builtin/GainputInputDeviceBuiltInAndroid.h"
#         "${GAINPUT_DIR}/lib/source/gainput/builtin/GainputInputDeviceBuiltInImpl.h"
#         "${GAINPUT_DIR}/lib/source/gainput/builtin/GainputInputDeviceBuiltInIos.h"
#         "${GAINPUT_DIR}/lib/source/gainput/builtin/GainputInputDeviceBuiltInNull.h"
#       </VirtualDirectory>
#       <VirtualDirectory Name="dev">
#         "${GAINPUT_DIR}/lib/source/gainput/dev/GainputDev.h"
#         "${GAINPUT_DIR}/lib/source/gainput/dev/GainputDevProtocol.h"
#         "${GAINPUT_DIR}/lib/source/gainput/dev/GainputMemoryStream.h"
#         "${GAINPUT_DIR}/lib/source/gainput/dev/GainputNetAddress.h"
#         "${GAINPUT_DIR}/lib/source/gainput/dev/GainputNetConnection.h"
#         "${GAINPUT_DIR}/lib/source/gainput/dev/GainputNetListener.h"
#         "${GAINPUT_DIR}/lib/source/gainput/dev/GainputStream.h"
#       </VirtualDirectory>
#       <VirtualDirectory Name="keyboard">
#         "${GAINPUT_DIR}/lib/source/gainput/keyboard/GainputInputDeviceKeyboardAndroid.h"
#         "${GAINPUT_DIR}/lib/source/gainput/keyboard/GainputInputDeviceKeyboardEvdev.h"
#         "${GAINPUT_DIR}/lib/source/gainput/keyboard/GainputInputDeviceKeyboardImpl.h"
#         "${GAINPUT_DIR}/lib/source/gainput/keyboard/GainputInputDeviceKeyboardLinux.h"
#         "${GAINPUT_DIR}/lib/source/gainput/keyboard/GainputInputDeviceKeyboardMac.h"
#         "${GAINPUT_DIR}/lib/source/gainput/keyboard/GainputInputDeviceKeyboardNull.h"
#         "${GAINPUT_DIR}/lib/source/gainput/keyboard/GainputInputDeviceKeyboardWin.h"
#         "${GAINPUT_DIR}/lib/source/gainput/keyboard/GainputInputDeviceKeyboardWinRaw.h"
#         "${GAINPUT_DIR}/lib/source/gainput/keyboard/GainputKeyboardKeyNames.h"
#       </VirtualDirectory>
#       <VirtualDirectory Name="mouse">
#         "${GAINPUT_DIR}/lib/source/gainput/mouse/GainputInputDeviceMouseLinuxRaw.h"
#         "${GAINPUT_DIR}/lib/source/gainput/mouse/GainputInputDeviceMouseEvdev.h"
#         "${GAINPUT_DIR}/lib/source/gainput/mouse/GainputInputDeviceMouseImpl.h"
#         "${GAINPUT_DIR}/lib/source/gainput/mouse/GainputInputDeviceMouseLinux.h"
#         "${GAINPUT_DIR}/lib/source/gainput/mouse/GainputInputDeviceMouseMac.h"
#         "${GAINPUT_DIR}/lib/source/gainput/mouse/GainputInputDeviceMouseMacRaw.h"
#         "${GAINPUT_DIR}/lib/source/gainput/mouse/GainputInputDeviceMouseNull.h"
#         "${GAINPUT_DIR}/lib/source/gainput/mouse/GainputInputDeviceMouseWin.h"
#         "${GAINPUT_DIR}/lib/source/gainput/mouse/GainputInputDeviceMouseWinRaw.h"
#         "${GAINPUT_DIR}/lib/source/gainput/mouse/GainputMouseInfo.h"
#       </VirtualDirectory>
#       <VirtualDirectory Name="pad">
#         "${GAINPUT_DIR}/lib/source/gainput/pad/GainputInputDevicePadAndroid.h"
#         "${GAINPUT_DIR}/lib/source/gainput/pad/GainputInputDevicePadImpl.h"
#         "${GAINPUT_DIR}/lib/source/gainput/pad/GainputInputDevicePadIos.h"
#         "${GAINPUT_DIR}/lib/source/gainput/pad/GainputInputDevicePadLinux.h"
#         "${GAINPUT_DIR}/lib/source/gainput/pad/GainputInputDevicePadMac.h"
#         "${GAINPUT_DIR}/lib/source/gainput/pad/GainputInputDevicePadNull.h"
#         "${GAINPUT_DIR}/lib/source/gainput/pad/GainputInputDevicePadWin.h"
#       </VirtualDirectory>
#       <VirtualDirectory Name="touch">
#         "${GAINPUT_DIR}/lib/source/gainput/touch/GainputInputDeviceTouchAndroid.h"
#         "${GAINPUT_DIR}/lib/source/gainput/touch/GainputInputDeviceTouchImpl.h"
#         "${GAINPUT_DIR}/lib/source/gainput/touch/GainputInputDeviceTouchIos.h"
#         "${GAINPUT_DIR}/lib/source/gainput/touch/GainputInputDeviceTouchNull.h"
#         "${GAINPUT_DIR}/lib/source/gainput/touch/GainputTouchInfo.h"
#       </VirtualDirectory>
#     </VirtualDirectory>
#   </VirtualDirectory>
# </VirtualDirectory>
# </VirtualDirectory>

# HACK: Fixes a relative TheForge header import in gainput.
set(GAINPUT_INCLUDE_DIRS "${GAINPUT_DIR}/lib/source")

add_library(${PROJECT_NAME} STATIC ${GAINPUT_FILES})

if (${CMAKE_SYSTEM_NAME} MATCHES "Linux")
    find_package(udev REQUIRED)

    set(GAINPUT_INCLUDE_DIRS ${GAINPUT_INCLUDE_DIRS} ${UDEV_INCLUDE_DIR})
    set(GAINPUT_LIBRARIES ${GAINPUT_LIBRARIES} ${UDEV_LIBRARY})
endif ()

target_include_directories(${PROJECT_NAME} SYSTEM PRIVATE ${GAINPUT_INCLUDE_DIRS})
target_link_libraries(${PROJECT_NAME} ${GAINPUT_LIBRARIES})