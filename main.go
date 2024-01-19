package main

import (
	"fmt"
	"net/http"
	"os"
)

func myHandler(w http.ResponseWriter, r *http.Request) {
	fmt.Printf("Hola, I'm myHandler\n")
}

func main() {
	PORT := ":8080"
	arguments := os.Args
	if len(arguments) != 1 {
		PORT = ":" + arguments[1]
	}

	http.HandleFunc("/", myHandler)

	err := http.ListenAndServe(PORT, nil)
	if err != nil {
		fmt.Println(err)
		return
	}
}
