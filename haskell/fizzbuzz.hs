fizzbuzz :: Integer -> String
fizzbuzz i
  | (mod i 15) == 0  = "FizzBuzz"
  | (mod i 5)  == 0  = "Buzz"
  | (mod i 3)  == 0  = "Fizz"
  | otherwise        = show i

main = do mapM_ (putStrLn . fizzbuzz ) [1..100]
