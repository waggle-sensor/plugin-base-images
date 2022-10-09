# Plugin Base Images

## Overview

This repo contains Dockerfiles and tools for building our plugin base images.

We are developing the following base images:

* `base` - Small Ubuntu based image which includes:
  * Python3
  * Numpy
  * OpenCV
  * pywaggle
  * nano
  * git

* `ml` - Large Ubuntu image which includes:
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
  * pywaggle
  * nano
  * git

* `ml-torch` - The `ml` Waggle image with newer Torch
  * PyTorch 1.9.0 w/ torchvision 1.10.0

* `base-ros` - The `base` Waggle image which includes:
  * ros noetic

* `base-ros2` - The `base` Waggle image which includes:
  * ros2 foxy

Image builds should follow the naming convention `waggle/plugin-base:x.y.z-type`. For example, version 1.0.4 of a mega image should be named `waggle/plugin-base:1.0.4-mega`.

## Issue Reporting

This repository is maintained by Sage Waggle Team <sage-waggle@sagecontinuum.org>. If you find any issue while using the base images for your plugin, please either send an email to the email address or create an issue in the issues tab.

## Technical Notes

We've tried to use Ubuntu 20.04 as much as possible, however the L4T base image currently only support 18.04. The primary reason for not staying on 18.04 is that ROS Noetic is only available as a pre-built package on Ubuntu 20.04.

As of January 2021, Tensorflow-2.4.0 pip is built upon cuDNN 8.0 and CUDA 11.0 (See [more](https://www.tensorflow.org/install/source#gpu)) the host machine running the ML container must have CUDA 11.0, not higher than that. If higher, Tensorflow GPU-related functions will complain [the issue](https://github.com/tensorflow/tensorflow/issues/44159). The post(https://github.com/tensorflow/tensorflow/issues/44159#issuecomment-735542190) recommends to stick to CUDA 11.0.

__NOTE: To install CUDA toolkit 11.0, visit [here](https://developer.nvidia.com/cuda-11.0-download-archive?target_os=Linux&target_arch=x86_64&target_distro=Ubuntu&target_version=1804&target_type=runfilelocal)__

__NOTE: To install cuDNN 8 for CUDA 11.0 follow the instructions below__

```
# Referred from https://docs.nvidia.com/deeplearning/cudnn/install-guide/index.html
export OS=ubuntu1804
wget https://developer.download.nvidia.com/compute/cuda/repos/${OS}/x86_64/cuda-${OS}.pin 

mv cuda-${OS}.pin /etc/apt/preferences.d/cuda-repository-pin-600
apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/${OS}/x86_64/7fa2af80.pub
add-apt-repository "deb https://developer.download.nvidia.com/compute/cuda/repos/${OS}/x86_64/ /"
apt-get update
apt-get install libcudnn8=8.0.5.39-1+cuda11.0
```

