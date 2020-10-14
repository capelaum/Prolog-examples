pali(X) :- reversa(X,X).

reversa([],[]).
reversa([X|Y],Z) :- reversa(Y,W), append(W,[X],Z).

append([],L,L).
append([X|Y],Z,[X|W]) :- append(Y,Z,W).