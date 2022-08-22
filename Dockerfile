# Copyright (c) 2022 FEROX YT EIRL, www.ferox.yt <devops@ferox.yt>
# Copyright (c) 2022 Jérémy WALTHER <jeremy.walther@golflima.net>
# See <https://github.com/frxyt/docker-crypt> for details.

FROM alpine:latest
LABEL maintainer="Jérémy WALTHER <jeremy@ferox.yt>"

RUN set -ex; \
    apk add --no-cache \
        bash \
        ca-certificates \
        curl \
        git \
        gnupg \
        openssl \
        tar;

COPY decrypt encrypt /usr/local/bin/

WORKDIR /work