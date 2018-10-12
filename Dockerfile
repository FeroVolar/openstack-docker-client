FROM ubuntu:latest

MAINTAINER Fero Volar – alian@alian.info

RUN set -ex \
	&& apt-get update \
	&& apt-get install -y \
 			python3-dev \
      python3-pip \
      python-virtualenv \
 	&& apt-get clean \
 	&& pip3 install python-openstackclient 

VOLUME ["/data"]

# Start a shell 
CMD ["/bin/bash"]
