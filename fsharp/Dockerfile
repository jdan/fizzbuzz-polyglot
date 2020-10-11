FROM fsharp

WORKDIR /app

COPY main.fs /app

RUN fsharpc main.fs

ENTRYPOINT ["mono", "/app/main.exe"] 
