#!/bin/bash

scriptPath="$( readlink -f "$( dirname "$0" )" )/$( basename "$0" )"
currentDirectory=$(dirname $scriptPath)

export LD_LIBRARY_PATH=/usr/local/lib

mjpg_streamer -i "input_file.so -f $currentDirectory/stream -n camera.jpg" -o "output_http.so -w $currentDirectory/www"
