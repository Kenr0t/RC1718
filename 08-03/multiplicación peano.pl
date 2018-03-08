% suma(?X, ?Y, ?Z)
% Es cierto cuando Z unifica con la suma de X en Y aritmética de Peano

suma(0, Y, Y).
suma(s(X), Y, s(Z)):- suma(X, Y, Z).

% mult(?X, ?Y, ?Z)
% Es cierto cuando Z unifica con la multiplicacion de X por Y en aritmética de Peano
mult(0, Y, 0).
mult(s(X), Y, Z2):- mult(X, Y, Z), suma(Z, Y, Z2).