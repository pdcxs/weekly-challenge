module Task1 (task1) where

import qualified Data.Map as M

task1 :: String -> String -> [String]
task1 s1 s2 = M.keys $ M.filter (== (1 :: Int)) rcd
  where
    ws = words $ s1 ++ " " ++ s2
    rcd = M.fromListWith (+) [(w, 1) | w <- ws]

