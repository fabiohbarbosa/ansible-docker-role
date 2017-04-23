FROM ubuntu:17.04

USER root

RUN ulimit -n 1048576
RUN ulimit -p unlimited

RUN apt-get update && \
    apt-get install curl sudo ansible git -y

ENV USER docker_ansible
RUN /usr/sbin/groupadd $USER
RUN /usr/sbin/useradd $USER -m -d /home/$USER -g $USER -s /bin/bash
RUN echo $USER 'ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER docker_ansible

WORKDIR /tmp/environment-setup

CMD ansible-playbook -i tests/inventory tests/site.yml