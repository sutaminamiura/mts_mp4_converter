FROM ubuntu:18.04
ARG http_proxy
ENV http_proxy $http_proxy
ENV https_proxy $http_proxy
RUN apt update
RUN apt -y upgrade
RUN apt install ffmpeg -y
WORKDIR /workdir
ADD convert.sh /workdir

