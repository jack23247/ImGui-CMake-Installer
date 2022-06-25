#!/usr/bin/bash
mkdir -p build && cd build
cmake .. -DIMGUI_WITH_IMPL=ON -DIMGUI_IMPL_SDL_OPENGL2=ON
cmake --build . --config Release --target install
