#! /bin/bash

if [[ "$(docker images jenkins/python 2> /dev/null)" == "" ]]; then
    echo "Docker Image exists!"
fi