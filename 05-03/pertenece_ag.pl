% pertenece_ag(+E, +A).
% Es cierto si el elemento E pertenece al árbol A

pertenece_ag(E, a(E, _)).

pertenece_ag(E, a(_, L_hijos)):- pertenece_ag(E, L_hijos).

pertenece_ag(E, [Ca|_]):- pertenece_ag(E, Ca).
pertenece_ag(E, [_|Res]):-  pertenece_ag(E, Res).

arbol1(a(1, [a(2, [a(3, [a(4, [])])])])).