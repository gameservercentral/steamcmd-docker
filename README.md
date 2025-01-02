# steamcmd-docker


![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/gameservercentral/steamcmd-docker/build.yml)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/gameservercentral/steamcmd-docker)
![GitHub](https://img.shields.io/github/license/gameservercentral/steamcmd-docker)

This repository contains a Docker image for SteamCMD, based on Ubuntu. SteamCMD is Valve's command-line tool for installing and updating dedicated servers for games that run on Steam.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Build ](#build-manually)
- [License](#license)

## Prerequisites

- Docker must be installed on your system. Instructions for installing Docker can be found [here](https://docs.docker.com/get-docker/).

## Usage

To use the Docker image, run the following command:

```sh
docker run -it ghcr.io/gameservercentral/steamcmd:latest
```

This will start an interactive shell within the container where you can run SteamCMD commands.

## Build Manually

To build the Docker image, clone this repository and run the following command:

```sh
git clone https://github.com/gameservercentral/steamcmd-docker.git
cd steamcmd-docker
docker build -t steamcmd-docker .
```



## License

This project is licensed under the MIT License. See the LICENSE file for more details.
