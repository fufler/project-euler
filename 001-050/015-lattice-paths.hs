
solve m n = r !! ((m+1)*(n+1)-1)
  where
    r = map f [(i, j) | i <- [0..m], j <- [0..n]]
    f (0,_) = 1
    f (_,0) = 1
    f (i,j) = c(i-1,j) + c(i,j-1)
    c (k,l) = r!!(k*(n+1)+l)

main = print $ solve 20 20