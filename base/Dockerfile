FROM ubuntu:focal
LABEL description="Small base image containing Python 3 and pywaggle."
LABEL maintainer="Sage Waggle Team <sage-waggle@sagecontinuum.org>"
LABEL url="https://github.com/waggle-sensor/plugin-base-images/tree/master/base"

# setup timezone
RUN echo 'Etc/UTC' > /etc/timezone && \
    ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime

# install system packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    nano \
    python3-pip \
    python3-opencv \
    && rm -rf /var/lib/apt/lists/*

# install waggle packages
RUN pip3 install --no-cache-dir git+https://github.com/waggle-sensor/pywaggle
