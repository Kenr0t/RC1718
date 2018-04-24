% borrar_elem(?E, ?Lista, ?ListaR).
% Es cierto cuando ListaR unifica con una lista que contiene los elementos de lista
% pero con las ocurrencias de E eliminadas.

borrar_elem(_, [], []).
borrar_elem(E, [E|R], LR):- borrar_elem(E, R, LR).
borrar_elem(E, [C|R], [C|LR]):- E \= C, borrar_elem(E, R, LR).

