myTakeWhile :: (a -> Bool) -> [a] -> [a]
myTakeWhile p [] = []
myTakeWhile p (x : xs)
  | p x = x : myTakeWhile p xs
  | otherwise = []

myTakeWhileFoldr :: (a -> Bool) -> [a] -> [a]
myTakeWhileFoldr p = foldr (\x acc -> if p x then x : acc else []) []
