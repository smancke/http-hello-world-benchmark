#!/bin/bash

#docker pull gazgeek/springboot-helloworld
docker build -t hello_nginx ./nginx/
docker pull hello_node
docker pull golang
cd javaspark && docker build -t hello_javaspark .
