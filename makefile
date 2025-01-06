export UBUNTU_VERSION=16.04
export NODE_VERSION=16

build:
	DOCKER_DEFAULT_PLATFORM=linux/amd64 docker build \
	-t ostai/ubuntu-node:$(UBUNTU_VERSION)-$(NODE_VERSION) \
	--build-arg UBUNTU_VERSION=$(UBUNTU_VERSION) \
	--build-arg NODE_VERSION=$(NODE_VERSION) \
	.

push:
	docker push ostai/ubuntu-node:$(UBUNTU_VERSION)-$(NODE_VERSION)
