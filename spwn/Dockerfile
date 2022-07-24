FROM rust:1.59

RUN git clone https://github.com/Spu7Nix/SPWN-language.git

COPY fizzbuzz.spwn test/fizzbuzz.spwn
RUN cargo run build test/fizzbuzz.spwn -l
