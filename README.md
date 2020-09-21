# Plugin Base Images

This repo contains Dockerfiles and tools for building our plugin base images.

We are developing the following base images:

* `micro` - Small `ubuntu:focal` based image which includes:
  * Python 3
  * pywaggle

* `mega` - Large `ubuntu:focal` based image which includes:
  * Python 3
  * OpenCV
  * PyTorch
  * Tensorflow
  * ROS Noetic
  * pywaggle

Image builds should follow the naming convention `waggle/plugin-base:x.y.z-type`. For example, version 1.0.4 of a mega image should be named `waggle/plugin-base:1.0.4-mega`.
