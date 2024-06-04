package main

import "fmt"

type Pair struct {
	a, b interface{}
}

func invert(xs []Pair) []Pair {
	ys := make([]Pair, len(xs))
	for i, p := range xs {
		ys[i] = Pair{a: p.b, b: p.a}
	}

	return ys
}

func main() {
	xs := []Pair{{"a", 1}, {"a", 2}, {1, "b"}, {2, "b"}}

	fmt.Println(invert(xs))
}
