#!/bin/bash

raspistill --nopreview -w 640 -h 480 -q 5 -o /run/stream/camera.jpg -tl 500 -t 9999999
