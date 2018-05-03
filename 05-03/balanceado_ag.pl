altura_ag(a(H, L_Hijos), AltTot):- altura_ag(L_Hijos, AltH), AltTot is AltH + 1.

altura_ag([Ca|Resto], AltTot):- 
	altura_ag(Ca, AltCa), altura_ag(Resto, AltR),  AltTot is max(AltCa, AltR).


% balanceado_ag(+A).
% Es cierto si el árbol genérico A está balanceado, es decir, la diferencia de altura para cualquier nodo es como máximo 1.

balanceado_ag(a(E, L_Hijos):- balanceado_ag(L_Hijos).

balanceado_ag([Ca]).
balanceado_ag([Ca|Res]):- altura_ag(Ca, AltCa), altura_ag(Res, AltRes), AltTot is AltCa + AltRes,
	AltTotAbs is abs(AltTot), balanceado_ag(Ca), balanceado_ag(Res).