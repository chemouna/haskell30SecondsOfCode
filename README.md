# haskell30SecondsOfCode


### Lists
* [`Palindrome`](#palindrome)

### palindrome
returns true if a list is a palindrome and false otherwise

```haskell
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = xs == (reverse xs)
```
 
