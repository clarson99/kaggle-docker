FROM gcr.io/kaggle-images/python:latest

RUN mkdir -p /kaggle/working && \
    pip install -U pip && \
    pip install mlflow
