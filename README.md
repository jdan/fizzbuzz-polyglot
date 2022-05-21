## fizzbuzz-polyglot [![Build Status](https://app.travis-ci.com/jdan/fizzbuzz-polyglot.svg?branch=main)](https://app.travis-ci.com/jdan/fizzbuzz-polyglot)

An experiment in writing [FizzBuzz](https://en.wikipedia.org/wiki/Fizz_buzz)
in every language.

```
rake test
[1/7] ruby...OK
[2/7] javascript...OK
[3/7] javascript/from-npm...OK
[4/7] ocaml...OK
[5/7] ocaml/peano...OK
[6/7] j...OK
[7/7] factor...OK
```

```
rake test javascript
javascript...OK
```

### Adding a new language

Example: [factor](/factor) - https://factorcode.org

1. Create a folder with the language name
2. Write code in your language to print the first [100 numbers in FizzBuzz](/fizzbuzz.example)
3. Add a Dockerfile which will execute your code
4. Test your code with `rake test DIRECTORY_NAME`

#### Adding an additional solution to a language

Example: [javascript/from-npm](/javascript/from-npm)

Wanna show off a new technique/framework/etc? Feel free to follow the same steps
above, in a _separate folder_ under your language's directory.
`rake test LANGUAGE/FEATURE` (i.e. `rake test javascript/from-npm`) will still work.
