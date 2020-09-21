newtype Tree a = Node (Maybe (a, Tree a, Tree a))
  deriving (Show)
