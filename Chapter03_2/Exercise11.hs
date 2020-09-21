import Exercise10

calcTurns :: (Num a, Ord a) => [Point a] -> [Direction]
calcTurns xs@(a : b : c : _) = calcTurn a b c : calcTurns (tail xs)
calcTurns _ = []
