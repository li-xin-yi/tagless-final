{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE TypeSynonymInstances, FlexibleInstances #-}

module ExpSYM where

class ExpSYM repr where
  lit :: Int -> repr
  neg :: repr -> repr
  add :: repr -> repr -> repr

instance ExpSYM Int where
  lit n = n
  neg e = -e
  add e1 e2 = e1 + e2

eval :: Int -> Int
eval = id

instance ExpSYM String where
  lit = show
  neg e = "(-" ++ e ++ ")"
  add e1 e2 = "(" ++ e1 ++ " + " ++ e2 ++ ")"

view :: String -> String
view = id

x = add (lit 1919) (neg (add (lit 114) (lit 514)))

-- main = do (print $ eval x) (print $ view x)

