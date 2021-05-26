FROM waggle/plugin-base:1.1.1-base
LABEL description="Waggle base image containing ROS noetic."
LABEL maintainer="Sage Waggle Team <sage-waggle@sagecontinuum.org>"
LABEL url="https://github.com/waggle-sensor/plugin-base-images/tree/master/base-ros"

ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8
ENV ROS_DISTRO=noetic
ENV ROS_ROOT=/opt/ros/${ROS_DISTRO}
ENV ROS_PYTHON_VERSION=3

# install system packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    gnupg2 \
    && rm -rf /var/lib/apt/lists/*

# install ros noetic-base
RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu focal main" > /etc/apt/sources.list.d/ros-latest.list' && \
    apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654 && \
    apt-get update && apt-get install -y --no-install-recommends \
    ros-noetic-ros-base \
    && rm -rf /var/lib/apt/lists/*
