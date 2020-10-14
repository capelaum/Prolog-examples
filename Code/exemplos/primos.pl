primos(N, ListaPrimos) :-
  N > 1,
  intervalo(2,N,Lista),
  Parada is int(sqrt(N)), % Parte inteira da raiz quadrada de N
  crivo(Lista, Parada, ListaPrimos), !.

crivo([H | T], Parada [H | T]) :-
  H < Parada, ! .
crivo([H | T], Parada [H | T]) :-
  remove_multiplos(H, T, Novo T),
  crivo(NovoT, Parada, R).