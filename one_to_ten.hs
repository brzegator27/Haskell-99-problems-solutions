import Data.Maybe

myLast :: [Int] -> Maybe Int
myLast [] = Nothing
myLast [x] = Just x
myLast (x:xs) = myLast xs

-- myLast :: [Int] -> Int
-- myLast [x] = x
-- myLast (x:xs) = myLast xs
