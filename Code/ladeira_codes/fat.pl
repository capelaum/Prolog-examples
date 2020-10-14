fat(0,1):-!.
fat(1,1):-!.
fat(N,F) :- N1 is N - 1, fat(N1,F1), F is N * F1.

/* 
?- fat(0,F). -> F = 1
?- fat(5,F). -> F = 120
?- fat(5,120). -> true.
?- fat(5,100). -> false.
?- fat(N,120). -> ERROR: is/2: Arguments are not sufficiently instantiated
*/