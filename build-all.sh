#!/bin/bash

version=0.0.1
platform=linux/amd64,linux/arm64,linux/arm/v7

build_multi_arch() {
    docker buildx build -t waggle/plugin-base:$version-micro --platform "$platform" --push micro
    docker buildx build -t waggle/plugin-base:$version-mega --platform "$platform" --push mega
}

build_native() {
    docker build -t waggle/plugin-base:$version-micro micro
    docker build -t waggle/plugin-base:$version-mega mega
}

case "$1" in
"") build_native ;;
push) build_multi_arch ;;
*) echo "Please use either \"$0\" to build locally or \"$0 push\" to push multi-arch image."; exit 1 ;;
esac
