FROM ubuntu:16.04

ADD ./sources.list /etc/apt/sources.list

RUN apt-get update && apt-get install -y git build-essential 

ENV PATH /root/redis/redis/bin:$PATH