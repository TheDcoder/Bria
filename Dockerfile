FROM ghcr.io/linuxserver/baseimage-alpine:3.22

ARG ARIANG_VERSION=1.3.11

ENV HOME="/config"

RUN apk add --no-cache aria2 caddy fish

RUN \
    wget -O /tmp/ariang.zip "https://github.com/mayswind/AriaNg/releases/download/${ARIANG_VERSION}/AriaNg-${ARIANG_VERSION}.zip" && \
    mkdir -p /var/html/www/AriaNg && \
    unzip -o /tmp/ariang.zip -d /var/html/www/AriaNg && \
    rm -rf /tmp/ariang.zip

RUN \
    wget -O /tmp/webui-aria2.zip "https://github.com/ziahamza/webui-aria2/archive/refs/heads/master.zip" && \
    unzip -o /tmp/webui-aria2.zip -d /tmp && \
    mv /tmp/webui-aria2-master/docs /var/html/www/webui-aria2 && \
    rm -rf /tmp/webui-aria2-master /tmp/webui-aria2.zip

COPY root/ /

VOLUME /config
EXPOSE 80 443
