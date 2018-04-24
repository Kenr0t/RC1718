% descomprime(-L, +R)
% es cierto cuando R unifica con una lista de esta forma %
% R=[(a, 3), (b, 2), (c, 1)]. descomprime([a, a, a, b, b, c])

% CORREGIR
descomprime([], []).
descomprime([Ca], [(Ca,1)]).
descomprime([Ca, Ca|Resto], [(Ca,N1)| R]):- descomprime([Ca|Resto], [(Ca,N2)|R]), N1 is N2+1.
descomprime([Ca|Lista], [(Ca,1)|R]):- descomprime(Lista, R).


% descomprime([], []).
% descomprime([Ca], [(Ca,1)]).
% descomprime([Ca, Ca|Resto], [(Ca,N1)| R]):- descomprime([Ca|Resto], [(Ca,N2)|R]), N1 is N2+1.
% descomprime([Ca, Cb|Resto], R):- descomprime([Cb|Resto], [(Ca,1)|R]).