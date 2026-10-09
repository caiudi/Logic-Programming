% Processamento de listas numericas.
soma_lista([], 0).
soma_lista([Inicio|Resto], Soma) :-
    soma_lista(Resto, SomaResto),
    Soma is Inicio + SomaResto.

maior_lista([Numero], Numero).
maior_lista([Inicio|Resto], Maior) :-
    maior_lista(Resto, MaiorResto),
    (Inicio >= MaiorResto -> Maior = Inicio ; Maior = MaiorResto).

inverter_lista(Lista, Invertida) :-
    inverter_auxiliar(Lista, [], Invertida).

inverter_auxiliar([], Acumulador, Acumulador).
inverter_auxiliar([Inicio|Resto], Acumulador, Resultado) :-
    inverter_auxiliar(Resto, [Inicio|Acumulador], Resultado).

% ?- soma_lista([2,4,6], Soma).
% ?- maior_lista([5,9,2], Maior).
% ?- inverter_lista([a,b,c], Resultado).
