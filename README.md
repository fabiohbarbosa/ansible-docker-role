Ansible Docker Role 
======

[![Build Status](https://travis-ci.org/fabiohbarbosa/ansible-docker-role.png)](https://travis-ci.org/fabiohbarbosa/ansible-docker-role)
[![Ansible Galaxy](https://img.shields.io/badge/ansible--galaxy-docker-blue.svg?style=flat-square)](https://galaxy.ansible.com/fabiohbarbosa/docker/)
[![License](https://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat-square)](LICENSE)

Ansible role to install docker and docker compose.

> **Compatibility with new Ubuntu Zesty and Linux Mint Qiana, Rebecca, Rafaela, Rosa, Sarah and Serena!!!!**


Requirements
------------
- Ansible 2.0
- Python-apt
- Sudo 
- Git

Role Variables
--------------

* **docker_users**: Users to add in docker group.
* **docker_compose_version**: Docker compose version. Default: 1.12.0.


Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: fabiohbarbosa.docker, docker_users: [user1, user2], docker_compose_version: 1.13.0 }


License
-------

MIT
