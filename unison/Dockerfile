FROM jdan/unisonweb-base:M1m

ADD . .

RUN ucm -codebase ./codebase run.file fizzbuzz.u mymain
CMD ["cat", "output.txt"]
