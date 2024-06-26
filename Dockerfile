FROM debian:stable-slim

LABEL maintainer "Michael Schmidt <schmidt.software@gmail.com>"

RUN apt-get update \
    && apt-get dist-upgrade \
    && apt-get install -y \
        curl \
        nano \
        iftop \
    && curl -s https://install.zerotier.com/ | bash

COPY local.conf /var/lib/zerotier-one

ENTRYPOINT ["/usr/sbin/zerotier-one"]
