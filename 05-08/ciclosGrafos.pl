% ciclosGrafos(+G, -C).
ciclosGrafosD1(G, C):- camino1(G, Ini, Ini, [], C), length(C, X), X > 1.
ciclosGrafosD2(G, C):- camino2(G, Ini, Ini, [], C), length(C, X), X > 1.

camino1(_, Ini, Ini, _, [Ini]).
camino1(g(_, A), Ini, Fin, Visitados, [Ini|Camino]):- 
	member(a(Ini, TMP), A), \+ member(TMP, Visitados), 
	camino1(g(_, A), TMP, Fin, [TMP|Visitados], Camino).

camino2(_, Ini, Ini, _, []).
camino2(g(_, A), Ini, Fin, Visitados, [a(Ini, TMP)|Camino]):- 
	member(a(Ini, TMP), A), \+ member(TMP, Visitados), 
	camino2(g(_, A), TMP, Fin, [TMP|Visitados], Camino).

conectado(g(_, A), Ini, Fin):- member(a(Fin, Ini), A).
conectado(g(_, A), Ini, Fin):- member(a(Ini, Fin), A).


grafo(g([a, b, c, d], [a(a, b), a(b, c), a(c, d), a(d, b)])).

grafo2(g([a, b, c, d, e], 
	[a(a, b), a(a, c), a(b, c), a(b, d),
	 a(b, e), a(c, d), a(c, e), a(d, a), a(d, a)])).