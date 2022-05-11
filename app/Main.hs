module Main where

-- import Criterion.Main

fact_i1 :: Integer -> Integer
fact_i1 0 = 1
fact_i1 1 = 1
fact_i1 x = x * fact_i1 (x - 1)

fact_i2 :: Integer -> Integer
fact_i2 0 = 1
fact_i2 1 = 1
fact_i2 x = fact 1 x
    where
        fact :: Integer -> Integer -> Integer
        fact i x = if i < x
            then i * fact (i+1) x
            else i

fact_i3 :: Integer -> Integer
fact_i3 0 = 1
fact_i3 1 = 1
fact_i3 x = foldl (*) 1 [1..x]


main :: IO ()
-- main = defaultMain [
--       bgroup "N_10000" [ 
--                  bench "fact_i1"  $ whnf fact_i1 10000
--                , bench "fact_i2"  $ whnf fact_i2 10000
--                , bench "fact_i3"  $ whnf fact_i3 10000
--                ]
--     ]
-- main = print $ fact_i1 100000000000
-- main = print $ fact_i2 100000000000
main = print $ fact_i3 100000000000