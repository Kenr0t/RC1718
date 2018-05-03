% iguales_ag(+A, +B).
% Es cierto si A y B son dos árboles iguales.

iguales(A, A).



% invertir_ag(A, -R)
% Es cierto cuand oR unifica con el árbol A invertido.
invertir_ag(a(E, L_hijos), a(E, R_hijos)):- invertir_ag(L_hijos, R_hijos).

invertir_ag([], []).
invertir_ag([Ca|Res], R):- invertir_ag(Ca, RCa), invertir_ag(Res, RRes), append(RRes, [RCa], R).



% simetricos_ag(+A, +B).
% Es cierto si A y B son dos árboles simétricos

simetricos_ag(A, B):- invertir_ag(A, B).



% isomorfos(+A, +B).
% Es cierto si A y B son isomorfos

isomorfos(a(_, L_hijos1), a(_, L_hijos2)):- isomorfos(L_hijos1, L_hijos2).

isomorfos([], []).
isomorfos([Ca1|Res1], [Ca2|Res2]):- isomorfos(Ca1, Ca2), isomorfos(Res1, Res2).



arbol1(
     a(1, [a(2,[a(3,[a(4,[])])]), 
           a(5,[a(6,[a(7,[a(8,[a(9,[])])])])])
          ])
).


