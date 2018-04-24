% permutacion(?L1, ?L2).
% Es ciert ocuand L1 unifica con una lista L2 que tiene el orden distinto. Por unificación, 
% debo poder obtener todas las posibles ordenaciones

permutacion([], []).
permutacion(R2, [C|R]):-permutacion(R1, R), insertar(C, R1, R2).

% insertar(E, Lista, R).
% Es cierto cuando R unifica con una list aque contiene los elementos de Lista con
% E insertado en cualquier posición.

insertar(E, Lista, [E|Lista]).
insertar(E, [C|R], [C|R2]):-insertar(E, R, R2).
