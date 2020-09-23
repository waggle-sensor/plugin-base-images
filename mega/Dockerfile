# using different FROM images depending on arch
FROM --platform=linux/amd64 ubuntu:focal as from-amd64
FROM --platform=linux/arm64 nvcr.io/nvidia/l4t-base:r32.4.3 as from-arm64

ARG TARGETARCH
FROM from-$TARGETARCH

LABEL description="Large base image containing Python 3, pywaggle and major frameworks such as PyTorch, Tensorflow, OpenCV and ROS."
LABEL maintainer="Sean Shahkarami <sean.shahkarami@gmail.com>"
LABEL url="https://github.com/waggle-sensor/plugin-base-images/tree/master/mega"

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
ENV ROS_DISTRO noetic

# setup timezone
RUN echo 'Etc/UTC' > /etc/timezone && \
    ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime

# install system packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    python3-pip \
    dirmngr \
    gnupg2 \
    tzdata \
    && rm -rf /var/lib/apt/lists/*

# ROS - add apt keys
RUN apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654 && \
    echo "deb http://packages.ros.org/ros/ubuntu focal main" > /etc/apt/sources.list.d/ros-latest.list

# ROS - install core
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-noetic-ros-core=1.5.0-1* \
    build-essential \
    python3-rosdep \
    python3-rosinstall \
    python3-vcstools \
    && rm -rf /var/lib/apt/lists/*

# ROS - bootstrap rosdep
RUN rosdep init && \
    rosdep update --rosdistro $ROS_DISTRO

# ROS - install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-noetic-ros-base=1.5.0-1* \
    && rm -rf /var/lib/apt/lists/*

# install major ml packages
RUN pip3 install --no-cache-dir opencv-python-headless torch torchvision tensorflow

# install waggle packages
RUN pip3 install --no-cache-dir git+https://github.com/waggle-sensor/pywaggle
