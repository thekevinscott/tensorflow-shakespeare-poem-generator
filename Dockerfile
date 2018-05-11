FROM tensorflow/tensorflow:latest-gpu-py3

ADD src /app/src
WORKDIR /app/src
CMD python3 rnn_train.py
