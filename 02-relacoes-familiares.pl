% Arvore genealogica ficticia.
progenitor(maria, joao).
progenitor(maria, ana).
progenitor(joao, pedro).
progenitor(ana, clara).
progenitor(carlos, joao).
progenitor(carlos, ana).

avo(Avo, Neto) :-
    progenitor(Avo, PaiOuMae),
    progenitor(PaiOuMae, Neto).

irmaos(Pessoa1, Pessoa2) :-
    progenitor(Responsavel, Pessoa1),
    progenitor(Responsavel, Pessoa2),
    Pessoa1 \= Pessoa2.

% Observacao: irmaos/2 pode apresentar resultados repetidos
% quando duas pessoas compartilham os dois progenitores.
% ?- avo(maria, Neto).
% ?- irmaos(joao, ana).
