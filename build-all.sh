#!/bin/bash

version=0.0.1

build_multi_arch() {
    docker buildx build -t waggle/plugin-base:$version-micro --platform linux/amd64,linux/arm64,linux/arm/v7 --load micro
    docker buildx build -t waggle/plugin-base:$version-mega --platform linux/amd64,linux/arm64,linux/arm/v7 --load mega
}

build_native() {
    docker build -t waggle/plugin-base:$version-micro micro
    docker build -t waggle/plugin-base:$version-mega mega
}

build_native
