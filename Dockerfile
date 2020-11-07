FROM centos:centos8

RUN yum -y update && \
  yum -y install wget

WORKDIR /tmp
RUN wget https://golang.org/dl/go1.15.4.linux-amd64.tar.gz && \
  tar -C /usr/local -xzf go1.15.4.linux-amd64.tar.gz

ENV PATH=$PATH:/usr/local/go/bin

CMD go version
