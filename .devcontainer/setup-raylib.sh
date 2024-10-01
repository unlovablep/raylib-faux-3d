#!/bin/bash
sudo apt install libasound2-dev libx11-dev libxrandr-dev libxi-dev libgl1-mesa-dev libglu1-mesa-dev libxcursor-dev libxinerama-dev libwayland-dev libxkbcommon-dev
pushd /tmp
    git clone https://github.com/raysan5/raylib
    pushd raylib/src
        sudo make PLATFORM=PLATFORM_DESKTOP RAYLIB_LIBTYPE=SHARED
        sudo make install RAYLIB_LIBTYPE=SHARED
    popd
popd
sudo rm -rf /tmp/raylib
echo "Installed raylib"