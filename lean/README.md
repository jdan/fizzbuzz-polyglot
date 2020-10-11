## lean

A formally-verified solution in [Lean + mathlib](https://leanprover-community.github.io/get_started.html).

The lean theorem prover (combined with mathlib) is a futuristic proof assistant. I first found out about it
through the [Natural Number Game](https://wwwf.imperial.ac.uk/~buzzard/xena/natural_number_game/).

This solution prints FizzBuzz (of course), but also includes four lemmas and their proofs.

- dvd_15_is_fizzbuzz (n : ℕ) : 15 ∣ n → fizzbuzz n = "FizzBuzz"

  Numbers divisible by 15 are represented as "FizzBuzz"

- dvd_3_alone_is_fizz (n : ℕ) : 3 ∣ n → ¬ 5 ∣ n → fizzbuzz n = "Fizz"

  Numbers divisible by 3, but not divisible by 5, are represented as "Fizz"

- dvd_5_alone_is_buzz (n : ℕ) : 5 ∣ n → ¬ 3 ∣ n → fizzbuzz n = "Buzz"

  Numbers divisible by 5, but not divisible by 3, are represented as "Buzz"

- dvd_neither_3_nor_5_is_stringified (n : ℕ) : ¬ 3 ∣ n → ¬ 5 ∣ n → fizzbuzz n = to_string n

  Numbers which are neither divisible by 3 nor 5 are represented by their string representation
