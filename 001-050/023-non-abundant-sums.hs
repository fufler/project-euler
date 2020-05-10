import Data.IntSet (IntSet)
import qualified Data.IntSet as IntSet


is_abundant :: Int -> Bool
is_abundant n = (>n) . sum . filter (\p -> n `mod` p == 0) $ [1.. n `div` 2]

all_abundants :: [Int]
all_abundants = filter is_abundant $ [1..28124]

all_abundants_set :: IntSet
all_abundants_set =  IntSet.fromList all_abundants

matches :: Int -> Bool
matches n = not . any (\k -> (n - k) `IntSet.member` all_abundants_set) . takeWhile (<n) $ all_abundants


main = print . sum . filter matches $ [1..28124]