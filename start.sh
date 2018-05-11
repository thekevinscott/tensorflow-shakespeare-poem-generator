#!/bin/bash

docker stop text-generation
docker rm text-generation
NV_GPU=1 nvidia-docker run --name text-generation
