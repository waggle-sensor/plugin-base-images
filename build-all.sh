#!/bin/bash

docker buildx build -t waggle/plugin-base:0.0.1-micro --platform linux/amd64,linux/arm64,linux/arm/v7 --load micro
docker buildx build -t waggle/plugin-base:0.0.1-mega --platform linux/amd64,linux/arm64,linux/arm/v7 --load mega
