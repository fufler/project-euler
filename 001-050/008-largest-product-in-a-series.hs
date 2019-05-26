import Data.Char
import Data.List

solve :: String -> Integer
solve n = maximum $ map product all_products
    where
        all_products = foldr (zipWith (:)) (repeat []) $ take 13 $ tails . (map fromIntegral . map digitToInt) $ n


main = do 
    n <- readFile "008-input.txt"
    print $ solve n