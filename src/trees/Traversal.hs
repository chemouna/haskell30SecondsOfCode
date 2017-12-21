
module Traversal where

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
