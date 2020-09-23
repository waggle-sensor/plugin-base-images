# Plugin Base Images

## Overview

This repo contains Dockerfiles and tools for building our plugin base images.

We are developing the following base images:

* `micro` - Small Ubuntu based image which includes:
  * Python 3
  * pywaggle
  * git

* `mega` - Large Ubuntu image which includes:
  * Python 3
  * OpenCV
  * Tensorflow
  * PyTorch w/ torchvision and torchaudio
  * ONNX
  * Numpy
  * Numba
  * Pandas
  * Scipy
  * Scikit-Learn
  * Jupyterlab
  * ROS Noetic
  * pywaggle
  * git

Image builds should follow the naming convention `waggle/plugin-base:x.y.z-type`. For example, version 1.0.4 of a mega image should be named `waggle/plugin-base:1.0.4-mega`.

## Technical Notes

We've tried to use Ubuntu 20.04 as much as possible, however the L4T base image currently only support 18.04. The primary reason for not staying on 18.04 is that ROS Noetic is only available as a pre-built package on Ubuntu 20.04.
