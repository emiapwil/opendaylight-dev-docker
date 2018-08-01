
FROM ubuntu

MAINTAINER Kai Gao (kai.gao@emiapwil.com)

RUN apt update
RUN apt install -y openjdk-8-jdk
RUN apt install -y maven git openssh-client git-review

RUN apt install -y wget
RUN mkdir -p /opendaylight/.m2
RUN wget -q -O - https://raw.githubusercontent.com/opendaylight/odlparent/master/settings.xml > /opendaylight/.m2/settings.xml
