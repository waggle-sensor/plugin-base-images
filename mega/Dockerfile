FROM ros:noetic-ros-base-focal
LABEL description="Large base image containing Python 3, pywaggle and major frameworks such as PyTorch, Tensorflow, OpenCV and ROS."
LABEL maintainer="Sean Shahkarami <sean.shahkarami@gmail.com>"
LABEL url="https://github.com/waggle-sensor/plugin-base-images/tree/master/mega"

# install system packages
RUN apt-get update && apt-get install -q -y git python3-pip

# install major ml packages
RUN pip3 install --no-cache-dir opencv-python-headless torch torchvision tensorflow

# install waggle packages
RUN pip3 install --no-cache-dir git+https://github.com/waggle-sensor/pywaggle
