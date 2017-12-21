module StringsLevenshtein where

{--
the minimum number of edits needed to transform one string into the other,
with the allowable edit operations being insertion, deletion, or substitution
of a single character.
-}

levenshtein :: String -> String -> Int
levenshtein s1 s2 = last $ foldl 
