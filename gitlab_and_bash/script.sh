#!/bin/bash

image="alinapodryabinkina/python"  

# get timestamp for the tag  
timestamp=$(date +%Y%m%d%H%M%S)  

tag=$image:$timestamp  

# build docker image
docker build -t $tag .

# docker login
while getopts u:p: flag
do 
    case "${flag}" in
        u) username=${OPTARG};;
        p) passwd=${OPTARG};;
    esac
done

docker login -u="$username" -p="$passwd"
  
# publish image to docker hub
docker push $tag

#deploy to minikube
helm upgrade flask-release1 ./Chart --set container.image=$tag 