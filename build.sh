#!/bin/bash

docker stop text-generation
docker rm text-generation
docker build -t text-generation-image .
# NV_GPU=1 nvidia-docker run --name text-generation
NV_GPU=1 nvidia-docker run -it text-generation-image --name text-generation python3 ./rnn_train.py
docker logs -f text-generation
