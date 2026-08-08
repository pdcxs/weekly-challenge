module Tests (tests) where

import Data.List (sort)
import Task1 (task1)
import Task2 (task2)
import Test.HUnit

tests :: Test
tests =
  TestList
    [ TestLabel "Test 1 of Task 1" $
        TestCase $
          assertEqual
            ""
            ["orange"]
            (task1 "apple banana apple" "banana orange"),
      TestLabel "Test 2 of Task 1" $
        TestCase $
          assertEqual
            ""
            (sort ["cat", "dog", "bird", "fish"])
            (task1 "cat dog" "bird fish"),
      TestLabel "Test 3 of Task 1" $
        TestCase $
          assertEqual
            ""
            (sort ["brown", "fox"])
            (task1 "the quick brown fox" "the quick"),
      TestLabel "Test 4 of Task 1" $
        TestCase $
          assertEqual
            ""
            []
            (task1 "hello" "hello"),
      TestLabel "Test 5 of Task 1" $
        TestCase $
          assertEqual
            ""
            ["yellow"]
            (task1 "blue blue red" "red green green yellow"),
      TestLabel "Test 1 of Task 2" $
        TestCase $
          assertEqual
            ""
            ""
            (task2 "()()()"),
      TestLabel "Test 2 of Task 2" $
        TestCase $
          assertEqual
            ""
            "((()))"
            (task2 "(((())))"),
      TestLabel "Test 3 of Task 2" $
        TestCase $
          assertEqual
            ""
            "()()()"
            (task2 "(()())(())"),
      TestLabel "Test 4 of Task 2" $
        TestCase $
          assertEqual
            ""
            "(())"
            (task2 "()((()))()"),
      TestLabel "Test 5 of Task 2" $
        TestCase $
          assertEqual
            ""
            "()(())()()"
            (task2 "(()(()))(()())")
    ]