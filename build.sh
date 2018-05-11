#!/bin/bash

docker stop text-generation
docker rm text-generation
docker build -t text-generation:latest .
NV_GPU=1 nvidia-docker run --name text-generation
