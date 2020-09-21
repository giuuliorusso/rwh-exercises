firstWords :: String -> [String]
firstWords = map (head . words) . lines
