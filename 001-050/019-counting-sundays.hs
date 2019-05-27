months :: Int -> [Int]
months y = [31, feb, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    where feb = if y `rem` 4 == 0 && (y `rem` 100 /= 0 || y `rem` 400 == 0) then 29 else 28


main = print . length . filter (5==). map (\d -> d `rem` 7) . scanl1 (+) . concatMap months $ [1901..2000]