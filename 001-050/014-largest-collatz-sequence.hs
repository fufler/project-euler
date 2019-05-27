import Data.List
import Data.Ord

chain_length :: Int -> Int -> Int
chain_length c 1 = c
chain_length c n = chain_length (c + 1) next
    where
        next = if even n then n `div` 2 else 3 * n +1


main = print . fst . maximumBy (comparing snd) . map (\n -> (n, chain_length 1 n)) $ [1..999999]