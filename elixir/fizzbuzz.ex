defmodule FizzBuzz do
  def fizzbuzz(i) when rem(i, 15) == 0, do: "FizzBuzz"
  def fizzbuzz(i) when rem(i, 5) == 0, do: "Buzz"
  def fizzbuzz(i) when rem(i, 3) == 0, do: "Fizz"
  def fizzbuzz(i), do: Integer.to_string(i)
end

1..100
|> Enum.map(&FizzBuzz.fizzbuzz/1)
|> Enum.each(&IO.puts/1)
