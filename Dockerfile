FROM python:3.9.6

RUN apt-get update && apt-get install -y && apt install -y python3-pip

RUN pip3 install numpy matplotlib torch

RUN mkdir /app

COPY . /app

WORKDIR /app

CMD ["python3", "main.py"]