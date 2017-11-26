#!/bin/bash

function usage {
	cat << EOF
Usage: 
grunt.sh -[option]
    option is ...
     -w      update watch
     -d      compile to deploy style
EOF
}

if [ "-h" = "$1" ]; then
	usage
    exit 1
fi

CONTAINER="0c1983c79e2b"
if [ "-w" = "$1" ]; then
    docker exec -it "${CONTAINER}" grunt w
    exit 1
fi

if [ "-d" = "$1" ]; then
    docker exec -it "${CONTAINER}" grunt d
    exit 1
fi
docker exec -it "${CONTAINER}" grunt