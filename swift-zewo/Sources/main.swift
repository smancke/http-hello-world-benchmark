import HTTPServer

let app = BasicRouter { route in
    route.get("/") { request in
        return Response(body: "Hello World.")
    }

}

let contentNegotiation = ContentNegotiationMiddleware(mediaTypes: [.json])

try Server(port: 8080, reusePort: true, middleware: [contentNegotiation], responder: app).start()
