% reverse(?Lista, ?ListaR)
% Es cierto cuando ListaR unifica con una lista que contiene los elementos de Lista en orden inverso

reverse([], []).
reverse([C|R], L):- reverse(Resto, R), L2 = [R,C].
% Hay que termiar...