number_of_divisors :: Int -> Int
number_of_divisors 1 = 1
number_of_divisors n = 2 + length [d | d <- [2..n `div` 2], n `rem` d == 0] 

solve :: Int -> Int
solve n
    | divs > 500 = n * (n + 1) `div` 2
    | otherwise  = solve (n + 1)
    where 
        (e, o) = if n `rem` 2 == 0 then (n, n + 1) else (n + 1, n)
        divs = (number_of_divisors o) * (number_of_divisors (e `div` 2))  - 1

main = do
    print $ solve 1
