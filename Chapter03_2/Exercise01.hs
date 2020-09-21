myLength :: [a] -> Int
myLength = foldr (\_ -> (+) 1) 0
