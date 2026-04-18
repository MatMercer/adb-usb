#!/bin/sh
# Build ADB-USB firmware in a Docker container.
#
# Usage:
#   ./build-with-docker.sh                 # Teensy++ 2.0 (at90usb1286, default)
#   ./build-with-docker.sh atmega32u4      # Teensy 2.0 / Pro Micro
MCU=${1:-at90usb1286}
docker run --rm -v "$(pwd):/src" -w /src ubuntu:22.04 \
  bash -c "apt-get update -qq && apt-get install -y -qq make gcc-avr avr-libc > /dev/null 2>&1 && make MCU=$MCU"
