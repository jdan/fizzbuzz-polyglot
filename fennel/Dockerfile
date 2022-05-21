FROM woahbase/alpine-lua

# We've vendored in fennel
# wget https://fennel-lang.org/downloads/fennel-1.1.0
COPY fennel-1.1.0 .
RUN chmod +x fennel-1.1.0

COPY fizzbuzz.fnl .

CMD ["./fennel-1.1.0", "fizzbuzz.fnl"]