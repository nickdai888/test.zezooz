package main

import (
	"io"
	"net/http"
)

func hello(rw http.ResponseWriter, req *http.Request) {
	io.WriteString(rw, "hello world!")
}

func main() {
	http.HandleFunc("/", hello)  //设定访问的路径
	http.ListenAndServe(":80", nil) //设定端口和handler
}