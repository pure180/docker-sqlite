## Docker NodeJs@16, SQLite3 and Yarn

This repository contains **Dockerfile** of [Node.js](http://nodejs.org/) for [Docker](https://www.docker.io/)'s [trusted build](https://index.docker.io/u/dockerfile/nodejs/) published to the public [Docker Registry](https://index.docker.io/).

### Installation

1. Install [Docker](https://www.docker.io/).

2. Download [trusted build](https://index.docker.io/u/dandroid80/node-sqlite/) from public [Docker Registry](https://index.docker.io/): `docker pull dandroid80/node-sqlite`

   (alternatively, you can build an image from Dockerfile: `docker build -t="dandroid80/node-sqlite" https://github.com/pure180/docker-sqlite`)

### Usage

    docker run -it --rm dandroid/node-sqlite

#### Run `node`

    docker run -it --rm dandroid/node-sqlite node

#### Run `npm`

    docker run -it --rm dandroid/node-sqlite npm

#### Run `yarn`

    docker run -it --rm dandroid/node-sqlite yarn
