mmc(X, Y, MMC) :-
  mdc(X, Y, MDC),
  MMC is X * Y / MDC.

mdc(0, Y, Y) :- !.
mdc(X, Y, MDC) :- 
  X < Y, !, 
  X1 is Y mod X, 
  mdd(X1, X MDC).
mdc (X, Y, MDC) :- 
  X1 is X mod Y, 
  mdd(X1, Y, MDC), !.