FROM debian

MAINTAINER Georg Grab

RUN apt-get update

# binary dependencies of chorserv
RUN apt-get install -y libgd-dev 
RUN apt-get install -y libgmp10 
RUN apt-get install -y git 
RUN apt-get install -y python2.7
RUN apt-get install -y imagemagick
RUN apt-get install -y p7zip-full
RUN apt-get install -y wget
RUN apt-get install -y python-pil

RUN wget -q -O - https://deb.nodesource.com/setup_7.x | bash -
RUN apt-get install -y nodejs

# create symlinks that chorserv utilizes
RUN ln -s /usr/lib/x86_64-linux-gnu/libpng.so /usr/lib/x86_64-linux-gnu/libpng16.so.16
RUN ln -s /usr/lib/x86_64-linux-gnu/libjpeg.so /usr/lib/x86_64-linux-gnu/libjpeg.so.8
