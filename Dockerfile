ARG UBUNTU_VERSION=16.04

FROM ubuntu:${UBUNTU_VERSION}

ENV DEBIAN_FRONTEND=noninteractive

ARG NODE_VERSION=16

RUN apt-get update \
# Which will be used for deb.nodesource.com/setup_${NODE_VERSION}.x
&& apt-get install -y curl gnupg \
&& curl -fsSL https://deb.nodesource.com/setup_${NODE_VERSION}.x | bash - \
&& apt-get install -y nodejs \
&& rm -rf /var/lib/apt/lists/* \
&& apt-get clean \
&& rm -rf /tmp/* /var/tmp/* \
# Verify installation
&& node -v && npm -v
