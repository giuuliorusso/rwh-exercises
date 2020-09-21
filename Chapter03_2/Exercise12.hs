import Data.Function (on)
import Data.List (sortBy, sortOn)
import Exercise10

-- https://en.wikipedia.org/wiki/Cross_product
-- https://en.wikipedia.org/wiki/Graham_scan

compareAnglesWith :: (Fractional a, Ord a) => Point a -> Point a -> Point a -> Ordering
compareAnglesWith p k z
  | n > 0 = LT
  | n == 0 = EQ
  | n < 0 = GT
  where
    n = cross p k z

convexHull :: (Fractional a, Ord a) => [Point a] -> [Point a]
convexHull xs
  | length xs < 3 = xs
  | otherwise = scan [p] sortedPoints
  where
    -- Step 1
    -- Find the point with the lowest y-coordinate ('p')
    (p : ps) = sortOn y $ sortOn x xs
    -- Step 2
    -- Sort the points by the angle they and the point 'p' make with the x-axis
    sortedPoints = sortBy (compareAnglesWith p) ps
    -- Step 3
    -- -- Normal case
    scan (x : xs) (y : z : ys) = case calcTurn x y z of
      Straight -> scan (x : xs) (z : ys) -- Skip collinear points
      RightTurn -> scan xs (x : z : ys)
      LeftTurn -> scan (y : x : xs) (z : ys)
    -- -- Edge case
    scan xs [y] = y : xs
