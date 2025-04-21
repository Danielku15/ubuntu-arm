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

echo /usr/aarch64-linux-gnu/include/c++/11
ls -l /usr/aarch64-linux-gnu/include/c++/11

echo /usr/aarch64-linux-gnu/include/c++/13
ls -l /usr/aarch64-linux-gnu/include/c++/13

echo /usr/include/aarch64-linux-gnu/
ls -l /usr/include/aarch64-linux-gnu/

echo /usr/include
ls -l /usr/include

echo /usr/include/fontconfig
ls -l /usr/include/fontconfig

echo CMake Version
cmake --version

echo clang++ version
clang++ --version

echo Test compile
'clang++' -MD -MF ./test.o.d -DALPHASKIA_FONTMGR_LINUX -DNDEBUG -DSK_CODEC_DECODES_BMP -DSK_CODEC_DECODES_WBMP -DSK_R32_SHIFT=16 -DSK_ENABLE_PRECOMPILE -DSK_GANESH -DSK_DISABLE_TRACING -DSK_USE_PERFETTO -DSK_GAMMA_APPLY_TO_A8 -DSK_USE_VMA -DSK_ENABLE_AVX512_OPTS -DSKIA_IMPLEMENTATION=1 -DSK_FONTMGR_ANDROID_AVAILABLE -DSK_TYPEFACE_FACTORY_FREETYPE -DSK_GL -DSK_VULKAN -DSK_CODEC_ENCODES_PNG -DSK_CODEC_ENCODES_PNG_WITH_LIBPNG -DSK_CODEC_DECODES_ICO -DSK_CODEC_DECODES_PNG -DSK_CODEC_DECODES_PNG_WITH_LIBPNG -DSK_HAS_WUFFS_LIBRARY -DSK_CODEC_DECODES_GIF -DSK_XML -DSK_FREETYPE_MINIMUM_RUNTIME_VERSION_IS_BUILD_VERSION=1 -DFT_CONFIG_MODULES_H=\<freetype-android/freetype/config/ftmodule.h\> -DFT_CONFIG_OPTIONS_H=\<freetype-android/freetype/config/ftoption.h\> -DFT_CONFIG_OPTION_USE_ZLIB -DFT_CONFIG_OPTION_SVG -I../../externals/freetype/include -I../.. -Wno-attributes -ffp-contract=off -fPIC -fvisibility=hidden -fstrict-aliasing -O3 -fdata-sections -ffunction-sections -DHAVE_SYSCALL_GETRANDOM -DXML_DEV_URANDOM --target=aarch64-linux-gnu -B/usr/aarch64-linux-gnu/bin/ -I/usr/aarch64-linux-gnu/include -I/usr/aarch64-linux-gnu/include/c++/13 -I/usr/aarch64-linux-gnu/include/c++/13/aarch64-linux-gnu -I/usr/include/aarch64-linux-gnu -isystem/usr/include/ -isystem /home/runner/work/alphaSkia/alphaSkia/externals/skia/third_party/harfbuzz -isystem /home/runner/work/alphaSkia/alphaSkia/externals/skia/third_party/externals/harfbuzz/src -isystem /home/runner/work/alphaSkia/alphaSkia/externals/skia/third_party/freetype2/include -isystem /home/runner/work/alphaSkia/alphaSkia/externals/skia/third_party/freetype2/include/freetype-android -isystem /home/runner/work/alphaSkia/alphaSkia/externals/skia/third_party/externals/freetype/include -std=c++17 -fvisibility-inlines-hidden -fno-exceptions -fno-rtti -c ./test.cpp -o ./test.o