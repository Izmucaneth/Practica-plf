----HERNANDEZ HERNANDEZ REBECA IZMUCANETH
----- PRACTICA PROGRAMACION LOGICA Y FUNCIONAL-----

--ejercicio 1 
--en este ejercicio se devolvera el valor o resultado de 3 numeros
-- definidos en este caso como n1 n2 n3
average3Numbers :: Fractional a => a -> a -> a -> a
average3Numbers n1 n2 n3 = (n1+n2+n3)/3
--ejercicio 2
-- Ejercicio que devuelve  true si el ultimo dijito  en caso que se trate de un 3
-- y false si el ultimo dijito no es 3
isLastDigit3 :: Integral a => a -> Bool
isLastDigit3 num = (rem num 10) == 3
--ejercicio 3 
--determina si los numeros ingresados contienen untres
-- utilizando mayores numeros a 99 y menores a 1000
has3digits :: Integral a => a -> Bool
has3digits num = num>99 && num<1000;
--ejercicio 4 
-- Se define la funcion  para determinar el numero a ingresar sea negativo
isNegative :: Integral a => a -> Bool
isNegative num = num<0

--ejercicio 5
-- definimos la funcion para que el numero a ingresar solo sea de dos digitos 
-- en caso de no ser asi que devuelva la exepcion de que no contine 2 digitos el numero ingresado
sum2Digits :: Integral a => a -> a
sum2Digits num
    | num <10 || num>99 = error "El numero no tiene 2 digitos"
    |otherwise = div num 10 + (num - (div num 10 * 10))


    
--- erjercicio 7
-- se determina si los 2 digitos que compnen a un numero de 
-- entrada con integer numero x es un numero par, done x debe ser un numero de 2 dijitos
isPrimerNumber :: Int ->Bool
isPrimerNumber n
    |n == 2 ||n==3|| n== 5 || n==7 ||n == 11 || n==13|| n == 17 || n==19 = True
    |otherwise = False
--ejercicio 8
isPrimerNumber2 :: Int ->Bool
isPrimerNumber2 n
    |(n == 2 ||n==3|| n== 5 || n==7 ||n == 11 || n==13|| n == 17 || n==19 ) && even n= True
    |otherwise = False

    ----Ejercicio 9
    -- en este caso verificamos si el numero a ingresas el multiplo con true y falce, esto con ayuda de bool
isMultiple :: (Integral a)=> a->a->Bool
isMultiple num mul
    | mod num mul == 0 = True
    | otherwise = False

    ----Ejercicio 10 
isEqual2Digits :: (Integral a) => a -> Bool
isEqual2Digits x
    |(x > 9 && x < 100) && (div x 10 == mod x 10) = True
    |otherwise = False

    --ejercicio 11
higher :: (Integral a) => a -> a -> a -> a
higher x y z = max x (max y z)

-- ejercicio 12 
isEvenSum2Number :: (Integral a) => a -> a -> Bool
isEvenSum2Number x y = even (x+y)

-- ejercicio 13 
sum2Digit2Number :: (Integral a) => a -> a -> a
sum2Digit2Number x y
    |x > 9 && x <100 && y > 9 && y <100 = (div x 10 + mod x 10) + (div y 10 + mod y 10)
    |otherwise = error "Algún número no tiene 2 dígitos"

-- ejercicio 14 
sum3Digits :: (Integral a) => a -> a
sum3Digits x
    |x > 99 && x <1000 = (div x 100 + div (mod x 100) 10 + mod (mod x 100) 10)
    |otherwise = error "El número no tiene 3 dígitos"

-- ejercicio 15 
equal3Digits :: (Integral a) => a -> Bool
equal3Digits x 
    |(x > 99 && x <1000) && (x1 == x2 || x1 == x3 || x2 == x3)= True
    |(x > 99 && x <1000) && (x1 /= x2 && x1 /= x3 && x2 /= x3)= False
    |otherwise = error "El número no tiene 3 dígitos"
    where
        x1 = div x 100
        x2 = div (mod x 100) 10
        x3 = mod (mod x 100) 10

        -- ejercicio 16 -
positionHigher3Digits :: Integer -> String
positionHigher3Digits x
    |(x > 99 && x <1000) && ((max x1 x2 == x1) && (max x1 x3 == x1))= "El mayor se encuentra en la pos 1"
    |(x > 99 && x <1000) && ((max x1 x2 == x2) && (max x2 x3 == x2))= "El mayor se encuentra en la pos 2"
    |(x > 99 && x <1000) && ((max x1 x3 == x3) && (max x2 x3 == x3))= "El mayor se encuentra en la pos 3"
    |otherwise = error "El número no tiene 3 dígitos"
    where
        x1 = div x 100
        x2 = div (mod x 100) 10
        x3 = mod (mod x 100) 10
--Ejercicio 17
-- con la funcion reverse, al ingresar una lista esta regresa la lista pero de forma alrevez, formando un polindromo
-- se descompone en dos y compara si es igual puede invertirla y manda un true en dado caso de que no manda un false
palindrome :: Eq a => [a] -> Bool
palindrome xs = xs == reverse xs
--Ejercicio 18
safeDivision :: (Ord p, Floating p) => p -> p -> p
safeDivision x y
    |y == 0 = error "No es posible dividir entre 0"
    |otherwise = x / y

    ---  19 xor
    -- en ele siguiente ejercicio se hacen operaciones logicas tal cual sea el caso
xor :: Bool->Bool-> Bool
xor True True = False
xor True False = True
xor False True = True
xor False False = False

--Ejercicio 20
distance :: Floating a => (a, a) -> (a, a) -> a
distance (x1,y1) (x2,y2) = sqrt(((x2 - x1)^2) + ((y2 - y1)^2))


