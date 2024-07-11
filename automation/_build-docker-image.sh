#!/bin/sh
echo "---"
echo "---"
echo "----------------- Docker build $1:$2 in dir $3 -----------------"
echo "---"
echo "---"

docker build -t raffo/$1-docker:$2 -f dockerfiles/Dockerfile-spring --build-arg fileType=$4 $3 
