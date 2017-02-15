FROM ubuntu:16.04

RUN \
  apt update 
RUN \
  apt install -y curl openssh-client libssl-dev python-pip

RUN apt-get install -y software-properties-common && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y ansible && \
    pip install --upgrade pip && \
    pip install --upgrade shade
   

RUN mkdir -p /ansible/playbooks
WORKDIR /ansible/playbooks

CMD /bin/bash
