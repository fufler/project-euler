permutate :: [Int] -> [[Int]]
permutate (x:[]) = [[x]]
permutate l = concatMap (\h -> map (h:) $ permutate [x | x <- l, x /= h]) l

main = print . (!!999999) . permutate $ [0..9]