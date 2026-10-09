% Operacoes basicas com listas.
pertence(Elemento, [Elemento|_]).
pertence(Elemento, [_|Resto]) :-
    pertence(Elemento, Resto).

comprimento([], 0).
comprimento([_|Resto], Tamanho) :-
    comprimento(Resto, TamanhoAnterior),
    Tamanho is TamanhoAnterior + 1.

concatenar([], Lista, Lista).
concatenar([Inicio|Resto], Lista, [Inicio|Resultado]) :-
    concatenar(Resto, Lista, Resultado).

% ?- pertence(b, [a,b,c]).
% ?- comprimento([a,b,c], Tamanho).
% ?- concatenar([1,2], [3,4], Resultado).
