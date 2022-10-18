--- Hernandez Hernandez Rebeca Izmucaneth--PLF EJERCICIOS--
------------------ FUNCIONES CON LISTAS--------------------
--------------------E1-firstToEnd---------------------------
--- Vamos a introducir una lsita, Donde el primer elemento de la lista "xs" pase a ser el ultimo de las lista
----  la funcion head devuelve el primer elemento de una lista
firstToEnd :: (Ord a) => [a] -> [a]
firstToEnd xs = drop 1 xs ++ [head xs]

---------------------E2-minAndMax---------------------------
---- intruduciremos una lista de dos elementos, donde xs recibira el elemento minimo de de la lista asi co,o en 
----- elemento maximo, para esto la funcion ord toma dos elementos de la lista, del mismo tipo y devuelve su orden 
minAndMax :: (Ord a) => [a] -> [a]
minAndMax xs = minimum xs : [maximum xs]

--------------------E3-minorsFirstElement---------------------
---- se introducira una lista a la que llamaremos "xs" y se devolvera otra con los elementos menores de la lista introduccida "xs"
---- La función head  devuelve el primer elemento menor de la lista 
---- La funcion Drop  devuelve el elemento mayor de la lista
minorsFirstElement :: (Integral a) => [a] -> [a]
minorsFirstElement xs = filter (head xs >) (drop 1 xs)

--------------------E4-greaterOrEqualFirstElement------------
---- se introduce una lista x y devuelve las lista x con los elementos mayores o iguales al priemer elemento de la lista xs
---- La función tail devuelve la lista sin su primer elemento y si ele lemento es mayor compara con head los elementos menores
---- y devuele los elemtos mayores
greaterOrEqualFirstElement :: Integral a => [a] -> [a]
greaterOrEqualFirstElement [] = error "Lista vacia"
greaterOrEqualFirstElement [a] = error "Lista con un elemento"
greaterOrEqualFirstElement list = [x | x <- tail list , x >=head list]
---------------------E5-minorsToSumFirstAndSecondElement------
--- Se introduce una lista y se devolvera una lista con los elementos menores a la suma del primer y segundo elemento de la lista
--- asi mismo se recibira un axepcion en caso de que la lista este vacia "Lista vacia"
--- si la lista solo contiene un solo elemento se enviara otra ecepcion de error "lista con un  elemento"
---La función tail devuelve la lista sin sus  primeros dos elementos y se compra si la suma de ellos es mayor al resto de la lista 
minorsToSumFirstAndSecondElement :: Integral a => [a] -> [a]
minorsToSumFirstAndSecondElement [] = error "Lista vacia"
minorsToSumFirstAndSecondElement [a] = error "Lista con un elemento"
minorsToSumFirstAndSecondElement list= [x | x <- tail (tail list) , x <head list + head(tail list)]
---------------------E6- listSumDuplaToList -----------------------
--- Creamos una lista, en este caso una dupla, se recibe una lista en la que se suman cada elemto de la dupla
--- si la lissta contiene una lista vacia , se devolvera otra lista vacia
listSumDuplaToList :: Integral a => [(a,a)] -> [a]
listSumDuplaToList [] = []
listSumDuplaToList list = fst(head list) + snd (head list) : listSumDuplaToList (tail list)

------------------ E7-listMulTripletaToList ---------------------
--- creamos una lista que contine una tripleta, se recibira una lista en la que cada elemento de la lista
--- es la multiplicacion de los elementos de la tripleta
--- si la lista contiene una lista vacia , se devolvera otra lista vacia
--- si la lista contiene tres elementos, estos se multiplicaran  entre las listas y se regresa los valores resultantes de cada tripleta

listMulTripletaToList :: (Integral a) => [(a,a,a)] -> [a]
listMulTripletaToList [] = []
listMulTripletaToList xs = [x*y*z|(x,y,z) <- xs]
------------------ E8-changeFstToSnd-----------------------------
--- se crea la lista (dupla) y se recibe una lista en donde los elementos de una dupla cambian de posisicion
--- si la dupla contiene una lista vacia , se devolvera otra lista vacia
--- La función head devuelve el primer elemento de la lista y con la funcion changeFstToSnd cambia la posicion 
changeFstToSnd :: (Integral a) => [(a,a)] -> [(a,a)]
changeFstToSnd [] = []
changeFstToSnd xs = (snd (head xs),fst (head xs)) : changeFstToSnd (tail xs)

------------------ E9-sumVectors  -------------------------------
--- Se crea una lista en la que los elementos de un vector se suman
sumVectors :: (Num a) => [(a,a)] -> (a,a)
sumVectors [x] = (fst x,snd x)
sumVectors list = (fst (head list) + fst (sumVectors (tail list)),snd (head list) + snd (sumVectors (tail list)))

----------- ------ E10- dividers  ---------------------------------------------
---- se crea una lista de divisores de un número n es una lista donde cada elemento es un divisor
---- de su siguiente elemento en la lista
dividers :: (Integral a) => a -> [a]
dividers n = [x | x <- [1..n], (mod n x) == 0]

------------------ E11 primeNumbers ---------------------------------------------
primeNumbers :: (Integral a) => a -> [a]
primeNumbers n = [x | x <- [2..n], dividers x == [1,x]]

------------------ E12-infinitePrimeNumbers--------------------------------------
--- se crea una lista infinita de numeros primos, emepzando por el primero = 2
infinitePrimeNumbers :: (Integral a) => [a]
infinitePrimeNumbers = [x | x <- [2..], dividers x == [1,x]]


