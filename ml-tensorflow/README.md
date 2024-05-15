# Tensorflow

## TensorFlow and JetPack Compatibility

Using mismatched versions may lead to compatibility issues and hinder the system's functionality. A good source to use is [Nvidia's Container Catalog](https://catalog.ngc.nvidia.com/containers). They provide containers with descriptions that include the right versions to use based on your jetpack version.

## Keras 2 and JetPack Compatibility

Due to the specific version of JetPack (v4.4.1) used in Wild Sage Nodes, Keras 2 is the version downloaded and utilized. This version is chosen to ensure compatibility with the underlying TensorFlow framework and the associated dependencies in the JetPack environment. A good source to use is [Keras Getting Started Docs](https://keras.io/getting_started/#compatibility-matrix), they explain what version is downloaded with the version of Tensorflow you use.

## Installation and Usage

This image is great to use as your base image when developing plugins that use Tensorflow and/or Keras. 

- Example Dockerfile using l4t:
```
FROM waggle/plugin-base:1.1.1-ml-tensorflow2.3-arm64
...
```
- Example Dockerfile using amd64:
```
FROM waggle/plugin-base:1.1.1-ml-tensorflow2.3-amd64
...
```

If your plugin requires GPU access, make sure to select a k3s node with GPU capabilities. This ensures that TensorFlow can utilize the GPU device effectively. For example:
```bash
pluginctl run --name test --selector resource.gpu=true 10.31.81.1:5000/local/temp
```
## Building the Images

- Dockerfile.l4t
```bash
docker buildx build \
--platform linux/arm64 \
-t waggle/plugin-base:1.1.1-ml-tensorflow2.3-arm64 \
-f Dockerfile.l4t \
--load .
```

- Dockerfile.amd64
```bash
docker buildx build \
--platform linux/amd64 \
-t waggle/plugin-base:1.1.1-ml-tensorflow2.3-amd64 \
-f Dockerfile.amd64 \
--load .
```

## Additional Resources
- https://www.tensorflow.org/versions
- https://keras.io/2.16/api/
