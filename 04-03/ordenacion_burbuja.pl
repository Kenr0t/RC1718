% ordena_burbuja(+Lista, -ListaR).
% es cierto cuando ListaR unifica con una lista que
% contiene los mismos elementos que Lista ordenados
% de menor a mayor.

ordena_burbuja(Lista, Lista):- ordenada(Lista).
ordena_burbuja(Lista, R2):- append(L1, [E1, E2|R], Lista), E1 > E2, append(L1, [E2, E1|R], L2), ordena_burbuja(L2, R2).


% ordenada(+Lista)
% es cierto cuando Lista unifica con una lista
% que contiene sus elementos ordenados de menor a
% mayor.

ordenada([]).
ordenada([_]).
ordenada([A1, A2|R]):- A1 =< A2, ordenada([A2|R]).