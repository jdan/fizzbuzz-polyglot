FROM alpine:3.12
RUN apk add sqlite
ADD fizzbuzz.sql fizzbuzz.sql
CMD sqlite3 < fizzbuzz.sql
