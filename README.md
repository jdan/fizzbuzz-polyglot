## fizzbuzz-polyglot [![Build Status](https://travis-ci.org/jdan/fizzbuzz-polyglot.svg?branch=main)](https://travis-ci.org/jdan/fizzbuzz-polyglot)

An experiment in writing [FizzBuzz](https://en.wikipedia.org/wiki/Fizz_buzz)
in every language.

### Adding a new language

Example: [factor](/blob/main/factor) - https://factorcode.org

1. Create a folder with the language name
2. Write code in your language to print the first [100 numbers in FizzBuzz](/blob/main/fizzbuzz.example)
3. Add a Dockerfile which will execute your code
4. Test your code with `rake test DIRECTORY_NAME`

#### Adding an additional solution to a language

Example: [javascript/from-npm](/blob/main/javascript/from-npm)

Wanna show off a new technique/framework/etc? Feel free to follow the same steps
above, in a _separate folder_ under your language's directory.
`rake test LANGUAGE/FEATURE` (i.e. `rake test javascript/from-npm`) will still work.
