{-# LANGUAGE ImplicitParams #-}
{-# LANGUAGE Arrows #-}


module Lib
    ( someFunc
    ) where
import Control.Arrow
import Data.Extensible.Sum


someFunc :: IO ()
someFunc = putStrLn "someFunc"

-- | Test Function
testFunc :: String -> String 
testFunc = id id

x :: 
  (
    ?foo :: a
  , Show a
  ) => a -> a  
x = undefined

myArr :: 
  (
    Arrow a
  , Show (a Int Int)
  , ?foo :: a Int Int
  ) => a Int Int
myArr = proc x -> do 
  y <- arr id -< x + 2 
  z <- arr (*2) -< y
  arr id -< z 