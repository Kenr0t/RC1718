% Principio inducción
% Decidir si un número es natural o no
natural(1).
% natural(n-1) -> natural(n)
natural(N):- N>1, N2 is N-1, natural(N2)