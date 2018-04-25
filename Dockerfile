FROM frolvlad/alpine-glibc:latest
LABEL maintainer "zcsevcik@gmail.com"

RUN apk --update --no-cache upgrade && \
    apk --update --no-cache add \
    git ca-certificates make && \

    git clone --depth 1 https://github.com/raspberrypi/tools.git /tmp/raspberrypi-tools && \
    mkdir /opt && mv /tmp/raspberry-pi/tools/arm-bcm2708/arm-rpi-4.9.3-linux-gnueabihf/ /opt/ && \
    rm -fr /tmp/raspberrypi-tools/

ENV PATH=/opt/arm-rpi-4.9.3-linux-gnueabihf/bin:$PATH
