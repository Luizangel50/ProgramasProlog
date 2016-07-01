% Programa em PROLOG para
% achar o menor elemento em uma lista

% Regra auxiliar
menor(X,[],X).
menor(X,[Y|T],Z):-
	X=<Y,
	menor(X, T, Z).
menor(X,[Y|T],Z):-
	X>Y,
	menor(Y,T,Z).


% Regra principal
minimo([H|T], X):-
	menor(H, T, X).