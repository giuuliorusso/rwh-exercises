splitWith :: (a -> Bool) -> [a] -> [[a]]
splitWith p xs =
  case dropWhile (not . p) xs of
    [] -> []
    ys -> left : splitWith p right
      where
        (left, right) = span p ys
