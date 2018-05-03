% crea_arbolg(+L, -Ag).
% Es cuerto cuando Ag unifica con un árbol genérico que contiene todas las etiquetas de la lista L.

altura_ag(a(H, LHijos), AltTot):- altura_ag(LHijos, AltH), AltTot is AltH + 1.

altura_ag([Ca|Resto], AltTot):- 
	altura_ag(Ca, AltCa), altura_ag(Resto, AltR),  AltTot is max(AltCa, AltR).


arbol1(a(1, [a(2, [a(3, [a(4, [])])])])).