module Ej3_1 where
-- ocurrenciasElementos
oe :: [Int] -> [Int] -> [(Int, Int)]
oe _ [] = []
oe l1 (x:xs) = (x, ct x l1) : oe l1 xs

-- Cuenta
ct :: Int -> [Int] -> Int
ct _ [] = 0
ct y (x:xs) = if y == x then 1 + ct y xs else ct y xs

ocurrenciasElementos = oe
