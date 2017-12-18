# haskell30SecondsOfCode


## Table of Contents

### Math
* [`gcd`](#gcd)

### Lists
* [`Palindrome`](#palindrome)


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


[⬆ back to top](#table-of-contents)
## Lists

### palindrome
returns true if a list is a palindrome and false otherwise

```haskell
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = xs == (reverse xs)
```
 
