#!/usr/bin/env bash
trap "exit" SIGINT
trap "exit" SIGKILL
# Run nginx

nginx

while :
do
    echo $(date) Writing fortune to /usr/share/nginx/html/index.html
    /usr/games/fortune > /usr/share/nginx/html/index.html
    sleep 10
done