package main

import (
	"github.com/valyala/fasthttp"
)

func main() {

	fasthttp.ListenAndServe(":8080", func(ctx *fasthttp.RequestCtx) {
		ctx.Response.Header.Set("Content-Type", "text/plain")
		ctx.WriteString("Hello World")
	})
}
