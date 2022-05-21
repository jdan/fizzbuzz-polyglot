(for [i 1 100]
	; if-statements can have multiple clauses!
	(if (= (% i 15) 0)
			(print "FizzBuzz")
			(= (% i 3) 0)
			(print "Fizz")
			(= (% i 5) 0)
			(print "Buzz")
			(print i)))