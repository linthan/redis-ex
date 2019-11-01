FROM ubuntu:16.04

ADD ./sources.list /etc/apt/sources.list
ADD ./ruby /root/ruby

ENV PATH /root/redis/redis/bin:/usr/local/ruby/bin:$PATH

RUN apt-get update && apt-get install -y git build-essential wget

RUN cd /root/ruby && ./ruby.sh 

ADD ./redis-5.0.5/src/redis-trib.rb  /usr/local/bin/redis-trib.rb
