module Main (main) where

import Control.Monad (void)
import Test.HUnit (runTestTT)
import Tests (tests)

main :: IO ()
main = void $ runTestTT tests
