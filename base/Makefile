RELEASE?=1.1.1
PLATFORM?=linux/amd64,linux/arm64
IMAGE=base

all: image

image:
	docker buildx build -t "waggle/plugin-base:$(RELEASE)-$(IMAGE)" --load .

push:
	docker buildx build -t "waggle/plugin-base:$(RELEASE)-$(IMAGE)" --platform "$(PLATFORM)" --push .
