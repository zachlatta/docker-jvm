FROM ubuntu
MAINTAINER Zach Latta <zach@zachlatta.com>

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install python-software-properties -y

RUN add-apt-repository ppa:webupd8team/java -y
RUN apt-get update

RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN apt-get install -y oracle-java7-installer
