import Core

func allCatsService(_ req: Request) -> Response {
    Response(status: .ok, headers: [], version: req.version, body: .init(from: "🐢🐢🐢🐢🐢")!)
}

let server = Server.init(from: routed(route(.Get, "api/v1/turtles") ~> allCatsService))
let response = server.process(request: .init(method: .Get, uri: "/api/v1/turtles", body: .empty))

print("Calling: GET /api/v1/turtles -> \(String(from: response.body))")
