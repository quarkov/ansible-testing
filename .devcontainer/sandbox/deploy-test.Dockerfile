FROM ubuntu:22.04

RUN \
    apt update -y && \
    \
    apt install -y --fix-missing --no-install-recommends\
    \
        ansible \
        git \
        locales \
        python3 \
        python3-pip

RUN \
    python3 -m pip install \
        molecule
