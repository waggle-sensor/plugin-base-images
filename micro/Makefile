RELEASE?=0.0.0
PLATFORM?=linux/amd64,linux/arm64,linux/arm/v7
IMAGE=micro

all: image

image:
	docker build -t "waggle/plugin-base:$(RELEASE)-$(IMAGE)" .

push:
	docker buildx build -t "waggle/plugin-base:$(RELEASE)-$(IMAGE)" --platform "$(PLATFORM)" --push .
