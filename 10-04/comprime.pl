% comprime(+L, -R)
% es cierto cuando R unifica con una lista de esta forma %
% comprime([a, a, a, b, b, c]); R=[(a, 3), (b, 2), (c, 1)].

comprime([], []).
comprime([Ca], [(Ca,1)]).
comprime([Ca, Ca|Resto], [(Ca,N1)| R]):- comprime([Ca|Resto], [(Ca,N2)|R]), N1 is N2+1.
comprime([Ca, Cb|Resto], [(Ca,1)|R]):- Ca\=Cb, comprime([Cb|Resto], R).