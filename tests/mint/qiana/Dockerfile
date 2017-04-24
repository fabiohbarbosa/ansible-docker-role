FROM fabiohbarbosa/linux-mint:17

USER root

RUN echo deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main >> /etc/apt/sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
RUN apt-get update -qq
RUN apt-get install sudo ansible git -y

ENV USER docker_ansible
RUN /usr/sbin/groupadd $USER
RUN /usr/sbin/useradd $USER -m -d /home/$USER -g $USER -s /bin/bash
RUN echo $USER 'ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER docker_ansible

WORKDIR /tmp/environment-setup

CMD ansible-playbook -i tests/inventory tests/test.yml
#CMD tail -f /dev/null