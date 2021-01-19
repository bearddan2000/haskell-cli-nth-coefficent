FROM haskell:latest

COPY src/ /usr/local/

WORKDIR /usr/local

RUN ghc -O2 --make *.hs -o main -threaded -rtsopts

CMD ["./main"]
