module Pythagorean (findHypotenuse, findSide) where

    findHypotenuse :: Double -> Double -> Double
    findHypotenuse s t
        | s <= 0 || t <= 0 = 0 
        | otherwise = sqrt (s * s + t * t)

    findSide :: Double -> Double -> Double
    findSide s h
        | s <= 0 || h <= 0 = 0 
        | otherwise = sqrt (h * h - s * s)