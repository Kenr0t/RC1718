anchura(a(E, L_Hijos), [E|R]):-
	anchura(L_Hijos, R).

anchura([],[]).
anchura([a(E, L_Hijos)|Resto], [E|R2]):-
	append(Resto, L_Hijos, R), 
	anchura(R, R2).