ARG UBUNTU_VERSION=16.04
ARG NODE_VERSION=16

FROM ubuntu:${UBUNTU_VERSION}

RUN apt-get update \
# && apt-get install -y curl \
&& curl -sL https://deb.nodesource.com/setup_${NODE_VERSION}.x | bash - \
&& apt-get install -y nodejs \
&& rm -rf /var/lib/apt/lists/* \
&& apt-get clean \
&& rm -rf /tmp/* /var/tmp/*
