FROM base/archlinux:latest

RUN pacman -Syu --noconfirm xorg-server-xvfb jdk8-openjdk

ENV XVFB_ARGS "+extension GLX +extension RANDR +extension RENDER -screen 0 1024x768x24 :99"
VOLUME /tmp/.X11-unix

CMD ["Xvfb", $XVFB_ARGS]
