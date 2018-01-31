FROM ubuntu:16.04

RUN apt-get update -q
RUN apt-get install -yq \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common \
    python-pip

RUN pip install awscli

RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

RUN apt-get update -q
RUN apt-get install -yq docker-ce
