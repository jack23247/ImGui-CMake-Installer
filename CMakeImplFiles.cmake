#
# ImGui Implementation Files
#
cmake_minimum_required(VERSION 3.6.0)

set(BACKENDS_DIR ${CMAKE_CURRENT_SOURCE_DIR}/imgui/backends)

function(Init_Impl_Files HEADERS_CXX_IMPL_FILES SOURCES_CXX_IMPL_FILES)
  if (IMGUI_IMPL_SDL_OPENGL2)
    message(STATUS "[INFO] Including SDL/OpenGL2 implementation files.")
    set(HEADERS_CXX_IMPL_FILES
      ${BACKENDS_DIR}/imgui_impl_opengl2.h
      ${BACKENDS_DIR}/imgui_impl_sdl.h
      PARENT_SCOPE
    )
    set(SOURCES_CXX_IMPL_FILES
      ${BACKENDS_DIR}/imgui_impl_opengl2.cpp
      ${BACKENDS_DIR}/imgui_impl_sdl.cpp
      PARENT_SCOPE
    )
    find_package(SDL2 REQUIRED)
    include_directories(${SDL2_INCLUDE_DIRS})
  else()
    message(WARNING "[WARNING] 'IMGUI_WITH_IMPL' option is ON but no additional files were added. See file 'CMakeOptions.cmake'.")
  endif()
endfunction()

