module Main where

sol1 :: Int -> [Int]
sol1 n
  | n > 2 = reverse $ go ([1], [2 .. n])
  | otherwise = []
  where
    go (xs, []) = if valid xs then xs else []
    go (x : xs, rs) =
      let cs = [(r : x : xs, filter (/= r) rs) | r <- rs, isSquare (x + r)]
          res = filter (not . null) (map go cs)
       in case res of
            [] -> []
            (h : _) -> h

valid :: [Int] -> Bool
valid [] = False
valid (x : _) = isSquare (x + 1)

isSquare :: Int -> Bool
isSquare n = let s = floor (sqrt (fromIntegral n)) in s * s == n

sol2 :: String -> [String]
sol2 "" = [""]
sol2 ('?' : cs) = let res = sol2 cs in map ('0' :) res ++ map ('1' :) res
sol2 (c : cs) = map (c :) (sol2 cs)

main :: IO ()
main = do
  print $ sol1 32
  print $ sol1 34
  print $ sol1 15
  print $ sol2 "01??0"
  print $ sol2 "010"
  print $ sol2 "???"
  print $ sol2 "1?10"
  print $ sol2 "1?1?0"
