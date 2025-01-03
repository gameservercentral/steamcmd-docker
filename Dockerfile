FROM ubuntu

LABEL org.opencontainers.image.description="Docker image containing SteamCMD based on ubuntu"
LABEL maintainer="info@gameservercentral.eu"
ENV DEBIAN_FRONTEND=noninteractive

SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN echo steam steam/question select "I AGREE" | debconf-set-selections \
 && echo steam steam/license note '' | debconf-set-selections

 #locales
RUN apt-get update && apt-get install -y locales 
RUN locale-gen en_US.UTF-8 
ENV LANG=en_US.UTF-8 
ENV LANGUAGE=en_US:en 
ENV LC_ALL=en_US.UTF-8
 
RUN apt-get update -y
RUN apt-get install -y console-setup sudo wget curl \
	&& apt-get install -y --no-install-recommends software-properties-common
RUN add-apt-repository multiverse
RUN dpkg --add-architecture i386;
RUN apt update -y
RUN apt install steamcmd -y
RUN useradd --create-home -s /bin/bash user && \
    adduser user sudo && \
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers 
    

# Create symlink for executable
RUN ln -s /usr/games/steamcmd /usr/bin/steamcmd
RUN steamcmd login anonymos +quit

USER user
ENV USER=user