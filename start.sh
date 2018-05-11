#!/bin/bash

NV_GPU=1 nvidia-docker run -w /code -v $(pwd)/src:/code -it tensorflow/tensorflow:latest-gpu-py3 python3 ./rnn_train.py
