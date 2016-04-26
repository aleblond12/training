#!/bin/sh

if [ "$#" -ne 1 ]; then
    echo Syntaxe : $0 IP_APP
    exit 1
fi

IP=$1

docker exec demo4_hipache_1 redis-cli rpush frontend:localhost test
docker exec demo4_hipache_1 redis-cli rpush frontend:localhost http://${IP}:5001
docker exec demo4_hipache_1 redis-cli rpush frontend:localhost http://${IP}:5002
docker exec demo4_hipache_1 redis-cli lrange frontend:localhost 0 -1
exit 0
