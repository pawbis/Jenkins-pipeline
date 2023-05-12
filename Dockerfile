FROM python:3.10.6

WORKDIR /Scripts
COPY Python.py .
CMD ["python3", "./Python.py"]

