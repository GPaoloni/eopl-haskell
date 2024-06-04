package main

import "fmt"

func down(xs []any) [][1]any {
	ys := make([][1]any, len(xs))
	for i, e := range xs {
		ys[i] = [1]any{e}
	}

	return ys
}

func main() {
  xs := []any{1, 2, 3}
	fmt.Println(down(xs))
}
