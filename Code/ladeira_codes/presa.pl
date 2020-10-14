come(urso, peixe) .
come(urso, raposa) .
come(cavalo, mato) .
animal(urso) .
animal(peixe) .
animal(raposa) .
presa(X) :- come(Y,X), animal(X) .
