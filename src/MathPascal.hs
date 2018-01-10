module MathPascal where

pascal = iterate (\row -> zipWith (+) ([0] ++ row) (row ++ [0])) [1]
