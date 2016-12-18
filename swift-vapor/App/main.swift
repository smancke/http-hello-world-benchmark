import HTTP
import HTTPRouting
import Transport
import TypeSafeRouting
import Foundation

final class App: HTTP.Responder {
    let router: Router
    let port = 8080
    
    init() {
        router = Router()
        
        router.get("/") { req in
            
            return Response(status: .ok, body: "Hello world.")
        }
    }
    
    func respond(to request: Request) throws -> Response {
        if let handler = router.route(request, with: request) {
            return try handler.respond(to: request)
        } else {
            return Response(status: .notFound, body: "Not found.")
        }
    }
}

let app = App()

let server = try Server<TCPServerStream, Parser<Request>, Serializer<Response>>(port: app.port)

// print("visit http://localhost:\(app.port)/")
try server.start(responder: app) { error in
    print("Got error: \(error)")
}
