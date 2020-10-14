simNao(Msg) :- nl, write(Msg), repeat,
write(' (s/n) '), get_char(N), nl,
  member(N,"SsNn"), !,
  member(N,"Ss").