% suma_nodos_ag(+A, -R).
% Esto es cierto cuando R unifica con la suma de todas las etiquetas del árbol A.

suma_nodos_ag(a(E, L_hijos), R):- suma_nodos_ag(L_hijos, R_hijos), R is E + R_hijos.

suma_nodos_ag([], 0).
suma_nodos_ag([C|Resto], R):- suma_nodos_ag(C, R_C), suma_nodos_ag(Resto, R_R), R is R_C + R_R.

arbol1(a(1, [a(2, [a(3, [a(4, [])])])])).

% arbol1(A), __orden(A, R).  <--- Para ejecutar
