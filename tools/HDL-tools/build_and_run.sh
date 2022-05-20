#!/bin/bash

if docker build -t vtr-toolchain:v8.0.0 .; then
    mkdir workspace
    
    echo ""
    echo "Starting Container"
    echo ""

    docker run -it --rm --net=host -e DISPLAY=$DISPLAY -v $PWD/workspace:/workspace -v /tmp/.X11-unix:/tmp/.X11-unix vtr-toolchain:v8.0.0 bash
else
    echo "Build faild ;("
fi 