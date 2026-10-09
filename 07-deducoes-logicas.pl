% Exemplo simples de deducao: animais de estimacao.
gosta(ana, gatos).
gosta(bruno, cachorros).
gosta(caio, gatos).

tem_animal(ana, mimi).
tem_animal(bruno, rex).

tipo_animal(mimi, gatos).
tipo_animal(rex, cachorros).

gosta_do_proprio_animal(Pessoa) :-
    tem_animal(Pessoa, Animal),
    tipo_animal(Animal, Tipo),
    gosta(Pessoa, Tipo).

mesma_preferencia(Pessoa1, Pessoa2) :-
    gosta(Pessoa1, Tipo),
    gosta(Pessoa2, Tipo),
    Pessoa1 \= Pessoa2.

% ?- gosta_do_proprio_animal(ana).
% ?- mesma_preferencia(ana, Pessoa).
