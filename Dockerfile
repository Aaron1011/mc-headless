FROM base/archlinux:latest

RUN pacman -Syu --noconfirm xorg-server-xvfb libxcursor libxrandr libxtst jdk8-openjdk
