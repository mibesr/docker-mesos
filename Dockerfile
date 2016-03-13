FROM ubuntu:15.04

ENV VERSION_MESOS=0.27.2-2.0.15.ubuntu1504

RUN echo "deb http://repos.mesosphere.io/ubuntu/ $(lsb_release -cs) main" > /etc/apt/sources.list.d/mesosphere.list && \
  apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF && \
  apt-get -y update && \
  apt-get -y install mesos=$VERSION_MESOS && \
  apt-get clean && rm -rf /var/lib/apt/lists/*