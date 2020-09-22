FROM ubuntu:focal
LABEL description="Small base image containing Python 3 and pywaggle."
LABEL maintainer="Sean Shahkarami <sean.shahkarami@gmail.com>"
LABEL url="https://github.com/waggle-sensor/plugin-base-images/tree/master/micro"

# install system packages
RUN apt-get update && apt-get install -y git python3 python3-pip

# install waggle packages
RUN pip3 install --no-cache-dir git+https://github.com/waggle-sensor/pywaggle
