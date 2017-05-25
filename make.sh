#!/bin/sh
make -C ../../.. ffmpeg_build V=1\
&& make -C ../../.. peacock_build V=1\
&& make -C ../../.. peacock_romfs \
&& make -C ../../.. ffmpeg_romfs \
&& make -C ../../.. image \
&& make -C ../../.. pack
