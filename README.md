# HTTP 'Hello World' Benchmark
Mini bechmark, comparing the performance HTTP 'hello world' on different stacks:

* NGINX 1.11.5
* Java Spring-Boot 1.4.2, Oracle JDK 8
* Java Spark Framework
* Golang 1.7
* NodeJS 7.2

# Results

![Result](result.png)

| Framework                | Req/sec (Docker)    | Req/sec (Native)
|--------------------------|--------------------:|------------------:|
| nginx                    | 25861               | 105844            |
| Spring-Boot (first run)  |  6041               |  9625             |
| Spring-Boot (second run) | 10705               | 17568             |
| Java Spark (first run)   | 41443               | 87787             |
| Java Spark (second run)  | 47698               | 97970             |
| Golang                   | 60662               | 126742            |
| NodeJS                   | 20812               | 27000             |


# Test setup
* Ubuntu 16.04.
* i7-6600U CPU @ 2.60GHz (2 cores, with hyper threadding)
* Tested with [wrk](https://github.com/wg/wrk) (v4.0.0): 4 threads, 20 connections, 20 seconds
* Setup 1: All Servers are running in a docker container (v1.12.3)
* Setup 2: Local Running Services, without docker

