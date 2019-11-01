#!/bin/bash
redisserverports=("8000" "8001" "8002" "8003" "8004" "8005")
for port in ${redisserverports[@]}; do
    echo "start redis server $port"
    mkdir -p /root/data/$port
    redis-server redis-$port.conf
done
# 使用redis原生命令行生成redis cluster
# redis-cli --cluster create  --cluster-replicas 1  127.0.0.1:8000 127.0.0.1:8001 127.0.0.1:8002 127.0.0.1:8003 127.0.0.1:8004 127.0.0.1:8005
while true
do
    sleep 5s
done
