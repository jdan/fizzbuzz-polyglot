module Program

let fizzbuzz n = 
    match n with 
    | x when x % 15 = 0 -> "FizzBuzz"
    | x when x % 3 = 0 -> "Fizz"
    | x when x % 5 = 0 -> "Buzz"
    | _ -> n |> string

[<EntryPoint>]
let main args =
    for i in 1..100 do
        fizzbuzz i |> printfn "%s"
    0
