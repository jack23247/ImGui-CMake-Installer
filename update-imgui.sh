#!/usr/bin/bash
git submodule update --init
cd imgui && git checkout master && cd ..
