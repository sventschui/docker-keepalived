FROM debian:jessie
MAINTAINER Sven Tschui <tschui@webmate.ch>

ENV KEEPALIVED_VERSION 1:1.2.13-1
RUN apt-get update && \
    apt-get install --no-install-recommends --no-install-suggests -y keepalived=${KEEPALIVED_VERSION} && \
    rm -rf /var/lib/apt/lists/*

COPY keepalived /etc/keepalived/
COPY docker-entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
