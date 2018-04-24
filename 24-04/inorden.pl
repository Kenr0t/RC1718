% arbol1(A), __orden(A, R).  <--- Para ejecutar

inorden(nil, []).
inorden(a(E, HI, HD), R):- inorden(HI, RI), 
	inorden(HD, RD), append(RI, [E|RD], R).

postorden(nil, []).
postorden(a(E, HI, HD), R):- postorden(HI, RI), 
	postorden(HD, RD), append([RI, RD, [E]], R).

preorden(nil, []).
preorden(a(E, HI, HD), R):- preorden(HI, RI), 
	preorden(HD, RD), append([[E], RI, RD], R).

anchura(nil, []).
anchura(a(E, a(EI, HII,HID), a(ED, HDI,HDD)), R):- anchura(a(EI, HII,HID) , RI), 
	anchura(a(ED, HDI,HDD), RD), append([[E], RI, RD], R).


arbol1(
      a(1, a(2,a(4,nil,nil),nil), a(3,nil,nil))
      ).

arbol2(
      a(a, a(b,a(d,nil,nil),nil), a(c,nil,nil))
      ).

arbol3(
      a(a, a(b,a(d,nil,nil),nil), a(c,nil,a(e,nil,nil)))
	  ).