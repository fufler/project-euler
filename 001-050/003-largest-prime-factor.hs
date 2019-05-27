solve :: Int -> Int
solve n = _solve n 2
    where
        _solve n d
            | d == n         = d
            | n `rem` d == 0 = _solve (n `div` d) d
            | otherwise      = _solve n (d + 1)

main = print $ solve 600851475143