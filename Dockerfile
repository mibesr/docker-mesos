FROM xiaocao/mesosphere-base

ENV VERSION_MESOS 0.28.0-2.0.16.ubuntu1504

RUN apt-get update && \
    apt-get install -y mesos=${VERSION_MESOS} && \
	apt-get clean && rm -rf /var/lib/apt/lists/*
