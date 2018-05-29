

media([], Suma, Num, Med):-Med is Suma / Num.
media([C|Resto], Suma, Num, Med):- Suma2 is Suma + C, Num2 is Num + 1, media(Resto, Suma2, Num2, Med).