main :: IO ()
main = interact $ (++ "\n") . show . length
