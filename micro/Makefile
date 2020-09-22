RELEASE?=0.0.0
PLATFORM?=linux/amd64,linux/arm64,linux/arm/v7
IMAGE=micro

all: image

image:
	docker buildx build -t "waggle/plugin-base:$(RELEASE)-$(IMAGE)" --load .

push:
	docker buildx build -t "waggle/plugin-base:$(RELEASE)-$(IMAGE)" --platform "$(PLATFORM)" --push .
