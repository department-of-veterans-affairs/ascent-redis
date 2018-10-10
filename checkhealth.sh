#!/bin/sh
PORT=$1
redis-cli -a ${SPRING_REDIS_PASSWORD} -p ${PORT} ping > /tmp/health
if [[ $(cat /tmp/health)  == "PONG" ]]; then
  exit 0
else
  exit 1
fi
