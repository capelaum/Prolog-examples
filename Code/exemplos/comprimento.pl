comprimento2(Lista, C) :-
  comprimento2(Lista, 0, C).

comprimento2([], Ac, Ac).   % clausula de parada
comprimento2([_ | T], Ac, C) :-
  NAc is Ac + 1,            % incremento do acumulador
  comprimento2(T, NAc, C).


lenacc([ ], A, A).
lenacc([H | T], A, N) :- A1 is A + 1, lenacc(T, A1, N).
listlenacc(L, N) :- lenacc(L, 0, N).