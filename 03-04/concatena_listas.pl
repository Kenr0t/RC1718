% concatena(+List1, +List2, -ListR).
% es cierto cuando ListaR unifica con una lista
% que contiene los elementos de la lista List1
% en el mismo orden y seguidos de los elementos
% de la lista List2 en el mismo orden.

concatena([], L, L).
concatena([Cab|Resto], List2, [Cab|R]):-
concatena(Resto,List2,R).


% concatena(L, [], L).
% concatena(List2, [Cab|Resto], [R|Cab]):-
% concatena(List2, Resto, R).