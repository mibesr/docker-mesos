FROM ubuntu:15.04

ENV VERSION_MESOS 0.28.0-2.0.16.ubuntu1504

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF \
	&& echo "deb http://repos.mesosphere.io/ubuntu vivid main" >> /etc/apt/sources.list.d/mesosphere.list \
	&& apt-get update \
	&& apt-get install -y mesos=${VERSION_MESOS} \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/*
