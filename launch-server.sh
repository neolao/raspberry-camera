#!/bin/bash

MJPG_STREAM_WWW=~/mjpg-streamer/mjpg-streamer-experimental/www/
export LD_LIBRARY_PATH=/usr/local/lib

mjpg_streamer -i "input_file.so -f /run/stream -n camera.jpg" -o "output_http.so -w $MJPG_STREAM_WWW"
