d :: Int -> Int
d n = sum [x | x <- [1..n `div` 2], n `mod` x == 0]

amicable :: Int -> Bool
amicable n = m /= n && d m == n 
    where m = d n

main = print . sum $ [x | x <- [1..10000], amicable x]