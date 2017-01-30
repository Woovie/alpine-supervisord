# Docker Hub: cmosetick/alpine-supervisord
# This image is alpine based

FROM mhart/alpine-node:6
MAINTAINER Chris Mosetick <cmosetick@gmail.com>

RUN \
apk --no-cache --update add supervisor openssh git && \
rm /etc/supervisord.conf && \
mkdir -p /etc/supervisor/conf.d && \
mkdir /var/log/supervisor && \
rm -rf /var/cache/apk/*

COPY supervisord.conf /etc/supervisor

# This is a base image used for other images to build on top of so I'm not adding a CMD or ENTRYPOINT
