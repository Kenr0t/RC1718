% balanceado(+A).
% Es cierto si para todo nodo, la diferencia de alturas entre el sub arbol izquierdo y el derecho 
% difieren como máximo en una unidad.

balanceado(nil).
balanceado(a(_, HI, HD)):-
	balanceado(HI), balanceado(HD),
	altura(HI, AltI), altura(HD, AltD),
	Rest is AltI - AltD,
	RestAbs is abs(Rest),
	RestAbs < 2.


% altura(+A, -N)
% es cierto cuando N unifica con la altura del árbol A

altura(nil, 0).
altura(A(_, HI, HD), Alt):-
	altura(HI, AltI), altura(HD, AltD),
	Aux is max(AltI, AltD), 
	Alt is Aux + 1. 