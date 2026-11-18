# Install script for directory: /src/third_party/SDL2

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/src/build-3ds-aj1-success/prefix")
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
  set(CMAKE_OBJDUMP "/opt/devkitpro/devkitARM/bin/arm-none-eabi-objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/src/build-3ds-aj1-success/sdl/libSDL2main.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/src/build-3ds-aj1-success/sdl/libSDL2.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets.cmake"
         "/src/build-3ds-aj1-success/sdl/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2mainTargets.cmake")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/src/build-3ds-aj1-success/sdl/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2mainTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/src/build-3ds-aj1-success/sdl/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2mainTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2staticTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2staticTargets.cmake"
         "/src/build-3ds-aj1-success/sdl/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2staticTargets.cmake")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/src/build-3ds-aj1-success/sdl/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2staticTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/src/build-3ds-aj1-success/sdl/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2staticTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES
    "/src/build-3ds-aj1-success/sdl/SDL2Config.cmake"
    "/src/build-3ds-aj1-success/sdl/SDL2ConfigVersion.cmake"
    "/src/third_party/SDL2/cmake/sdlfind.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL2" TYPE FILE FILES
    "/src/third_party/SDL2/include/SDL.h"
    "/src/third_party/SDL2/include/SDL_assert.h"
    "/src/third_party/SDL2/include/SDL_atomic.h"
    "/src/third_party/SDL2/include/SDL_audio.h"
    "/src/third_party/SDL2/include/SDL_bits.h"
    "/src/third_party/SDL2/include/SDL_blendmode.h"
    "/src/third_party/SDL2/include/SDL_clipboard.h"
    "/src/third_party/SDL2/include/SDL_copying.h"
    "/src/third_party/SDL2/include/SDL_cpuinfo.h"
    "/src/third_party/SDL2/include/SDL_egl.h"
    "/src/third_party/SDL2/include/SDL_endian.h"
    "/src/third_party/SDL2/include/SDL_error.h"
    "/src/third_party/SDL2/include/SDL_events.h"
    "/src/third_party/SDL2/include/SDL_filesystem.h"
    "/src/third_party/SDL2/include/SDL_gamecontroller.h"
    "/src/third_party/SDL2/include/SDL_gesture.h"
    "/src/third_party/SDL2/include/SDL_guid.h"
    "/src/third_party/SDL2/include/SDL_haptic.h"
    "/src/third_party/SDL2/include/SDL_hidapi.h"
    "/src/third_party/SDL2/include/SDL_hints.h"
    "/src/third_party/SDL2/include/SDL_joystick.h"
    "/src/third_party/SDL2/include/SDL_keyboard.h"
    "/src/third_party/SDL2/include/SDL_keycode.h"
    "/src/third_party/SDL2/include/SDL_loadso.h"
    "/src/third_party/SDL2/include/SDL_locale.h"
    "/src/third_party/SDL2/include/SDL_log.h"
    "/src/third_party/SDL2/include/SDL_main.h"
    "/src/third_party/SDL2/include/SDL_messagebox.h"
    "/src/third_party/SDL2/include/SDL_metal.h"
    "/src/third_party/SDL2/include/SDL_misc.h"
    "/src/third_party/SDL2/include/SDL_mouse.h"
    "/src/third_party/SDL2/include/SDL_mutex.h"
    "/src/third_party/SDL2/include/SDL_name.h"
    "/src/third_party/SDL2/include/SDL_opengl.h"
    "/src/third_party/SDL2/include/SDL_opengl_glext.h"
    "/src/third_party/SDL2/include/SDL_opengles.h"
    "/src/third_party/SDL2/include/SDL_opengles2.h"
    "/src/third_party/SDL2/include/SDL_opengles2_gl2.h"
    "/src/third_party/SDL2/include/SDL_opengles2_gl2ext.h"
    "/src/third_party/SDL2/include/SDL_opengles2_gl2platform.h"
    "/src/third_party/SDL2/include/SDL_opengles2_khrplatform.h"
    "/src/third_party/SDL2/include/SDL_pixels.h"
    "/src/third_party/SDL2/include/SDL_platform.h"
    "/src/third_party/SDL2/include/SDL_power.h"
    "/src/third_party/SDL2/include/SDL_quit.h"
    "/src/third_party/SDL2/include/SDL_rect.h"
    "/src/third_party/SDL2/include/SDL_render.h"
    "/src/third_party/SDL2/include/SDL_rwops.h"
    "/src/third_party/SDL2/include/SDL_scancode.h"
    "/src/third_party/SDL2/include/SDL_sensor.h"
    "/src/third_party/SDL2/include/SDL_shape.h"
    "/src/third_party/SDL2/include/SDL_stdinc.h"
    "/src/third_party/SDL2/include/SDL_surface.h"
    "/src/third_party/SDL2/include/SDL_system.h"
    "/src/third_party/SDL2/include/SDL_syswm.h"
    "/src/third_party/SDL2/include/SDL_test.h"
    "/src/third_party/SDL2/include/SDL_test_assert.h"
    "/src/third_party/SDL2/include/SDL_test_common.h"
    "/src/third_party/SDL2/include/SDL_test_compare.h"
    "/src/third_party/SDL2/include/SDL_test_crc32.h"
    "/src/third_party/SDL2/include/SDL_test_font.h"
    "/src/third_party/SDL2/include/SDL_test_fuzzer.h"
    "/src/third_party/SDL2/include/SDL_test_harness.h"
    "/src/third_party/SDL2/include/SDL_test_images.h"
    "/src/third_party/SDL2/include/SDL_test_log.h"
    "/src/third_party/SDL2/include/SDL_test_md5.h"
    "/src/third_party/SDL2/include/SDL_test_memory.h"
    "/src/third_party/SDL2/include/SDL_test_random.h"
    "/src/third_party/SDL2/include/SDL_thread.h"
    "/src/third_party/SDL2/include/SDL_timer.h"
    "/src/third_party/SDL2/include/SDL_touch.h"
    "/src/third_party/SDL2/include/SDL_types.h"
    "/src/third_party/SDL2/include/SDL_version.h"
    "/src/third_party/SDL2/include/SDL_video.h"
    "/src/third_party/SDL2/include/SDL_vulkan.h"
    "/src/third_party/SDL2/include/begin_code.h"
    "/src/third_party/SDL2/include/close_code.h"
    "/src/build-3ds-aj1-success/sdl/include/SDL2/SDL_revision.h"
    "/src/build-3ds-aj1-success/sdl/include-config-release/SDL2/SDL_config.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/SDL2" TYPE FILE FILES "/src/third_party/SDL2/LICENSE.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/src/build-3ds-aj1-success/sdl/sdl2.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM FILES "/src/build-3ds-aj1-success/sdl/sdl2-config")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aclocal" TYPE FILE FILES "/src/third_party/SDL2/sdl2.m4")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/src/build-3ds-aj1-success/sdl/install_local_manifest.txt"
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
  file(WRITE "/src/build-3ds-aj1-success/sdl/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
