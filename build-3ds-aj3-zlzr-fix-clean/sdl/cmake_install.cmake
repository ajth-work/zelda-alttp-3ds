# Install script for directory: /c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/c/Users/Andrew-John/zelda-alttp-3ds/build-3ds-aj3-zlzr-fix-clean/prefix")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/opt/devkitpro/devkitARM/bin/arm-none-eabi-objdump.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/c/Users/Andrew-John/zelda-alttp-3ds/build-3ds-aj3-zlzr-fix-clean/sdl/libSDL2main.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/c/Users/Andrew-John/zelda-alttp-3ds/build-3ds-aj3-zlzr-fix-clean/sdl/libSDL2.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets.cmake"
         "/c/Users/Andrew-John/zelda-alttp-3ds/build-3ds-aj3-zlzr-fix-clean/sdl/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2mainTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/c/Users/Andrew-John/zelda-alttp-3ds/build-3ds-aj3-zlzr-fix-clean/sdl/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2mainTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/c/Users/Andrew-John/zelda-alttp-3ds/build-3ds-aj3-zlzr-fix-clean/sdl/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2mainTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2staticTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2staticTargets.cmake"
         "/c/Users/Andrew-John/zelda-alttp-3ds/build-3ds-aj3-zlzr-fix-clean/sdl/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2staticTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2staticTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2staticTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/c/Users/Andrew-John/zelda-alttp-3ds/build-3ds-aj3-zlzr-fix-clean/sdl/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2staticTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/c/Users/Andrew-John/zelda-alttp-3ds/build-3ds-aj3-zlzr-fix-clean/sdl/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2staticTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES
    "/c/Users/Andrew-John/zelda-alttp-3ds/build-3ds-aj3-zlzr-fix-clean/sdl/SDL2Config.cmake"
    "/c/Users/Andrew-John/zelda-alttp-3ds/build-3ds-aj3-zlzr-fix-clean/sdl/SDL2ConfigVersion.cmake"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/cmake/sdlfind.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL2" TYPE FILE FILES
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_assert.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_atomic.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_audio.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_bits.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_blendmode.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_clipboard.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_copying.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_cpuinfo.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_egl.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_endian.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_error.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_events.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_filesystem.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_gamecontroller.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_gesture.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_guid.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_haptic.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_hidapi.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_hints.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_joystick.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_keyboard.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_keycode.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_loadso.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_locale.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_log.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_main.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_messagebox.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_metal.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_misc.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_mouse.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_mutex.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_name.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_opengl.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_opengl_glext.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_opengles.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_opengles2.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_opengles2_gl2.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_opengles2_gl2ext.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_opengles2_gl2platform.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_opengles2_khrplatform.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_pixels.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_platform.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_power.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_quit.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_rect.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_render.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_rwops.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_scancode.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_sensor.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_shape.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_stdinc.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_surface.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_system.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_syswm.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_test.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_test_assert.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_test_common.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_test_compare.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_test_crc32.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_test_font.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_test_fuzzer.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_test_harness.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_test_images.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_test_log.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_test_md5.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_test_memory.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_test_random.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_thread.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_timer.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_touch.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_types.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_version.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_video.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/SDL_vulkan.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/begin_code.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/include/close_code.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/build-3ds-aj3-zlzr-fix-clean/sdl/include/SDL2/SDL_revision.h"
    "/c/Users/Andrew-John/zelda-alttp-3ds/build-3ds-aj3-zlzr-fix-clean/sdl/include-config-release/SDL2/SDL_config.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/SDL2" TYPE FILE FILES "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/LICENSE.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/c/Users/Andrew-John/zelda-alttp-3ds/build-3ds-aj3-zlzr-fix-clean/sdl/sdl2.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM FILES "/c/Users/Andrew-John/zelda-alttp-3ds/build-3ds-aj3-zlzr-fix-clean/sdl/sdl2-config")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aclocal" TYPE FILE FILES "/c/Users/Andrew-John/zelda-alttp-3ds/third_party/SDL2/sdl2.m4")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/c/Users/Andrew-John/zelda-alttp-3ds/build-3ds-aj3-zlzr-fix-clean/sdl/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
if(CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_COMPONENT MATCHES "^[a-zA-Z0-9_.+-]+$")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
  else()
    string(MD5 CMAKE_INST_COMP_HASH "${CMAKE_INSTALL_COMPONENT}")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INST_COMP_HASH}.txt")
    unset(CMAKE_INST_COMP_HASH)
  endif()
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/c/Users/Andrew-John/zelda-alttp-3ds/build-3ds-aj3-zlzr-fix-clean/sdl/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
