package main

import "fmt"

func duple_recursive(n int8, x string, los []string) []string {
  if n == 0 {
    return los
  }

  return append(duple_recursive(n - 1, x, los), x)
}

func duple(n int8, x string) []string {
  return duple_recursive(n, x, make([]string, 0))
}

func main() {
  fmt.Println("duple(2 , `3`: )", duple(2 , "3"))
  fmt.Println("duple(4 , `ha ha`: )", duple(4 , "ha ha"))
  fmt.Println("duple(0 , `bla`: )", duple(0 , "blah"))
}