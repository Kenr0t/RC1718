% cuenta_hojas_ag(+A, -N).
% Es ciert ocuando N unifica con el número de hojas del árbol genérico A.

cuenta_hojas_ag(a(_, []), 1).
cuenta_hojas_ag(a(_, LHijos), Nhojas):- LHijos \= [], cuenta_hojas_ag(LHijos, Nhojas).

cuenta_hojas_ag([], 0).
cuenta_hojas_ag([Ca|Resto], Nhojas):- cuenta_hojas_ag(Ca, NCa), 
	cuenta_hojas_ag(Resto, NRes), Nhojas is NCa + NRes.

arbol1(a(1, [a(2, [a(3, [a(4, [])])])])).