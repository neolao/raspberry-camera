#!/bin/bash

raspistill --nopreview -w 800 -h 600 -q 90 -o /run/stream/camera.jpg -tl 100 -t 9999999
