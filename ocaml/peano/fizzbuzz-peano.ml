type t =
  | O
  | S of t

let rec add a b = match (a, b) with
  | (_, O) -> a
  | (_, S b') -> S (add a b')

let rec sub a b = match (a, b) with
  | (O, _) -> O
  | (_, O) -> a
  | (S a', S b') -> sub a' b'

let rec mult a b = match (a, b) with
  | (_, O) -> O
  | (_, S b') -> add a (mult a b')

let rec lt a b = match (a, b) with
  | (_, O) -> false
  | (O, _) -> true
  | (S a', S b') -> lt a' b'

let rec modulo a b =
  if lt a b then a
  else modulo (sub a b) b

let divides a b =
  O = modulo a b

let rec int_of_peano = function
  | O -> 0
  | S n' -> 1 + int_of_peano n'

let fizzbuzz n =
  let three = S (S (S O)) in
  let five = S (S (S (S (S O)))) in
  match (divides n three, divides n five) with
  | (true, true) -> "FizzBuzz"
  | (true, _) -> "Fizz"
  | (_, true) -> "Buzz"
  | _ -> n |> int_of_peano |> string_of_int

let () =
  let two = S (S O) in
  let five = S (S (S (S (S O)))) in
  let one_hundred = two |> mult two |> mult five |> mult five in
  let rec run i =
    fizzbuzz i |> print_endline;
    if lt i one_hundred then run (S i)
    else ();
  in run (S O);
