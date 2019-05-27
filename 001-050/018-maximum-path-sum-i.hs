solve :: [[Int]] -> Int
solve p = _solve p 0 0
    where
        _solve :: [[Int]] -> Int -> Int -> Int
        _solve [] _ m = m
        _solve (x:xs) i m = max (_solve xs i (m + x!!i)) (_solve xs (i+1) (m + x!!i))

main = do
    s <- readFile "018-input.txt"
    let pyramid = map (map (\s -> read s :: Int) . words) . lines $ s
    print . solve $ pyramid