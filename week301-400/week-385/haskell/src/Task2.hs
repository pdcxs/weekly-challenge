module Task2 (task2) where

task2 :: String -> String
task2 s = rm 0 positions s
  where
    positions = idx 0 [] $ go [0] s
    go xs "" = reverse xs
    go xs ('(' : cs) = go (head xs + 1 : xs) cs
    go xs (_ : cs) = go (head xs - 1 : xs) cs
    idx _ rs [] = reverse rs
    idx i rs (0 : 1 : xs) = idx (i + 1) (i : rs) (1 : xs)
    idx i rs (1 : 0 : xs) = idx (i + 1) (i : rs) (0 : xs)
    idx i rs (_ : xs) = idx (i + 1) rs xs
    rm _ [] cs = cs
    rm _ ids "" = ""
    rm i (id : ids) (c : cs)
      | i == id = rm (i + 1) ids cs
      | otherwise = c : rm (i + 1) (id : ids) cs