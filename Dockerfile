FROM debian:stable-slim

RUN apt-get update \
    && apt-get install -y \
        curl \
        nano \
    && curl -s https://install.zerotier.com/ | bash

ENTRYPOINT ["/usr/sbin/zerotier-one"]
