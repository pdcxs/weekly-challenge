module Task2 (sol2) where

import Data.Char
import qualified Data.Map as M

sol2 :: String -> String
sol2 = toStr . M.toAscList . fst . go M.empty
  where
    go rcd "" = (rcd, "")
    go rcd ('(' : cs) =
      let (r, s) = go M.empty cs
          rcd' = M.unionWith (+) r rcd
       in go rcd' s
    go rcd (')' : cs) =
      let (n, s) = span isDigit cs
          cnt = if null n then 1 else read n
       in (M.map (* cnt) rcd, s)
    go rcd (c : cs) =
      let (nm, s) = span isLowerCase cs
          (n, s') = span isDigit s
          cnt = if null n then 1 else read n
       in go (M.insertWith (+) (c : nm) cnt rcd) s'

toStr :: [(String, Int)] -> String
toStr = concatMap showItem
  where
    showItem (name, 1) = name
    showItem (name, cnt) = name ++ show cnt