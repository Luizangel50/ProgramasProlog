% Codigo em PROLOG para exemplificar um sistema
% de inferencia em Logica de Primeira Ordem (LPO)

% Fatos

vestibulando(joao).
brasileiro(joao).
idade(joao,21).
aprovado(joao).
trancar(joao,2).
cursar_min(joao,5).
cursar_max(joao,8).


% Regras

matricular(X):-
	vestibulando(X),
	aprovado(X).

matriculado(X):-
	matricular(X),
	brasileiro(X),
	idade_max(X,26).

idade_max(X,26):-
	idade(X,Y),
	Y < 26.

engenheiro(X):-
	matriculado(X),
	trancar(X,Y),
	Y =< 3,
	cursar_min(X,5),
	cursar_max(X,8).