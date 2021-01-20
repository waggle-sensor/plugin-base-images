# using different FROM images depending on arch
FROM ubuntu:focal
LABEL description="Large base image containing Python 3, pywaggle and major frameworks such as PyTorch, Tensorflow, OpenCV and ROS."
LABEL maintainer="Sage Waggle Team <sage-waggle@sagecontinuum.org>"
LABEL url="https://github.com/waggle-sensor/plugin-base-images/tree/master/mega"

ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8
ENV ROS_DISTRO=noetic
ENV ROS_ROOT=/opt/ros/${ROS_DISTRO}
ENV ROS_PYTHON_VERSION=3

# setup timezone
RUN echo 'Etc/UTC' > /etc/timezone && \
    ln -fs /usr/share/zoneinfo/Etc/UTC /etc/localtime

# install system packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    python3-pip \
    gnupg2 \
    && rm -rf /var/lib/apt/lists/*

# install ros noetic
RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu focal main" > /etc/apt/sources.list.d/ros-latest.list' && \
    apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654 && \
    apt-get update && apt-get install -y --no-install-recommends \
    ros-noetic-ros-base \
    && rm -rf /var/lib/apt/lists/*

# install major ml packages
RUN pip3 install --no-cache-dir \
    opencv-python-headless \
    tensorflow \
    torch \
    torchvision \
    torchaudio \
    onnx \
    numpy \
    numba \
    pandas \
    scipy \
    scikit-learn \
    jupyterlab

# install waggle packages
RUN pip3 install --no-cache-dir git+https://github.com/waggle-sensor/pywaggle
