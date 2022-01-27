package main

import "fmt"

var version = "dev"

func main() {
	fmt.Printf("Version: %s\n", version)
	fmt.Println(hello())
        fmt.Println("hahaha")	
}

func hello() string {
	return "Hello Golang golang"
}
