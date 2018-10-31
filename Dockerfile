# Todo - move to a release once Xvfb 1.20 is included
FROM alpine:edge

RUN apk update && apk add xvfb libxcursor libxrandr libxtst openjdk8
