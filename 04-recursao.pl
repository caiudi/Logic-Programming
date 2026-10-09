% Recursao: fatorial e Fibonacci.
fatorial(0, 1).
fatorial(Numero, Resultado) :-
    integer(Numero),
    Numero > 0,
    Anterior is Numero - 1,
    fatorial(Anterior, Parcial),
    Resultado is Numero * Parcial.

fibonacci(0, 0).
fibonacci(1, 1).
fibonacci(Numero, Resultado) :-
    integer(Numero),
    Numero > 1,
    PrimeiroIndice is Numero - 1,
    SegundoIndice is Numero - 2,
    fibonacci(PrimeiroIndice, PrimeiroValor),
    fibonacci(SegundoIndice, SegundoValor),
    Resultado is PrimeiroValor + SegundoValor.

% ?- fatorial(5, Resultado).
% ?- fibonacci(7, Resultado).
