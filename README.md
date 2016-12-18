# HTTP 'Hello World' Benchmark
Mini bechmark, comparing the performance HTTP 'hello world' on different stacks:

* NGINX 1.11.5
* Java Spring-Boot 1.4.2, Oracle JDK 8
* Java Spark Framework
* Java Undertow
* Golang 1.7
* Golang 1.7 with [Fasthttp](https://github.com/valyala/fasthttp)
* NodeJS 7.2
* CGI (Apache+mksh)

# Results

![Result](result.png)

| Framework                  | Req/sec (Docker)    | Req/sec (Native)
|----------------------------|--------------------:|------------------:|
| nginx                      | 105012              | 105844            |
| Spring-Boot (first run)    | 15848               | 18138             |
| Spring-Boot (second run)   | 27942               | 28170             |
| Java Spark (first run)     | 73393               | 87787             |
| Java Spark (second run)    | 84323               | 97970             |
| Java Undertow (first run)  | 189187              | 199366            |
| Java Undertow (second run) | 206238              | 221360            |
| Golang                     | 122949              | 126742            |
| Golang - fasthttp          | 192478              | 196169            |
| NodeJS                     | 46803               | 49421             |
| CGI                        | 3069                |                   |
| Swift/Kitura               | 35145               |                   |

# Test setup
* Ubuntu 16.04.
* i7-6600U CPU @ 2.60GHz (2 cores, with hyper threadding)
* Tested with [wrk](https://github.com/wg/wrk) (v4.0.0): 4 threads, 20 connections, 20 seconds
* Setup 1: All Servers are running in a docker container (v1.12.3, --net=host)
* Setup 2: Local running services

