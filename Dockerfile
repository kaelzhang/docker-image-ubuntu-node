ARG UBUNTU_VERSION=16.04
ARG NODE_VERSION=16

FROM ubuntu:${UBUNTU_VERSION}

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
&& curl -sL https://deb.nodesource.com/setup_${NODE_VERSION}.x | bash - \
&& apt-get install -y nodejs npm \
&& rm -rf /var/lib/apt/lists/* \
&& apt-get clean \
&& rm -rf /tmp/* /var/tmp/*
