import Data.Char
import Data.Function

main = print . sum . map digitToInt . show . fix (\f -> \n -> if n < 3 then n else n * f (n-1)) $ 100