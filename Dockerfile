FROM debian:bullseye-slim
MAINTAINER neolao <contact@neolao.com>

RUN apt-get update && \
    apt-get install -y \
    git libv4l-dev libjpeg8-dev imagemagick
RUN git clone https://github.com/jacksonliam/mjpg-streamer.git
RUN cd mjpg-streamer/mjpg-streamer-experimental && \
    make USE_LIBV4L2=true clean all && \
    make DESTDIR=/usr install
    
