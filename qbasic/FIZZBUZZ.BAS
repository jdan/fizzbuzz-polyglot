FOR i = 1 TO 100
  IF i MOD 15 = 0 THEN
    PRINT "FizzBuzz"
  ELSEIF i MOD 3 = 0 THEN
    PRINT "Fizz"
  ELSEIF i MOD 5 = 0 THEN
    PRINT "Buzz"
  ELSE
    PRINT LTRIM$(STR$(i))
  END IF
NEXT

SYSTEM
