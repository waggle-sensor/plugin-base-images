FROM python:3.8-alpine
LABEL description="Small base image containing Python 3 and pywaggle."
LABEL maintainer="Sean Shahkarami <sean.shahkarami@gmail.com>"
LABEL url="https://github.com/waggle-sensor/plugin-base-images/tree/master/micro"

RUN apk add git

RUN pip3 install --no-cache-dir git+https://github.com/waggle-sensor/pywaggle
