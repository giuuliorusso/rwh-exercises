module Exercise10
  ( module Exercise09,
    cross,
    calcTurn,
  )
where

import Exercise09

-- https://en.wikipedia.org/wiki/Cross_product
-- https://en.wikipedia.org/wiki/Graham_scan

cross :: Num a => Point a -> Point a -> Point a -> a
cross (Point x1 y1) (Point x2 y2) (Point x3 y3) =
  (x2 - x1) * (y3 - y1) - (y2 - y1) * (x3 - x1)

calcTurn :: (Num a, Ord a) => Point a -> Point a -> Point a -> Direction
calcTurn p1 p2 p3
  | n == 0 = Straight
  | n < 0 = RightTurn
  | n > 0 = LeftTurn
  where
    n = cross p1 p2 p3
