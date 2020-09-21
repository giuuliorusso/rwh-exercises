lastButOne :: [a] -> Maybe a
lastButOne xs@(_ : _ : _) = Just $ last $ init xs
lastButOne _ = Nothing
