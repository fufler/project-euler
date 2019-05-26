chain_length :: Int -> Int -> Int
chain_length 1 c = c
chain_length n c = chain_length next (c + 1)
    where next = if n `rem` 2 == 0 then n `div` 2 else 3 * n +1


solve :: Int -> Int -> Int -> [Int] -> Int
solve _ mi _ [] = mi + 1
solve m mi ci (x:xs) = solve nm nmi (ci + 1) xs
    where (nm, nmi) = if x > m then (x, ci) else (m, mi)

main = print $ solve 0 (-1) 0 [chain_length x 1 | x <- [1..999999]]