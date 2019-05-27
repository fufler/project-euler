adjacent_cells_product :: [[Int]] -> Int -> Int -> Int -> Int -> Int -> Int
adjacent_cells_product g n i j di dj = product [g!!y!!x | k <- [0..n - 1], let x = j + dj * k, let y = i + di * k]

single_direction_products :: [[Int]] -> Int -> [Int] -> [Int] -> Int -> Int -> [Int]
single_direction_products g count i_range j_range di dj = [adjacent_cells_product g count i j di dj | i <- i_range, j <- j_range]

all_products g = (single_direction_products g 4 [0..m - 1] [0..n - 4] 0 1) ++ 
                 (single_direction_products g 4 [0..m - 4] [0..n - 1] 1 0) ++
                 (single_direction_products g 4 [0..m - 4] [0..n - 4] 1 1) ++
                 (single_direction_products g 4 [0..m - 4] [n - 1, n - 2..3] 1 (-1))
    where m = length g
          n = length $ head g

main = do
    s <- readFile $ "011-input.txt"
    let numbers = map (map (\s -> read s :: Int) . words ) . lines $ s
    print . maximum . all_products $ numbers