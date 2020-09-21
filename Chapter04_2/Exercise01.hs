import Data.Char (digitToInt, isDigit)
import Data.List (foldl')
import Text.Printf (printf)

digitToInteger :: Char -> Integer
digitToInteger x
  | isDigit x = toInteger $ digitToInt x
  | otherwise = error $ printf "'%c' is not a digit" x

asInteger :: String -> Integer
asInteger "" = error "empty string"
asInteger ('+' : xs) = asInteger xs
asInteger ('-' : xs) = negate $ asInteger xs
asInteger s = foldl' (\acc x -> acc * 10 + digitToInteger x) 0 s
