somalista([H | T], S) :-
  somalista(T, SomaT),
  S is H + SomaT.
somalista([ ], 0).