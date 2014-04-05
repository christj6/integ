module Integ where

-- Integration using Midpoint Approximation
-- start off the program by typing in:
-- let f x = (here goes your function with x's included)

-- then type in: approx f 0 10 100, which will approximate the definite integral of f(x) from a to b.

adds :: Int -> Int -> Int
adds x y = x + y

approx :: (Float -> Float) -> Float -> Float -> Float -> Float
approx f a b divisions = (rawSum f a b 1 divisions)*deltaX
	where deltaX = (b - a)/(divisions) 

rawSum :: (Float -> Float) -> Float -> Float -> Float -> Float -> Float
rawSum f a b i divisions
	| i > divisions = 0
	| otherwise = f (a + deltaX*(i - 0.5)) + rawSum f a b (i+1) divisions
	where deltaX = (b - a)/(divisions)

