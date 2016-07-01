% Programa em PROLOG que verifica
% se uma lista e palindromo

% Regra auxiliar que inverte a lista
inversor([H|T], X, Y):-
	inversor(T, [H|X], Y).
inversor([], X, X).

% Regra que verifica se a lista invertida
% e igual a lista dada
palindromo([]).
palindromo(X):-
	inversor(X, [], Y),
	X == Y.