data Tree a
  = Node a (Tree a) (Tree a)
  | Empty
  deriving (Show)

treeHeight :: Tree a -> Int
treeHeight Empty = 0
treeHeight (Node x left right) = 1 + max (treeHeight left) (treeHeight right)
