RELEASE?=1.1.0
PLATFORM?=linux/amd64,linux/arm64
IMAGE=base1.1.0-ros2-foxy

all: image

image:
	docker buildx build -t "waggle/plugin-base:$(RELEASE)-$(IMAGE)" --load .

push:
	docker buildx build -t "waggle/plugin-base:$(RELEASE)-$(IMAGE)" --platform "$(PLATFORM)" --push .
