fzbz =: verb define
  NB. attempt divisions of 15, 5, and 3 on our input variable
  attempts =. 0&= (15&|, 5&|, 3&|) y

  NB. get the first index where a division was successful
  NB. and use that to grab FizzBuzz, Buzz, or Fizz. With
  NB. a default of (":y) which converts `y` to a string
  echo > (attempts i. 1) { 'FizzBuzz';'Buzz';'Fizz';(":y)
)

NB. run fzbz over each of the numbers [1,100]
fzbz"0 >:i.100
exit ''
