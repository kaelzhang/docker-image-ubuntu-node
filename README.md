# Docker Image: ostai/ubuntu-node

Docker Images for creating Ubuntu based images with specific node versions.

For now, it only supports Ubuntu 16.04 with NodeJS 16 (16.20.2)

The purpose of this repo is to archive specific Ubuntu and NodeJS versions to prevent them from being uninstallable in the future

## Pull

```sh
docker pull ostai/ubuntu-node:16.04-16
```

## Usage

```Dockerfile
FROM ostai/ubuntu-node:16.04-16

RUN ...

CMD ["node", "/usr/src/app/start.js"]
```

## For Developers

```sh
make build
```

### Build with a Certain Version

```sh
UBUNTU_VERSION=16.04
NODE_VERSION=16

docker build \
-t ostai/ubuntu-node:$UBUNTU_VERSION-$NODE_SHORT_VERSION \
--build-arg UBUNTU_VERSION=$UBUNTU_VERSION \
--build-arg NODE_VERSION=$NODE_VERSION \
.
```
