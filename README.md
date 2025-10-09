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

### Examples

#### Run Barotrauma Dedicated Server

```sh
docker run -it -p 27015:27015/udp -p 27016:27016/udp ghcr.io/gameservercentral/steamcmd:latest /bin/bash -c "steamcmd +force_install_dir /data/ +login anonymous +app_update 1026340 validate +quit && ./data/DedicatedServer"

294420
```

#### Run 7 Days to Die Dedicated Server

```sh
docker run -it -p 26900:26900/udp  -p 26900:26900/tcp -p 26901:26901/udp  -p 26902:26902/udp ghcr.io/gameservercentral/steamcmd:latest /bin/bash -c "steamcmd +force_install_dir /data/ +login anonymous +app_update 294420 validate +quit &&  cd /data && ./startserver.sh -configfile=serverconfig.xml"


```

./startserver.sh -configfile=serverconfig.xml
## Build Manually

To build the Docker image, clone this repository and run the following command:

```sh
git clone https://github.com/gameservercentral/steamcmd-docker.git
cd steamcmd-docker
docker build -t steamcmd-docker .
```

docker run -it -p 27015:27015/udp -p 27016:27016/udp ghcr.io/gameservercentral/steamcmd:latest /bin/bash -c "steamcmd +force_install_dir /data/ +login anonymous +app_update 1026340 validate +quit && ./data/DedicatedServer"


## License

This project is licensed under the MIT License. See the LICENSE file for more details.
