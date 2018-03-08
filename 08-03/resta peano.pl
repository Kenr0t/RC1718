% resta(?X, ?Y, ?Z)
% Es cierto cuando Z unifica con la resta de X menos Y en aritmética de Peano

resta(X, 0, X).
resta(X, s(Y), Z):- resta(X, Y, s(Z)).