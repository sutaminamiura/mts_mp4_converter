FROM ubuntu:18.04

RUN apt update
RUN apt -y upgrade
RUN apt install ffmpeg -y
WORKDIR /workdir
ADD convert.sh /workdir

