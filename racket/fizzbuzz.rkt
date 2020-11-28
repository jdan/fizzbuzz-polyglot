#lang racket

(define fizzbuzz
  (λ (n)
    (cond [(= 0 (modulo n 15)) "FizzBuzz"]
          [(= 0 (modulo n 3)) "Fizz"]
          [(= 0 (modulo n 5)) "Buzz"]
          [else n])))

(for ([n (in-range 1 101)])
  (printf "~a\n" (fizzbuzz n)))
