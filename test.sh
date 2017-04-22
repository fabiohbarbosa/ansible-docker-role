#!/bin/bash

cd tests && \
  docker-compose stop && \
  docker-compose rm -f && \
  docker build -t ansible-docker-role . && \
  docker-compose up