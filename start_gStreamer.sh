#!/bin/bash
raspivid -t 999999 -w 1920 -h 1080 -fps 30 -rot 180 -b 8000000 -o - | gst-launch-1.0 -e -vvv fdsrc ! h264parse ! rtph264pay pt=96 config-interval=5 ! udpsink host=10.0.1.15 port=5004
