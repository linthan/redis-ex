#!/bin/bash
ports=("7000" "7001" "7002")
for port in ${ports[@]}; do
    echo $port
    mkdir -p /root/data/$port
    redis-server redis-$port.conf
done

