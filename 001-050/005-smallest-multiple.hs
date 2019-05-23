solve :: [Int] -> Int
solve l = foldl lcm 1 l

main = print $ solve [1..20]