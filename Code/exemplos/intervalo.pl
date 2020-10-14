intervalo(I,J) :- I > J, !, fail.
intervalo(I,J) :- write(I), nl, I1 is I+1, intervalo(I1,J).