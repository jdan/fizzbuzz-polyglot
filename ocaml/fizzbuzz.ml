let fizzbuzz n =
  if n mod 15 = 0 then "FizzBuzz"
  else if n mod 3 = 0 then "Fizz"
  else if n mod 5 = 0 then "Buzz"
  else string_of_int n

let () =
  for i = 1 to 100 do
    fizzbuzz i |> print_endline
  done
