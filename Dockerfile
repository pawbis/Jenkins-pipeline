FROM python:3.10.6

WORKDIR /Scripts
COPY Python.py .
RUN Python.py

