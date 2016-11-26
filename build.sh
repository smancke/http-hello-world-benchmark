#!/bin/bash

docker pull gazgeek/springboot-helloworld
cd nginx && docker build -t hello_nginx .
cd -
docker pull hello_node
docker pull golang
cd javaspark && docker build -t hello_javaspark .
cd -
cd springboot && docker build -t hello_springboot .
cd -
