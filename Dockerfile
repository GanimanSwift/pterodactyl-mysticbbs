FROM alpine:latest

MAINTAINER Ganiman, <ganiman@ganiman.com>

RUN apk add --no-cache --update curl ca-certificates openssl git tar bash sqlite fontconfig zip unzip p7zip procps mc htop wget \
    && adduser --disabled-password --home /home/container container

USER container
ENV  USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]
