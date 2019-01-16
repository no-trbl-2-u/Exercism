module LeapYear where

isDivBy :: Int -> (Int -> Bool)
isDivBy n = \m -> (mod) m n == 0

isNotDivBy :: Int -> (Int -> Bool)
isNotDivBy n = not . isDivBy n

isLeapYear :: Int -> Bool
isLeapYear year
  | (isNotDivBy 4) year                         = False
  | (isDivBy 4) year && (isNotDivBy 100) year   = True
  | (isDivBy 100) year && (isNotDivBy 400) year = False
  | (isDivBy 400) year                          = True
  | (isDivBy 200) year && (isNotDivBy 400) year = False
  | otherwise                                   = False
