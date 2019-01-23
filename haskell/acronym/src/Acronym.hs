module Acronym where

import Data.List.Split

splitOnComma :: (String -> [String]) 
splitOnComma  = splitOn ","

splitOnSpace :: (String -> [String]) 
splitOnSpace  = splitOn " "

splitOnHyphen :: (String -> [String]) 
splitOnHyphen = splitOn "-"

join :: [String] -> String  
join = foldr (++) []


-- -- abbreviate :: String -> String
-- abbreviate (x: xs) = 
