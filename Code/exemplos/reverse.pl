rev(L1, L3) :- revacc(L1, [ ], L3).
revacc([ ], L3, L3).
revacc([H|L1], L2, L3) :- revacc(L1, [H|L2], L3).