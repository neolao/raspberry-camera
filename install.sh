#!/bin/bash

# See https://docs.docker.com/install/linux/docker-ce/debian/#install-using-the-convenience-script
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
usermod -aG docker pi

ln -s /usr/include/linux/videodev2.h /usr/include/linux/videodev.h
