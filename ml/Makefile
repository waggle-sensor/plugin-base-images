RELEASE?=1.1.0
PLATFORM?=linux/amd64,linux/arm64
IMAGE=ml

all: image

image:
	echo "local image currently not supported"
	exit 1

push:
	docker buildx build -f Dockerfile.amd64 -t "waggle/plugin-base:$(RELEASE)-$(IMAGE)-cuda11.0-amd64" --platform linux/amd64 --push .
	docker buildx build -f Dockerfile.l4t -t "waggle/plugin-base:$(RELEASE)-$(IMAGE)-cuda10.2-l4t" --platform linux/arm64 --push .
