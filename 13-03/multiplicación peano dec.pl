% mult(?X, ?Y, ?Z)
% Es cierto cuando Z unifica con la multiplicacion de X por Y en aritmética de Peano

suma(0, Y, Y).
suma(s(X), Y, s(Z)):- suma(X, Y, Z).

p2d(0, 0).
p2d(s(X), Y2):- p2d(X, Y), Y2 is Y+1.

d2p(0, 0).
d2p(X, s(Y)):- X > 0, X2 is X-1, d2p(X2, Y).


mult(0, _, 0).
mult(1, Y, Y).
mult(s(X), Y, Z2):- mult(X, Y, Z), suma(Z, Y, Z2).

mult(Xn, Yn, Zn):- d2p(Xn, X), d2p(Yn, Y), mult(X, Y, Z), p2d(Z, Zn).

