% Programa em PROLOG para
% ordenar uma lista

% Adicionar o menor elemento a lista
adicionar_menor(X,[],[X]).
adicionar_menor(X,[Y|T],[X,Y|T]):-
	X=<Y.
adicionar_menor(X,[Y|T],[Y|Z]):-
	X>Y,
	adicionar_menor(X,T,Z).


% Regra auxiliar para ordenar a lista
ordenar_lista([],L,L).
ordenar_lista([H|T],L,X):-
	adicionar_menor(H,L,Y),
	ordenar_lista(T,Y,X).


% Regra principal para ordenar a lista
ordenar(Lista,X):-
	ordenar_lista(Lista,[],X).