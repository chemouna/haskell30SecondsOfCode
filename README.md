# haskell30SecondsOfCode


## Table of Contents

### Math
* [`gcd`](#gcd)
* [`HappyNumbers`](#HappyNumbers)

### Lists
* [`Palindrome`](#Palindrome)


[⬆ back to top](#table-of-contents)
## Math 

### gcd
returns the greatest common divisor between two numbers.
```haskell
mgcd :: Integral a => a -> a -> a
mgcd x y = helper (abs x) (abs y)
  where
    helper a 0 = a
    helper a b = helper b (a `rem` b)
```

### HappyNumbers 
Starting with any positive integer, replace the number by the sum of the squares of its digits, and repeat the process
until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1.
Those numbers for which this process ends in 1 are happy numbers, while those that do not end in 1 are unhappy numbers. 
```haskell
isHappy :: Integer -> Bool
isHappy = helper empty
  where
    helper _ 1 = True
    helper s n
      | n `member` s = False
      | otherwise = helper (insert n s) (f n)
    f = sum . (((^ 2) . toInteger . digitToInt) <$>) . show
```


[⬆ back to top](#table-of-contents)
## Lists

### Palindrome
returns true if a list is a palindrome and false otherwise

```haskell
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = xs == (reverse xs)
```
 
