FROM ubuntu:22.04

RUN \
    apt update -y && \
    \
    export DEBIAN_FRONTEND=noninteractive && \
    ln -fs /usr/share/zoneinfo/Europe/Helsini /etc/localtime && \
    \
    apt install -y tzdata && \
    dpkg-reconfigure -f noninteractive tzdata && \
    \
    apt install -y --fix-missing --no-install-recommends \
    \
        ansible \
        git \
        locales \
        python3 \
        python3-pip

RUN \
    python3 -m pip install \
        molecule
