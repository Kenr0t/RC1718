% dec2peano(+X, ?Y)
% Convierte un numero deciam a Peano, y es cierto cuando unifica con el número natural

dec2peano(0, 0).
dec2peano(X, s(Y)):- X > 0, X2 is X-1, dec2peano(X2, Y).