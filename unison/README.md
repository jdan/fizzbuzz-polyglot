## unison

FizzBuzz as written in [Unison](https://www.unisonweb.org/) with the [base](https://github.com/unisonweb/base) libraries.

It leans heavily on the [jdan/unisonweb-base](https://hub.docker.com/r/jdan/unisonweb-base) docker image which contains the `ucm` (Unison Codebase Manager) executable, and a "codebase" containing the base library.

This solution works by executing the `mymain` function in `fizzbuzz.u` with the codebase contained in the [jdan/unisonweb-base](https://hub.docker.com/r/jdan/unisonweb-base) docker image.

Since `ucm` does not support simple text output, we write to a file and `cat` it as our solution.
