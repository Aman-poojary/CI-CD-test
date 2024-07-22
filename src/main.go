package main

import (
	"fmt"
	"net/http"
)

// handler function to handle incoming HTTP requests
func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello, World!")
}

func main() {
	// Associate the handler function with the root URL path
	http.HandleFunc("/", handler)
	// Start the HTTP server on port 8080
	http.ListenAndServe(":8080", nil)
}
