#!/bin/bash
set -e
dpkg --add-architecture arm64
mv ./ubuntu.sources /etc/apt/sources.list.d/ubuntu.sources
apt-get update
apt-get install -y build-essential crossbuild-essential-arm64 libstdc++-11-dev-arm64-cross libfontconfig-dev:arm64 libgl1-mesa-dev:arm64 libglu1-mesa-dev:arm64 freeglut3-dev:arm64

echo /usr/aarch64-linux-gnu/include
ls -l /usr/aarch64-linux-gnu/include/

echo /usr/aarch64-linux-gnu/include/c++/
ls -l /usr/aarch64-linux-gnu/include/c++/

echo /usr/include/aarch64-linux-gnu/
ls -l /usr/include/aarch64-linux-gnu/

echo /usr/include
ls -l /usr/include

echo CMake Version
cmake --version
