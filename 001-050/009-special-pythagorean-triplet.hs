solve :: Int -> Int
solve s = head [a * b * c | c <- [1..s `div` 2], b <- [2..s - c], let a = s - c - b, a > 0, a < b, a ^ 2 + b ^ 2 == c ^ 2]

main = print $ solve 1000