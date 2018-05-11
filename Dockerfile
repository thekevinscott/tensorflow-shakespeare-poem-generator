FROM tensorflow/tensorflow:latest-gpu-py3

WORKDIR /code
ADD src /code
CMD python3 /app/src/rnn_train.py
