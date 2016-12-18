import Kitura

// All Web apps need a router to define routes
let router = Router()

router.get("/") { _, response, next in
     try response.send("Hello World.").end()
}

// Add HTTP Server to listen on port 8080
Kitura.addHTTPServer(onPort: 8080, with: router)

// start the framework - the servers added until now will start listening
Kitura.run()
