FROM ubuntu:trusty

MAINTAINER foostan ks@fstn.jp

RUN apt-get update
RUN apt-get install -y unzip wget curl

RUN wget https://dl.bintray.com/mitchellh/consul/0.4.1_linux_amd64.zip
RUN unzip 0.4.1_linux_amd64.zip
RUN mv consul /usr/local/bin

RUN wget https://dl.bintray.com/mitchellh/consul/0.4.1_web_ui.zip
RUN unzip 0.4.1_web_ui.zip

CMD ["/bin/bash"]
