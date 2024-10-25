module Ej3_2 where
-- ocurrenciasElementos
oe :: [Int] -> [Int] -> [(Int, Int)] -> [(Int, Int)]
oe _ [] acc = acc
oe l1 (x:xs) acc = oe l1 xs (acc ++ [(x, ct x l1 0)])

-- Cuenta
ct :: Int -> [Int] -> Int -> Int
ct _ [] acc = acc
ct y (x:xs) acc = if y == x then ct y xs (acc+1) else ct y xs acc

ocurrenciasElementos a b = oe a b []
