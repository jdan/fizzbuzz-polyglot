WITH numbers(i) AS (
  SELECT 1
  UNION ALL
  SELECT i + 1
  FROM numbers
  WHERE i < 100
)
SELECT
  CASE
    WHEN i % 15 == 0 THEN 'FizzBuzz'
    WHEN i % 3 == 0 THEN 'Fizz'
    WHEN i % 5 == 0 THEN 'Buzz'
    ELSE i
  END
FROM numbers;
