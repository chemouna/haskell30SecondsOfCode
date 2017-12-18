
module MathGcd where

mgcd :: Integral a => a -> a -> a
mgcd x y = helper (abs x) (abs y)
  where
    helper a 0 = a
    helper a b = helper b (a `rem` b)

