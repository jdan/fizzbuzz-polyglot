FROM nimlang/nim:alpine
COPY fizzbuzz.nim .
RUN nim c -d:release fizzbuzz.nim 
CMD ["./fizzbuzz"]
