RELEASE?=0.0.1
PLATFORM?=linux/amd64
IMAGE=mega

all: image

image:
	docker buildx build -t "waggle/plugin-base:$(RELEASE)-$(IMAGE)" --platform "$(PLATFORM)" --load .

push:
	docker buildx build -t "waggle/plugin-base:$(RELEASE)-$(IMAGE)" --platform "$(PLATFORM)" --push .
