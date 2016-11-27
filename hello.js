// Load the http module to create a clustered http server.
const cluster = require('cluster');
const http = require('http');
const numCPUs = require('os').cpus().length;

if (cluster.isMaster) {
  // Fork workers.
  for (var i = 0; i < numCPUs; i++) {
    cluster.fork();
  }

  cluster.on('exit', (worker, code, signal) => {
    console.log(`worker ${worker.process.pid} died`);
  });
} else {
  // Workers can share any TCP connection
  // Configure our HTTP server to respond with Hello World to all requests.
  var server = http.createServer(function (request, response) {
    response.writeHead(200, {"Content-Type": "text/plain"});
    response.end("Hello World\n");
  });

  // Listen on port 8000, IP defaults to 127.0.0.1
  server.listen(8080);

  // Put a friendly message on the terminal
  console.log("Server nodejs at http://127.0.0.1:8080/");
}
