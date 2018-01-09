# haskell30SecondsOfCode


## Table of Contents

### Math
* [`gcd`](#gcd)
* [`lcm`](#lcm)
* [`Euler's totient function phi(m)`](#euler-totient-function)
* [`Happy Numbers`](#happy-numbers)
* [`Sierpinski Triangle`](#sierpinski-triangle)

### Lists
* [`Palindrome`](#palindrome)

### Strings 
* [`Levenshtein distance`](#levenshtein-distance)

### Trees
* [`Tree Traversal`](#tree-traversal)

[⬆ back to top](#table-of-contents)
## Math 

### GCD
returns the greatest common divisor between two numbers.
```haskell
mgcd :: Integral a => a -> a -> a
mgcd x y = helper (abs x) (abs y)
  where
    helper a 0 = a
    helper a b = helper b (a `rem` b)
```

### LCM
returns the least common multiple 
```haskell
lcm :: (Integral a) => a -> a -> a
lcm _ 0 = 0
lcm 0 _ = 0
lcm x y = abs ((x `quot` (gcd x y)) * y)
```

### Euler totient function
the number of positive integers r (1 <= r < m) that are coprime to m.
```haskell
totient 1 = 1
totient m = length $ filter (coprime m) [1..m-1]
  where coprime a b = gcd a b == 1
```

### Happy Numbers 
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

### Pascal Triangle 
    1
   1 1
  1 2 1
 1 3 3 1
where each element of each row is either 1 or the sum of the two elements right above it.


### Sierpinski Triangle


[⬆ back to top](#table-of-contents)
## Lists

### Palindrome
returns true if a list is a palindrome and false otherwise

```haskell
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = xs == (reverse xs)
```
 
[⬆ back to top](#table-of-contents)
## Strings 

### Levenshtein distance 
the minimum number of edits needed to transform one string into the other, with the allowable edit operations 
being insertion, deletion, or substitution of a single character.


## Trees

### Tree Traversal 
```haskell
data Tree a =
  Empty | Node { value :: a,
                 left :: Tree a,
                 right :: Tree a
               }

preorder :: Tree a -> [a]
preorder Empty = []
preorder (Node v l r) = v : preorder l ++ preorder r

inorder :: Tree a -> [a]
inorder Empty = []
inorder (Node v l r) = inorder l ++ (v : inorder r)

postorder :: Tree a -> [a]
postorder Empty = []
postorder (Node v l r) = postorder l ++ postorder r ++ [v]

levelorder :: Tree a -> [a]
levelorder t = loop [t]
  where
    loop [] = []
    loop (Empty:xs) = loop xs
    loop (Node v l r:xs) = v : loop (xs ++ [l, r]) 
``` 
  
