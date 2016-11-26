package main

import (
	"net/http"
)

func main() {
	println("Starting golang server at http://127.0.0.1:8080/")

	http.ListenAndServe(":8080", http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		w.Write([]byte("Hello World"))
	}))
}
