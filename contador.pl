% Programa em PROLOG para contar o numero de vezes
% que um elemento aparece na lista

% Regra recursiva e principal
contador([], _, 0).
contador(Y, Y, 1).

contador([H|T], Y, W):-
	H == Y,
	contador(T, Y, Z),
	W is Z+1.

contador([H|T], Y, Z):-
	H \== Y,
	contador(T, Y, Z).