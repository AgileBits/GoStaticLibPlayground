package main

import "fmt"
import "C"

// PrintWelcomeMessage prints an awesome hello message.
//export PrintWelcomeMessage
func PrintWelcomeMessage() {
	fmt.Println("Hello, Go World!!!")
}

// CustomHelloMessage returns customized greeting.
//export CustomHelloMessage
func CustomHelloMessage(name *C.char) *C.char {
	s := "Hello, fellow gopher " + C.GoString(name) + "!"
	return C.CString(s)
}

func main() {
	// this function is ignored
}
