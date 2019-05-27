wordify :: Int -> [Char]
wordify n
    | n == 0             = []
    | n < 20             = c1 !! (n-1)
    | n >= 20 && n < 100 = c2 !! (d2 - 2) ++ wordify d3
    | n == 1000          = "onethousand"
    | n `rem` 100 == 0   = c1 !! (d1-1) ++ "hundred"
    | otherwise          = c1 !! (d1-1) ++ "hundredand" ++ wordify (d2*10 + d3)
    where
        d1 = n `div` 100
        d2 = (n `div` 10) `rem` 10
        d3 = n `rem` 10
        c1 = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
        c2 = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

main = print . sum . map (length . wordify) $ [1..1000]
