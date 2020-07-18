import Pythagorean (findHypotenuse, findSide)

main :: IO()
main = do 
    putStrLn "Enter 1 for side length calculation, 2 for hypotenuse calculation, other number for exit"
    c <- readLn

    if c == 1 
        then 
            findHypotenuseUI            
        else if c == 2
            then 
                findSideUI            
            else 
                putStrLn "Bye!"


findHypotenuseUI :: IO()
findHypotenuseUI = do
    putStrLn "Enter side 1"
    s <- readLn
    putStrLn "Enter side 2"
    t <- readLn

    putStrLn $ "Hypotenuse: " ++ show (findHypotenuse s t)


findSideUI :: IO()
findSideUI = do
    putStrLn "Enter known side"
    s <- readLn
    putStrLn "Enter hypotenuse"
    t <- readLn

    putStrLn $ "Side: " ++ show (findSide s t)
