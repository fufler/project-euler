solve :: [Int] -> Int
solve l = (sum l) ^ 2  - (foldl (\s x -> s + x ^ 2) 0 l)

main = print $ solve [1..100]