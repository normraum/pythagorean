import Test.Tasty (TestTree, defaultMain, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))

import Pythagorean

main :: IO ()

main = defaultMain tests

tests :: TestTree
tests = testGroup "Tests" [findFypothenuseTests, findSideTests]


findFypothenuseTests = testGroup "find hypothenuse"
    [ testCase "side 1 = 0, side 2 = 0, result: 0" $ 
        findHypotenuse 0 0 @?= 0
        ,  testCase "side 1 = 0, side 2 = 2, result: 0" $ 
        findHypotenuse 0 2 @?= 0
        ,  testCase "side 1 = 4, side 2 = 0, result: 0" $ 
        findHypotenuse 4 0 @?= 0
        ,  testCase "side 1 = -4, side 2 = 2, result: 0" $ 
        findHypotenuse (-4) 2 @?= 0
        ,  testCase "side 1 = 4, side 2 = -2, result: 0" $ 
        findHypotenuse 4 (-2) @?= 0
        ,  testCase "side 1 = 3, side 2 = 4, result: 5" $ 
        findHypotenuse 3 4 @?= 5
    ]

findSideTests =   testGroup "find side"
    [ testCase "side 1 = 0, hypotenuse 2 = 0, result: 0" $ 
        findSide 0 0 @?= 0
        ,  testCase "side 1 = 0, hypotenuse 2 = 2, result: 0" $ 
        findSide 0 2 @?= 0
        ,  testCase "side 1 = 4, hypotenuse 2 = 0, result: 0" $ 
        findSide 4 0 @?= 0
        ,  testCase "side 1 = -4, hypotenuse 2 = 2, result: 0" $ 
        findSide (-4) 2 @?= 0
        ,  testCase "side 1 = 4, hypotenuse 2 = -2, result: 0" $ 
        findSide 4 (-2) @?= 0
        ,  testCase "side 1 = 3, hypotenuse 2 = 5, result: 4" $ 
        findSide 3 5 @?= 4
    ]