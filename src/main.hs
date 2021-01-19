-- ghc -O2 --make *.hs -o main -threaded -rtsopts
factorial::Int -> Int
c::Int -> Int -> Int
factorial x = product [1..x]
c line i = factorial line `div` ( factorial (line - i) * factorial i )

main = print( c 5 0) --calculate first num on 5th row
