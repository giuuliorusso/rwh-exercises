module Exercise09
  ( Point (..),
    Direction (..),
  )
where

data Point a = Point
  { x :: a,
    y :: a
  }
  deriving (Show)

data Direction
  = Straight
  | RightTurn
  | LeftTurn
  deriving (Show, Eq)
