# Pull base image.
FROM ubuntu:22.04
LABEL maintainer="Dandroid80"

# Ignore APT warnings about not having a TTY
ENV DEBIAN_FRONTEND noninteractive

# Dependencies
RUN \
  apt-get update && \
  apt-get -y install \
  build-essential \
  curl \
  git-core \
  software-properties-common \
  libcurl4-openssl-dev \
  libc6-dev \
  libreadline-dev \
  libssl-dev \
  libxml2-dev \
  libxslt1-dev \
  libyaml-dev \
  zlib1g-dev

# Install NodeJs@16
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs 
RUN npm install -g npm

# SqLite
RUN apt-get -y install sqlite3 libsqlite3-dev

# Install Yarn
RUN npm install -g yarn

VOLUME ["/data"]

WORKDIR /data

CMD ["bash"]