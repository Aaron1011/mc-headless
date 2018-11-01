FROM alpine:edge

RUN apk update && apk add xvfb
ADD ./Xvfb-run /usr/local/bin/

ENV XVFB_ARGS "+extension GLX +extension RANDR +extension RENDER -screen 0 1024x768x24 :99"
VOLUME /tmp/.X11-unix

CMD Xvfb $XVFB_ARGS
