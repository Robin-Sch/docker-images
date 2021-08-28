FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/London
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update
RUN apt-get install x11vnc xvfb -y
RUN mkdir  ~/.vnc
RUN x11vnc -storepasswd PASSWORD ~/.vnc/passwd

EXPOSE 5900

RUN apt-get update
RUN apt-get install xfce4 --fix-missing -y
RUN apt-get install lxde --fix-missing -y
RUN apt-get install kde-standard --fix-missing -y
RUN apt-get install gnome-core --fix-missing -y

CMD x11vnc -forever -usepw -create
