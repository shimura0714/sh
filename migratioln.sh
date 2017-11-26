#!/bin/bash

function usage {
	cat << EOF
Usage: 
grunt.sh -[option]
    option is ...
     -c [migration name]   create migration file 
     -u                    migration up
     -d                    migration down
EOF
}

if [ "-h" = "$1" ]; then
	usage
    exit 1
fi

CONTAINER="0c1983c79e2b"
if [ "-c" = "$1"]; then
    docker exec -it "${CONTAINER}" grunt w
    exit 1
fi

if [ "-d" = "$1"]; then
    docker exec -it "${CONTAINER}" grunt w
    exit 1
fi

if [ "-u" = "$1"]; then
    docker exec -it "${CONTAINER}" grunt w
    exit 1
fi