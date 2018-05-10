% camino (+G, +Ini, +Fin, +Visitados, -Camino).
% conectado(+G, +Ini, +Fin).


camino(G, Ini, Fin, Visitados, [a(Ini, Fin)]):- 
	conectado(G, Ini, Fin), 
	\+ member(a(Ini, Fin), Visitados).

camino(G, Ini, Fin, Visitados, [a(Ini, TMP)|Camino]):- 
	conectado(G, Ini, TMP), 
	\+ member(a(Ini, TMP), Visitados), 
	camino(G, TMP, Fin, [a(Ini, TMP), a(TMP, Ini) | Visitados], Camino).

conectado(g(_, A), Ini, Fin):- member(a(Fin, Ini), A).
conectado(g(_, A), Ini, Fin):- member(a(Ini, Fin), A).



grafo(g([a, b, c, d, e], 
	[a(a, b), a(a, c), a(b, c), a(b, d),
	 a(b, e), a(c, d), a(c, e), a(d, e)])).