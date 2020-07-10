# Dockerfile

From osrf/ros:melodic-desktop-full
MAINTAINER x2ever <x2ever@naver.com>


RUN apt-get update && apt-get install -y \
	gcc
RUN mkdir -p /hello
WORKDIR /hello
ADD hello_world.c hello_world.c
RUN gcc -o hello.exe hello_world.c
RUN chmod 755 hello.exe
RUN ./hello.exe
RUN rosecore
