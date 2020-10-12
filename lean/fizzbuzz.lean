import tactic
import algebra.divisibility

def fizzbuzz (n : ℕ) : string :=
  if 15 ∣ n then "FizzBuzz"
  else if 3 ∣ n then "Fizz"
  else if 5 ∣ n then "Buzz"
  else to_string n

lemma both_divisors_must_divide {n a b : ℕ} : a ∣ b -> ¬ a ∣ n -> ¬ b ∣ n :=
begin
  intros h₁ h₂ h,
  cases exists_eq_mul_left_of_dvd h₁ with c hc,
  rw hc at h,
  have contra := dvd_of_mul_left_dvd h,
  contradiction,
end

lemma dvd_15_is_fizzbuzz (n : ℕ) : 15 ∣ n → fizzbuzz n = "FizzBuzz" :=
begin
  intro h,
  have h_true : 15 ∣ n = true, { rw eq_true, exact h },
  unfold fizzbuzz,
  conv { find (15 ∣ n) { rw h_true }},
  rw if_true,
end

lemma dvd_3_alone_is_fizz (n : ℕ) : 3 ∣ n → ¬ 5 ∣ n → fizzbuzz n = "Fizz" :=
begin
  intros h₃ h₅,
  have q : 5 ∣ 15 := by { apply dvd.intro 3, refl },
  have h15 : ¬ 15 ∣ n := both_divisors_must_divide q h₅,
  rw ← eq_false at h15,

  -- Begin traversing my if statements
  unfold fizzbuzz,
  conv {
    find (15 ∣ n) { rw h15 },
  },
  rw if_false,
  have h₃_true : 3 ∣ n = true, { rw eq_true, exact h₃ },
  conv { find (3 ∣ n) { rw h₃_true } },
  rw if_true,
end

lemma dvd_5_alone_is_buzz (n : ℕ) : 5 ∣ n → ¬ 3 ∣ n → fizzbuzz n = "Buzz" :=
begin
  intros h₅ h₃,
  -- can I inline `q` somehow?
  have q : 3 ∣ 15 := by { apply dvd.intro 5, refl },
  have h15 : ¬ 15 ∣ n := both_divisors_must_divide q h₃,
  rw ← eq_false at h15,

  -- Begin traversing my if statements
  unfold fizzbuzz,
  conv {
    find (15 ∣ n) { rw h15 },
  },
  rw if_false,
  rw ← eq_false at h₃,
  conv { find (3 ∣ n) { rw h₃ } },
  rw if_false,
  have h₅_true : 5 ∣ n = true, { rw eq_true, exact h₅ },
  conv { find (5 ∣ n) { rw h₅_true } },
  rw if_true,
end

lemma dvd_neither_3_nor_5_is_stringified (n : ℕ) : ¬ 3 ∣ n → ¬ 5 ∣ n → fizzbuzz n = to_string n :=
begin
  intros h₃ h₅,
  have q : 3 ∣ 15 := by { apply dvd.intro 5, refl },
  have h15 : ¬ 15 ∣ n := both_divisors_must_divide q h₃,
  rw ← eq_false at h15,
  rw ← eq_false at h₃,
  rw ← eq_false at h₅,

  unfold fizzbuzz,
  conv { find (15 ∣ n) { rw h15 } }, rw if_false,
  conv { find (3 ∣ n) { rw h₃ } }, rw if_false,
  conv { find (5 ∣ n) { rw h₅ } }, rw if_false,
end

open nat io
def print_fizzbuzz : ℕ → io unit
| 0        := return ()
| (succ n) := print_fizzbuzz n >>
              put_str_ln (fizzbuzz (succ n))

#eval print_fizzbuzz 100
