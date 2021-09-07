FROM ubuntu:20.04

LABEL author="Robin" maintainer="robin@robinsch.net"

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/London
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
    && apt-get update \
    && apt-get install wget curl git nano vim firefox --fix-missing -y \
    && apt-get install x11vnc xvfb --fix-missing -y \
    && apt-get install gnome --fix-missing -y \
    && apt-get install kde-standard --fix-missing -y \
    && apt-get install lxde --fix-missing -y \
    && apt-get install xfce4 --fix-missing -y \
    && useradd -m -s /bin/bash -u 988 container 

USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh
CMD ["/bin/bash", "/entrypoint.sh"]