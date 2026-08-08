module Main (main) where

import Data.Char (chr, intToDigit, ord)

task1 :: String -> String
task1 = dropWhile (== '0')

task2 :: Int -> String
task2 n
  | n == 0 = "0"
  | otherwise = go n ""
  where
    go 0 r = r
    go x r = go (div x 35) (c (mod x 35) : r)
    c x
      | x < 10 = intToDigit x
      | otherwise = chr $ ord 'A' + x - 10

main :: IO ()
main = do
  putStrLn $ task1 "0001023" -- should be 1023
  putStrLn $ task2 123456789 -- should be 2C9G1T
