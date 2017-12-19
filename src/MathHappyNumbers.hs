module MathHappyNumbers where

import Data.Char (digitToInt)
import Data.Set (member, insert, empty)

{--
Examples:
31 is happy because
31 => 32 + 12 => 10 => 12 + 02 => 1

But 4 is not happy because
4 => 16 => 37 => 58 => 89 => 145 => 42 => 20 => 4
-}

isHappy :: Integer -> Bool
isHappy = helper empty
  where
    helper _ 1 = True
    helper s n
      | n `member` s = False
      | otherwise = helper (insert n s) (f n)
    f = sum . (((^ 2) . toInteger . digitToInt) <$>) . show
