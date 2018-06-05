media([], 0).
media(L, M):- media(L, 0, 0, M).

media([], Suma, Cont, Med):-Med is Suma / Cont.
media([C|Resto], Suma, Cont, Med):-
	Suma2 is Suma + C, Num2 is Cont + 1,
	media(Resto, Suma2, Num2, Med).