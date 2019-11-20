#!/bin/bash

scriptPath="$( readlink -f "$( dirname "$0" )" )/$( basename "$0" )"
currentDirectory=$(dirname $scriptPath)

raspistill --nopreview -w 640 -h 480 -q 5 -o $currentDirectory/stream/camera.jpg -tl 500 -t 9999999
