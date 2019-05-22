#---------------------------------------------------------------------------
# Dockefile to build Docker Image of Python script running on Ubuntu
#
# Made by Makym Sherbuna  22-May-2019
#---------------------------------------------------------------------------

FROM ubuntu

RUN apt-get update
RUN apt-get -y install python3.6
RUN apt-get -y install python-psutil

WORKDIR /usr/local/bin

COPY metrics .

RUN chmod u+x /usr/local/bin/metrics

RUN ./metrics cpu

RUN ./metrics mem
