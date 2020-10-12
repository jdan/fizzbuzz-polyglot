package main

import (
	"fmt"
	"strconv"
)

func main() {
	for i := 1; i <= 100; i++ {
		fmt.Println(fizzbuzz(i))
	}
}

func fizzbuzz(number int) string {
	if number%15 == 0 {
		return "FizzBuzz"
	} else if number%3 == 0 {
		return "Fizz"
	} else if number%5 == 0 {
		return "Buzz"
	} else {
		return strconv.Itoa(number)
	}
}
