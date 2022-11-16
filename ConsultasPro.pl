ve_peliculas(roberto,suspenso).
ve_peliculas(jaanai,suspenso).
ve_peliculas(abimael,suspenso).
ve_peliculas(leonardo,romance).
ve_peliculas(miguel,terror).

consume(roberto,palomitas).
consume(jaanai,palomitas).
consume(abimael,maruchan).
consume(leonardo,maruchan).
consume(miguel,ensalada).

tiene_netflix(roberto,si).
tiene_netflix(jaanai,si).
tiene_netflix(abimael,si).
tiene_netflix(leonardo,no).
tiene_netflix(miguel,si).

tiempo_libre(roberto,no).
tiempo_libre(jaanai,no).
tiempo_libre(abimael,no).
tiempo_libre(leonardo,no).
tiempo_libre(miguel,no).

escucha_musica(abelino,reggae).
escucha_musica(jose,rock).
escucha_musica(izmucaneth,reggae).
escucha_musica(rolando,rock).
escucha_musica(maldonado,regional).

tiene_spotify(abelino,no).
tiene_spotify(jose,si).
tiene_spotify(izmucaneth,si).
tiene_spotify(rolando,no).
tiene_spotify(maldonado,si).

tiene_audifonos(abelino,no).
tiene_audifonos(jose,no).
tiene_audifonos(izmucaneth,si).
tiene_audifonos(rolando,si).
tiene_audifonos(maldonado,no).

usa_audifonos(roberto,no).
usa_audifonos(jaanai,si).
usa_audifonos(abimael,no).
usa_audifonos(leonardo,si).
usa_audifonos(miguel,si).

vida_saludable(X) :- consume(X,ensalada).

%____________________________            Ejercicios Prolog_                                         _________________
%____________________________ HERNANDEZ HERNANDEZ REBECA IZMUCANETH __________________________________________________

%_1_______________________________Quines prefieren ver epeliculas____________________________________________________________________
ve_peliculas(X,_) %__Solo nos dan los nombres de quienes ven peliculas, X mayuscula refiere a la variable nombre, con el _ indicamos
                  % _Que no es de nuestro interes saber que genero de pelicula ven soo si la ven

%_2_______________________________Quines prefieren escuchar musica____________________________________________________________________
escucha_musica(X,_) %____Solo nos indica los nombres de quines escuchan musicaX mayuscula refiere a la variable nombre, con el _ indicamos
                    % _Que no es de nuestro interes saber que genero de muscia escuchan solo si la escuchan
                    

%_3_Alguien que ve peliculas de suspenso, disfruta verlas con palomitras, tiene netflix y tiempo libre, tiene una tarde perfecta._____
tarde_perfecta(X) :- ve_peliculas(X,suspenso), consume(X,palomitas), tiene_netflix(X,si), tiempo_libre(X, si).
% La tarde cperfecta se complementa con quien ve pelicalas del genero suspenso, consumiendo palomitas y teniendo asi mismo tiempo libre

%_4_________________________Alguien que ve peliculas consumiendo una ensalada, tiene una vida saludable._______________________________
vida_Saludable(X) :- ve_peliculas(X,Y), consume(X,ensalada).
%La vida saluable se conforma de quien ve peliculas (nombre, genero de pelicula) y consume enslada

% 5______________Alguien que escuche regional, tiene audifonos y la aplicacionn de spotify, disfruta de camino a casa.____________________________
camino_casa(X) :- escucha_musica(X,regional), tiene_audifonos(X,si), tiene_spotify(X,si).
% Disfruta del camino quien cumpla con la condicion de escuchar musica regional y  si tiene audifonos, ademas tiene la aplicacion de espotify

%_6_____________Alguien es feliz si ve peliculas consumiendo maruchan, tiempo libre y netflix.____________________________________________________
es_feliz(X) :- ve_peliculas(X,Y), consume(X,maruchan), tiempo_libre(X,si), tiene_netflix(X,si).
% Alguien (Nombre), es feliz si ve peliculas y consueme maruchan, tiene tiempo libre y ademas tiene la aplicacion de netflix

%_7_________________________Solo pueden ser amigos quienes tienen los mismos gustos._______________________________________________________________
son_amigos(X,Y) :- 
consume(X,palomitas), consume(Y,palomitas), ve_peliculas(X,suspenso), ve_peliculas(Y,suspenso); 
consume(X,ensalada), consume(Y,ensalada), ve_peliculas(X,suspenso), ve_peliculas(Y,suspenso); 
consume(X,maruchan), consume(Y,maruchan), ve_peliculas(X,suspenso), ve_peliculas(Y,suspenso); 
consume(X,palomitas), consume(Y,palomitas), ve_peliculas(X,terror), ve_peliculas(Y,terror); 
consume(X,ensalada), consume(Y,ensalada), ve_peliculas(X,terror), ve_peliculas(Y,terror); 
consume(X,maruchan), consume(Y,maruchan), ve_peliculas(X,terror), ve_peliculas(Y,terror); 
consume(x,palomitas), consume(Y,palomitas), ve_peliculas(X,romance), ve_peliculas(Y,romance); 
consume(x,ensalada), consume(Y,ensalada), ve_peliculas(X,romance), ve_peliculas(Y,romance); 
consume(x,maruchan), consume(Y,maruchan), ve_peliculas(X,romance), ve_peliculas(Y,romance).
%__________________________
