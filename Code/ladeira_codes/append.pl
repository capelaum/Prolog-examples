append([],Ys,Ys). % Condição de parada:   A lista vazia concatenada com qualquer lista resulta na própria lista.
append([X|Xs], Ys, [X|Zs]) :- append(Xs,Ys,Zs).

++([X|Xs], Ys, [X|Zs]) :- ++(Xs,Ys,Zs).
++([],Ys,Ys).


/* 
  Usos: 

  append([alfa, beta], [gama, delta], X).
  append(X, [b, c, d], [a, b, c, d]).

 */