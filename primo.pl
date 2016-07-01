% Programa em PRLOG que verifica
% se um numero e primo

% Regra que calcula o mdc entre dois numeros
mdc(X,X,X).
mdc(X,Y,D):-
	X<Y,
	Y1 is Y-X,
	mdc(X,Y1,D).
mdc(X,Y,D):-
	Y<X,
	mdc(Y,X,D).

% Regra auxiliar recursiva
primo_recursivo(X, 1).
primo_recursivo(X, Y):-
	X > 0,
	Y >= 1,
	mdc(Y, X, D),
	Z is Y - 1,
	primo_recursivo(X, Z),
	D == 1.

% Regra principal para numeros inteiros negativos
primo(X):-
	X == -2;
	X < 0,
	primo_recursivo(-X, ceiling(sqrt(-X))).

% Regra principal para numeors inteiros positivos
primo(X):-
	X == 2;
	X > 0,
	primo_recursivo(X, ceiling(sqrt(X))).