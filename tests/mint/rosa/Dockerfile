FROM vcatechnology/linux-mint:17.3

USER root

RUN apt-get update -qq && \
    apt-get install -qq sudo ansible git python-apt -y

RUN apt-get install ca-certificates -y

ENV USER docker_ansible
RUN /usr/sbin/groupadd $USER
RUN /usr/sbin/useradd $USER -m -d /home/$USER -g $USER -s /bin/bash
RUN echo $USER 'ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER docker_ansible

WORKDIR /tmp/environment-setup

CMD ansible-playbook -i tests/inventory tests/test.yml
#CMD tail -f /dev/null