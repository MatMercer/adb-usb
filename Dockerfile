FROM ubuntu:22.04
RUN apt-get update -qq && apt-get install -y -qq make gcc-avr avr-libc > /dev/null 2>&1 && rm -rf /var/lib/apt/lists/*
WORKDIR /src
