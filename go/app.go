package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/", helloHandler)
	http.ListenAndServe(":3000", nil)
}

func helloHandler(rw http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(rw, "Hello World!")
}
