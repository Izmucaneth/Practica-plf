% -------------------------------listas con prolog ---------------------
%-------------------Hernandez Hernandez Rebeca Izmucaneth---------------
%-----------------------------1.-PERTENECE---------------
%Funcion que verifica si un ellemento pertenece a una lista dada
%pertenece(E,Tall) se verifica si X es un elemento de la lista L 
pertenece(E,[E|_]).
pertenece(E,[_|Tall]):- pertenece(E, Tall).
%-----------------------------2.-SIZE----------------------
%Funcion size obtine la longitud de una lista
%XS representa el número de elementos en la lista . Este predicado es una relación verdadera 
%y se puede usar para encontrar la longitud de una lista o producir una lista (conteniendo variables) de longitud 
size([], 0).
size([_|Xs], L):-
          size(Xs, L2),
          L is L2 + 1.
%----------------------------3.-CONCATENACION----------------
%Funcion con la que obtnemos la concatenacion, es decir una relacion de dos listas dadas
%se verifica si L2 es la lista obtenida escribiendo los elementos X de la lista XS 
concatenar([X|XS],L2,[X|R]) :- concatenar(XS,L2,R).
%----------------------------4.-ELIMINAR--------------------
%Funcion eliminar, elimina un elemento de la lista
eliminar(_,[],[]).
eliminar(E,[E],[]).
eliminar(E,[X|XS],Res) :- E =:=X, eliminar(E,XS,Res).
eliminar(E,[X|XS],[X|Res]) :- E=\= X, eliminar(E,XS,Res).
%---------------------------5.-AGREGAR UN ELEMENTO A UNA LISTA--------
%Funcion para agregar un elemento a una lista
agregar(Elem,R1,[Elem|R1]).
%---------------------------6.- PAR E IMPARES----------------------
%Funcion separar una lista en 2 listas de par e impar
separar([],[],[]).
separar([X|Tail],[X|R1],R2) :- X mod 2 =:= 0, separar(Tail,R1,R2).
separar([X|Tail],R1,[X|R2]) :- X mod 2 =\= 0, separar(Tail,R1,R2).
%---------------------------7.-ASCENDENTE--------------------------
%Funcion ascendente , verifica si una lista se encuentra de manera ascendente.
ascendente([X1,X2|[]]) :- X1 < X2.
ascendente([X1,X2|Tail]) :- X1 < X2, ascendente([X2|Tail]).
%---------------------------8.-DESCENDENTE----------------------------
%Funcion descendente, verifica si una lista se encuentra de manera descendente.
descendente([X1,X2|[]]) :- X1 > X2.
descendente([X1,X2|Tail]) :- X1 > X2, descendente([X2|Tail]).
%---------------------------9.APLANAR----------------------------------
%Funcion para aplanar una lista
aplanar([],[]).
aplanar([X|R],[X|P]) :- atomic(X), aplanar(R,P).
aplanar([X|R],P) :- not(atomic(X)), aplanar(X,P_X), aplanar(R,P_R), concatenar(P_X,P_R,P).
%---------------------------10.-MENOR HEAD--------------------------------
%Funcion menorHead, obtiene  una lista con elementos menores que el elemento del inicio o cabeza.
menor([_|[]],[]).
menor([A1,A2|B],[A2|L]) :- A1 > A2, menor([A1|B],L).
menor([A1,A2|B],L) :- A1 =< A2, menor([A1|B],L).
%---------------------------11.-MAYOR QUE HEAD --------------------------
%Funcion mayorHead, obtiene una lista con elementos mayores que el elemento del inicio de la lista o cabeza.
mayor([_|[]],[]).
mayor([A1,A2|B],[A2|L]) :- A1 < A2, mayor([A1|B],L).
mayor([A1,A2|B],L) :- A1 >= A2, mayor([A1|B],L).
%---------------------------12.- INVERTIR ------------------------
%Funcion invertir, obtiene una lista con los elementos invertidos.
invertir([],[]).
invertir([X|XS],L) :- invertir(XS,Z), concatenar(Z,[X],L).