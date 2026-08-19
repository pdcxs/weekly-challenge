module Task1 (sol1) where

sol1 :: String -> Int
sol1 = go 0
  where
    r "" = ""
    r ('0' : '1' : cs) = '1' : '0' : r cs
    r (c : cs) = c : r cs
    go n cs =
      let rs = r cs
       in if rs == cs then n else go (n + 1) rs