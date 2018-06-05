% mas_veces(+Lista, -Elem, -Num)
% Es cierto cuando E unifica con el elemento que más veces aparece en Lista

mas_veces(Lista, E, N):-
		msort(Lista, ListaOrd),
		comprime(ListaOrd, ListaComp),
		ord_tuplas(ListaComp, ListaCompOrd),
		reverse(ListaCompOrd, [(E, N)| _]).




inserta_ord(E,[], [E]). 

inserta_ord((E,N), [(EC,NC)|Resto], [(E,N),(EC,NC)|Resto ]):-
	N =< NC.

inserta_ord((E,N), [(EC,NC)|Resto], [(EC,NC)|RInser]):-
	N > NC, inserta_ord((E,N), Resto, RInser).

ord_tuplas([], []).
ord_tuplas([Cab|Res], R2):-
	ord_tuplas(Res, R), inserta_ord(Cab, R, R2).


comprime([], []).
comprime([E], [(E, 1)]).
comprime([Cab1, Cab1|Resto], [(Cab1, N2)|R]):-
	comprime([Cab1|Resto], [(Cab1, N)|R]),
	N2 is N + 1.

comprime([Cab1, Cab2|Resto], [(Cab1, 1)|R]):-
	Cab1 \= Cab2, comprime([Cab2|Resto], R).