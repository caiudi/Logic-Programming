% Operacoes aritmeticas e comparacoes.
quadrado(Numero, Resultado) :-
    Resultado is Numero * Numero.

maior(Numero1, Numero2, Numero1) :- Numero1 >= Numero2.
maior(Numero1, Numero2, Numero2) :- Numero1 < Numero2.

par(Numero) :-
    integer(Numero),
    0 is Numero mod 2.

% ?- quadrado(5, Resultado).
% ?- maior(10, 7, Maior).
% ?- par(8).
