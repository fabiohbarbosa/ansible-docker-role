#!/bin/bash

cd tests && \
  docker-compose stop && \
  docker-compose rm -f && \
  docker build -t ansible-docker-ce-role . && \
  docker-compose up