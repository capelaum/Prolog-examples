membro(X, [X|Xs]).  			              % fato
membro(X, [Y|Xs]) :- membro(X,Xs) .   	% regra

/* 
  membro(4, [1,2,3,4,5,6]). -> true
  membro(x, [1,2,3,4,5,6]). -> false
  membro(X, [1,2,3,4,5,6]). -> ...
*/