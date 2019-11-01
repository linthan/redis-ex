#!/bin/bash
redisserverports=("7000" "7001" "7002" "7003" "7004" "7005")
for port in ${redisserverports[@]}; do
    echo "start redis server $port"
    mkdir -p /root/data/$port
    redis-server redis-$port.conf
done
# meet
redis-cli -h 127.0.0.1 -p 7000 cluster meet 127.0.0.1 7001
redis-cli -h 127.0.0.1 -p 7000 cluster meet 127.0.0.1 7002
redis-cli -h 127.0.0.1 -p 7000 cluster meet 127.0.0.1 7003
redis-cli -h 127.0.0.1 -p 7000 cluster meet 127.0.0.1 7004
redis-cli -h 127.0.0.1 -p 7000 cluster meet 127.0.0.1 7005

# assign nodes
redis-cli -h 127.0.0.1 -p 7000  cluster addslots {0..5461}
redis-cli -h 127.0.0.1 -p 7001  cluster addslots {5462..10922}
redis-cli -h 127.0.0.1 -p 7002  cluster addslots {10923..16383}

# replicate
# redis-cli -p 7003  cluster replicate  ?
# redis-cli -p 7004  cluster replicate  ?
# redis-cli -p 7005  cluster replicate  ?

while true
do
    sleep 5s
done
