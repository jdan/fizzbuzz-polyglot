USING: sequences locals combinators math math.parser math.ranges io kernel ;
IN: fizzbuzz

: fizzbuzz ( a b -- seq )
  [a,b]
  [| n |
    { { [ n 15 mod 0 = ] [ "FizzBuzz" ] }
      { [ n 3 mod 0 = ] [ "Fizz" ] }
      { [ n 5 mod 0 = ] [ "Buzz" ] }
      [ n number>string ]
    } cond
  ]
  map ;

: main ( -- ) 1 100 fizzbuzz [ print ] each ;

MAIN: main
