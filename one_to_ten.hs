import Data.Maybe

myLast :: [a] -> Maybe a
myLast [] = Nothing
myLast [x] = Just x
myLast (x:xs) = myLast xs


myButLast :: [a] -> Maybe a
myButLast [] = Nothing
myButLast [x] = Nothing
myButLast [x,y] = Just x
myButLast (x:y:xs) = myButLast (y:xs)


elementAt :: Int -> [a] -> a
elementAt _ [] = error "Out of bound"
elementAt idx (x:xs)
  | idx == 1 = x
  | otherwise = elementAt (idx - 1) xs
