solve n divider max_prime
    | divider >= n         = max max_prime divider
    | n `rem` divider == 0 = solve (n `div` divider) divider $ max max_prime divider
    | otherwise            = solve n (divider + 1) max_prime

main = print $ solve 600851475143 2 0