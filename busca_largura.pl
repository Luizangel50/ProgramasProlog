

proximo_branco([H|T], Y):-
	H == branco,
	Y = T.

proximo_vazio([H|T], Y):-
	H == vazio, 
	Y = T.

proximo_preto([H|T]):-
	H == preto.

conferir_lista([]).
conferir_lista([H|T], Z):-
	H == branco, 
	proximo_branco(T, [A|B]),
	A == vazio,
	conferir_lista([H|T], Z).

conferir_lista([H|T], Z):-
	H == branco, 
	proximo_vazio(T, Y),
	Z = [vazio|[branco| T]].

conferir_lista([H|T], Z):-
	H == branco, 
	proximo_preto(T)






busca_largura([H|T], X):-
	conferir_lista([H|T], X).