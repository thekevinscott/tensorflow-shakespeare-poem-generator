#!/bin/bash

docker stop text-generation
docker rm text-generation
NV_GPU=1 nvidia-docker run -w /code -v $(pwd)/src:/app/src --name text-generation --runtime=nvidia -e NVIDIA_DRIVER_CAPABILITIES=compute,utility -e NVIDIA_VISIBLE_DEVICES=all style-transfer-playground-ai-api
