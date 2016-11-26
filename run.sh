#!/bin/bash

docker rm -f hello_nginx hello_node hello_golang springboot_hello 2> /dev/null 1> /dev/null

pid=$(docker run -d --name spark_hello -p 8080:8080 hello_javaspark)
sleep 1
echo
echo "-- HELLO Javaspark 1 --"
wrk -c 20 -t 4 -d 20 http://127.0.0.1:8080
echo
echo "-- HELLO Javaspark 2 --"
wrk -c 20 -t 4 -d 20 http://127.0.0.1:8080
docker rm -f $pid
exit
pid=$(docker run -d --name springboot_hello -p 8080:8080 gazgeek/springboot-helloworld)
sleep 10
echo
echo "-- HELLO Spring-Boot 1 --"
wrk -c 20 -t 4 -d 20 http://127.0.0.1:8080
echo
echo "-- HELLO Spring-Boot 2 --"
wrk -c 20 -t 4 -d 20 http://127.0.0.1:8080
docker rm -f $pid

sleep 1
echo
echo "-- HELLO nginx --"
pid=$(docker run -d --name hello_nginx -p 8080:80 hello_nginx)
sleep 1
wrk -c 20 -t 4 -d 20 http://127.0.0.1:8080
docker rm -f $pid

sleep 1
echo
echo "-- HELLO node --"
pid=$(docker run -d --name hello_node -p 8080:8080 -v $PWD:/work --workdir /work node node hello.js)
sleep 1
wrk -c 20 -t 4 -d 20 http://127.0.0.1:8080
docker rm -f $pid

sleep 1
echo
echo "-- HELLO go --"
pid=$(docker run -d --name hello_golang -p 8080:8080 -v $PWD:/work --workdir /work golang go run hello.go)
sleep 1
wrk -c 20 -t 4 -d 20 http://127.0.0.1:8080
docker rm -f $pid
