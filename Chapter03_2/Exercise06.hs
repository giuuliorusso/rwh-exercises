import Data.List (sortOn)

sortByLength :: [[a]] -> [[a]]
sortByLength = sortOn length
