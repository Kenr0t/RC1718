% crea_abb(+L, -A)
% Es cierto cuando A unifica con un arbol binario de búsqueda balanceado que contiene todas las etiquetas de L. Consideramos que L está ordenada.


crea_arbol([], nil).

crea_arbol(L, a(Cab, R1, R2)):-
  length(L, N),
  N2 is N div 2,
  length(L1, N2),
  append(L1, [Cab|L2], L),
  crea_arbol(L1, R1),
  crea_arbol(L2, R2).