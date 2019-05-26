solve :: Int
solve = maximum [a * b | a <- [100..999], b <- [100..999], let p = show $ a * b, p == reverse p]

main = print solve