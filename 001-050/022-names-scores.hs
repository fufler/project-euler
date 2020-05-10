import Data.List.Split
import Data.List
import Data.Char

s_score :: [Char] -> Int
s_score "" = 0
s_score (c:s) = c_score c + s_score s
    where c_score '"' = 0
          c_score c = ord c - ord 'A' + 1

score :: (Int, [Char]) -> Int
score (n, s) = n * s_score s

main = do
    s <- readFile $ "022-input.txt"
    print . sum . map score . zip [1..] . sort . splitOn "," $ s
