#!/bin/bash

set -e

cd nginx && docker build -t hello_nginx .
cd -
cd fasthttp && docker build -t hello_fasthttp .
cd -
cd javaspark && docker build -t hello_javaspark .
cd -
cd undertow && docker build -t hello_undertow .
cd -
cd springboot && docker build -t hello_springboot .
cd -
cd swift-vapor && docker build -t hello_swift_vapor .

docker pull node
docker pull golang
