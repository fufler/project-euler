fibs :: [Int]
fibs = r
    where
        r = map f [0..]
        f 0 = 0
        f 1 = 1
        f n = r!!(n-1) + r!!(n-2)

main = print . sum . (filter even) . (takeWhile (\n -> n < 4000000)) $ fibs