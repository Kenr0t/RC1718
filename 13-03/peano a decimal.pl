% peano2dec(?X, ?Y)
% Convierte un numero Peano a natural, y es cierto cuando unifica con el número natural

peano2dec(0, 0).
peano2dec(s(X), Y2):- peano2dec(X, Y), Y2 is Y+1.