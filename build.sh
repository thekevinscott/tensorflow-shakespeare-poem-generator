#!/bin/bash

docker stop text-generation
docker rm text-generation
docker build -t text-generation-image .
# NV_GPU=1 nvidia-docker run --name text-generation
NV_GPU=1 nvidia-docker run -it --name text-generation text-generation-image
docker logs -f text-generation
