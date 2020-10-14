fib(N, F) :- fibx(N,1,1,F), !. 
fibx(0, A, _, A). 
fibx(N, A, B, F) :- N1 is N - 1, AB is A + B, fibx (N1, B, AB, F).

/* 
  ?- fib(0,F). -> F = 1
  ?- fib(1,1). -> true.
  ?- fib(10,F). -> F = 89
  ?- fib(20,F). -> F = 10946
  ?- fib(100,F). -> F = 573147844013817084101.
  ?- fib(N,1). -> N = 0
  ?- fib(N,89). -> ERROR: Arguments are not sufficiently instantiated
*/
 