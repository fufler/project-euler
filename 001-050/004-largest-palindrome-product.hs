get_digits :: Int -> [Int] -> [Int]
get_digits n acc
    | n == 0    = acc
    | otherwise = get_digits (n `div` 10) ((n `rem` 10):acc)

is_palindrome :: Int -> Bool
is_palindrome n = digits == reverse digits
    where digits = get_digits n []

solve :: Int
solve = maximum [a * b | a <- [100..999], b <- [100..999], is_palindrome (a * b)]

main = print solve