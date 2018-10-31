FROM frolvlad/alpine-oraclejdk8:full

# Explanation of dependencies:
# * xvfb is used to start a virtual dir
# * libxcursor, libxrandr, and libxtst are needed by LWJGL 2
# * mesa and mesa-dri-swrast provides the OpenGL implementation for the Minecraft client
# * coreutils provides 'fmt', which is used by Xvfb-run
RUN apk update && apk add xvfb libxcursor libxrandr libxtst mesa mesa-dri-swrast coreutils
ADD ./Xvfb-run /usr/local/bin/
