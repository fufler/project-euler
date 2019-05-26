import Data.Numbers.Primes

main = print $ sum (takeWhile (\x -> x < 2000000) primes)