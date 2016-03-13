FROM ubuntu:14.04

ENV MESOS_VERSION=0.27.2-2.0.15.ubuntu1404

RUN echo "deb http://repos.mesosphere.io/ubuntu/ trusty main" > /etc/apt/sources.list.d/mesosphere.list && \
  apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF && \
  apt-get -y update && \
  apt-get -y install mesos=$MESOS_VERSION && \
  apt-get clean && rm -rf /var/lib/apt/lists/*