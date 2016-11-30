//
//  main.swift
//  PerfectPress
//
//  Created by Ryan Collins on 6/9/16.
//  Copyright (C) 2016 Ryan M. Collins.
//
//===----------------------------------------------------------------------===//
//
// This source file has been modified from the Perfect.org open source project
//
// Copyright (c) 2015 - 2016 PerfectlySoft Inc. and the Perfect project authors
// Licensed under Apache License v2.0
//
// See http://perfect.org/licensing.html for license information
//
//===----------------------------------------------------------------------===//
//

import PerfectLib
import PerfectHTTPServer

do {
	let server = HTTPServer()

	server.serverPort = 8080

	let routes = makeRoutes()
	server.addRoutes(routes)

    server.serverAddress = Config().ip

	// Gather command line options and further configure the server.
	// Run the server with --help to see the list of supported arguments.
	// Command line arguments will supplant any of the values set above.
	configureServer(server)

	// Launch the HTTP server.
	try server.start()

} catch PerfectError.networkError(let err, let msg) {
	print("Network error thrown: \(err) \(msg)")
}
