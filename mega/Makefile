RELEASE?=0.0.0
PLATFORM?=linux/amd64,linux/arm64
IMAGE=mega

all: image

image:
	echo "local image currently not supported"
	exit 1

push:
	docker buildx build -f Dockerfile.amd64 -t "waggle/plugin-base:$(RELEASE)-$(IMAGE)-amd64" --platform linux/amd64 --push .
	docker buildx build -f Dockerfile.l4t -t "waggle/plugin-base:$(RELEASE)-$(IMAGE)-l4t" --platform linux/arm64 --push .
