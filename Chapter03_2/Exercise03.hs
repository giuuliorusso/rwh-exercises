mean :: Fractional a => [a] -> Maybe a
mean [] = Nothing
mean xs = Just $ uncurry (/) $ foldr (\x (sum, len) -> (sum + x, len + 1)) (0, 0) xs
