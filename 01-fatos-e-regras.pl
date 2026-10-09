% Fatos e regras sobre estudantes e disciplinas.
estudante(ana).
estudante(bruno).
estudante(caio).
estuda(ana, logica).
estuda(bruno, banco_de_dados).
estuda(caio, logica).
estuda(caio, algoritmos).

colegas(Pessoa1, Pessoa2) :-
    estuda(Pessoa1, Disciplina),
    estuda(Pessoa2, Disciplina),
    Pessoa1 \= Pessoa2.

% ?- estudante(caio).
% ?- estuda(caio, Disciplina).
% ?- colegas(ana, Colega).
