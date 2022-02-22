package main

import (
	"fmt"
	"os"
)

func main() {
	print("TEST")
	os.Exit(0)
}

func print(text string) {
	fmt.Println(text)
}
