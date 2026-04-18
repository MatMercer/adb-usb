#!/bin/sh
# Build ADB-USB firmware in a Docker container.
#
# Usage:
#   ./build-with-docker.sh                 # Teensy++ 2.0 (at90usb1286, default)
#   ./build-with-docker.sh atmega32u4      # Teensy 2.0 / Pro Micro
IMAGE=adb-usb-build
MCU=${1:-at90usb1286}
docker build -q -t "$IMAGE" . && \
docker run --rm -v "$(pwd):/src" "$IMAGE" make MCU=$MCU
