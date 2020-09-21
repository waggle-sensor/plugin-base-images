# Plugin Base Images

This repo contains Dockerfiles and tools for building our plugin base images.

We are developing the following base images:

* `micro` - Small `python:3` with pywaggle pre-installed.
* `mega` - Large `ubuntu:focal` based image which includes:
  * OpenCV
  * PyTorch
  * Tensorflow
  * ROS Noetic
  * pywaggle

Image builds should follow the naming convention `waggle/plugin-base:x.y.z-type`. For example, version 1.0.4 of a mega image should be named `waggle/plugin-base:1.0.4-mega`.
