solve :: Integer -> Integer -> Integer -> Integer
solve a b s
  | b >= 4000000    = s
  | b `rem` 2 == 0  = solve b (a + b) (s + b)
  | otherwise       = solve b (a + b) s

main = print $ solve 0 1 0