FROM openjdk:16-jdk-slim

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/London
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update

RUN apt-get install -y wget
RUN wget https://github.com/Anuken/Mindustry/releases/latest/download/server-release.jar

CMD java -jar server-release.jar
