import Data.Char (digitToInt, isDigit)
import Data.List (foldl')
import Text.Printf (printf)

type ErrorMessage = String

digitToInteger :: Char -> Either ErrorMessage Integer
digitToInteger x
  | isDigit x = Right $ toInteger $ digitToInt x
  | otherwise = Left $ printf "'%c' is not a digit" x

asInteger :: String -> Either ErrorMessage Integer
asInteger "" = Left "empty string"
asInteger ('+' : xs) = asInteger xs
asInteger ('-' : xs) = negate <$> asInteger xs
asInteger s = foldl' f (Right 0) s
  where
    f acc x = do
      acc <- acc
      x <- digitToInteger x
      return $ acc * 10 + x
