#!/bin/bash

# See https://docs.docker.com/install/linux/docker-ce/debian/#install-using-the-convenience-script
#curl -fsSL https://get.docker.com -o get-docker.sh
#sh get-docker.sh
#usermod -aG docker pi

mkdir -m 777 -p /run/stream
ln -s /usr/include/linux/videodev2.h /usr/include/linux/videodev.h

apt-get install -y git libv4l-dev libjpeg8-dev imagemagick cmake
git clone https://github.com/jacksonliam/mjpg-streamer.git ~/mjpg-streamer
cd ~/mjpg-streamer/mjpg-streamer-experimental
make USE_LIBV4L2=true clean all
make DESTDIR=/ install

ln -s $(pwd)/capture.service /etc/systemd/system/capture.service
ln -s $(pwd)/mjpg-stream.service /etc/systemd/system/mjpg-stream.service

systemctl enable capture.service
systemctl enable mjpg-stream.service
