module MathTotient where

totient 1 = 1
totient m = length $ filter (coprime m) [1..m-1]
  where coprime a b = gcd a b == 1
