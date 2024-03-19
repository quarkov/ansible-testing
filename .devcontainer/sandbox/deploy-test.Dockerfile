FROM ubuntu:22.04

RUN \
    apt update -y && \
    \
    apt install -y --fix-missing --no-install-recommends\
    \
        ansible \
        python3
