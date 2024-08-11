FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive \
    DEBCONF_NONINTERACTIVE_SEEN=true \
    LC_ALL=C.UTF-8 \
    LANG=C.UTF-8

RUN set -eux \
    && apt-get update \
    && apt-get upgrade -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN set -eux \
    && apt-get update \
    && apt-get install -y \
        build-essential \
        git \
        docker.io \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
