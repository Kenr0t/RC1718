%isomorfos(+A, +B)
%Es cierto si A y B son árboles isomorfos
%		1    	  a
%      / \   	 / \
%	  2   3 	b   c
% 	 /         / 
%   4      	  d


arbol1(
	a(1, a(2, a(4, nil, nil), nil), a(3, nil, nil))
	).

arbol2(
	a(a, a(b, a(d, nil, nil), nil), a(c, nil, nil))
	).

isomorfos(nil, nil).
isomorfos(a(_,HI1, HD1), a(_,HI2, HD2)):- isomorfos(a(_, HI1, HI2)), isomorfos(a(_, HD1, HD2)).