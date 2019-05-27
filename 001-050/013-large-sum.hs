main = do
    numbers <- fmap (map read . lines)  (readFile "013-input.txt")
    print (read (take 10 . show . sum $ numbers) :: Int)