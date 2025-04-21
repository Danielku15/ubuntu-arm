#!/bin/bash
set -e
apt-get update
apt-get install -y aptitude
apt-get install -y build-essential
dpkg --add-architecture arm64
mv ./ubuntu.sources /etc/apt/sources.list.d/ubuntu.sources
apt-get update
aptitude install -y crossbuild-essential-arm64 libstdc++-11-dev-arm64-cross
aptitude install -y libfontconfig-dev:arm64 libgl1-mesa-dev:arm64 libglu1-mesa-dev:arm64 freeglut3-dev:arm64

ls -l /usr/aarch64-linux-gnu/include/
ls -l /usr/aarch64-linux-gnu/include/c++/
ls -l /usr/include/aarch64-linux-gnu/
ls -l /usr/include
cmake --version
