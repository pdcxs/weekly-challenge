module Tests (tests) where

import Task1 (sol1)
import Task2 (sol2)

tests1 :: [(String, Int)]
tests1 =
  [ ("111000", 0),
    ("00011", 4),
    ("01011", 3),
    ("010101", 3),
    ("00001", 4)
  ]

tests2 :: [(String, String)]
tests2 =
  [ ("((N2O)3(H2O)2)2", "H8N12O10"),
    ("Mg3(PO4)2", "Mg3O8P2"),
    ("(((H)2)3)4", "H24"),
    ("NaCl3(O2(S10)2)2Mg", "Cl3MgNaO4S40"),
    ("Z2Y3(X2W)2", "W2X4Y3Z2")
  ]

runTests :: (Eq a) => (t -> a) -> [(t, a)] -> IO ()
runTests f ts = go (1 :: Int) ts
  where
    n = show $ length ts
    go _ [] = putStrLn $ "All " ++ n ++ " tests passed!"
    go i ((input, result) : tt)
      | f input == result = go (i + 1) tt
      | otherwise = print $ "Test " ++ show i ++ "Failed!"

tests :: IO ()
tests = runTests sol1 tests1 >> runTests sol2 tests2