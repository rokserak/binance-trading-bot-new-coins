FROM python:3.10.4-buster

WORKDIR /usr/src/app

RUN  apt update && apt upgrade -y \
  && apt install -y wget \
  && wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
  && apt install -y ./google-chrome-stable_current_amd64.deb

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
