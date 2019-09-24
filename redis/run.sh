#!/bin/bash
redisserverports=("7000" "7001" "7002")
for port in ${redisserverports[@]}; do
    echo "start redis server $port"
    mkdir -p /root/data/$port
    redis-server redis-$port.conf
done

redissentinelports=("26379" "26380" "26381")
for port in ${redissentinelports[@]}; do
    echo "start redis sentinel $port"
    redis-sentinel redis-sentinel-$port.conf
done

while true
do
    sleep 5s
done