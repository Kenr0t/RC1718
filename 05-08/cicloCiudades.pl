% conectado(+Inicio, +Fin, +Aristas, -Carretera, -Kilometros)
conectado(Ini, Fin, Ar, C, K):- member(a(Ini, Fin,C,K), Ar).
conectado(Ini, Fin, Ar, C, K):- member(a(Fin, Ini,C,K), Ar).

% visitado(+Inicio, +Fin, +Visitados)
visitado(Ini, Fin, Vis):-member(a(Ini, Fin,_,_), Vis).
visitado(Ini, Fin, Vis):- member(a(Fin,Ini,_,_), Vis).

%camino(Inicio, Fin, Grafo, Visitados, Ciudades,Carreteras, Kilometros)
camino(Ini, Fin, g(_, Ar), _, [Fin], [C], K):- conectado(Ini, Fin, Ar, C, K).
camino(Ini, Fin, g(_, Ar), Vis, [Ini|Ciu],[C|Ca], K):-
	conectado(Ini, TMP, Ar, C, K1),
	\+ visitado(Ini, TMP, Vis),
	camino(TMP, Fin, g(_, Ar), [a(Ini,TMP,_,_)|Vis], Ciu, Ca, K2),
	K is K1 + K2.
% grafo(G), camino(huelva, madrid, G,[],C,Ca,K).


grafo(g([madrid, cordoba, sevilla, jaen, granada, huelva, cadiz],
	[a(huelva, sevilla, a49, 94),
	 a(sevilla, cadiz,ap4, 125),
	 a(sevilla, granada, a92, 256),
	 a(granada, jaen,a44, 97),
	 a(sevilla, cordoba, a4, 138),
	 a(jaen,madrid, a4, 335),
	 a(cordoba, madrid, a4, 400)]
)).