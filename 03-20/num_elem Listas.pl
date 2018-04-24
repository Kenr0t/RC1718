% num_elem(+Lista, ?Num)
% Es ciert ocuand Num unifica con el número de elementos de la Lista

num_elem([], 0).
num_elem([_|R], N2):- num_elem(R, N), N2 is N+1.