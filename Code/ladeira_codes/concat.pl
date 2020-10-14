concat([],Ys,Ys).                             % fato
concat([X|Xs],Ys,[X|Zs]) :- concat(Xs,Ys,Zs). % regra


/* 
  Inputs:
  ?- concat([1,2,3,4], [a,b,c,d], Rs). -> Rs = [1,2,3,4,a,b,c,d]
  ?- concat(Xs, Ys, [1,2,3,4,a,b,c,d]).
  ?- concat(Xs, [a,b,c,d], [1,2,3,4,a,b,c,d]). -> Xs = [1,2,3,4] 
 */
