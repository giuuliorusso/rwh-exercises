import Data.List (transpose)

turnTextVertically :: String -> String
turnTextVertically = unlines . transpose . lines
