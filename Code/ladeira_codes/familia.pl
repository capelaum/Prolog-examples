% Fatos
parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(liz,tim).
parent(bob,ann).
parent(bob,patty).
parent(patty,jim).

man(bob).
man(tom).
man(jim).
man(patty).

lady(pam).
lady(liz).
lady(ann).

% Regras

offspring(Y,X) :- parent(X,Y).                          % X - pai, Y - Filho

mae(X,Y) :- parent(X,Y), lady(X) .                      % X - Mae, Y - Filho
pai(X,Y) :- parent(X,Y), man(X) .                       % X - Pai, Y - Filho

predecessor(X,Z) :- parent(X,Z).
predecessors(X,Z) :- parent(X,Y), predecessor(Y,Z).     % X - avo, Z - neto
avos(X,Z) :- parent(X,Y), parent(Y,Z) .                 % X - avo, Z - neto
avo_man(X,Z) :- parent(X,Y), parent(Y,Z), man(X).       % X - avô, Z - neto
avo_lady(X,Z) :- parent(X,Y), parent(Y,Z), lady(X).    % X - avó, Z - neto

first_son(X,Y) :- man(X),parent(Y,X), !.                % X - filho, Y - pai/mae
first_lady(X,Y) :- lady(X),parent(Y,X), !.              % X - filha, Y - pai/mae

irmaos(A,B) :- parent(P,A), parent(P,B), A \== B.       % A - Irmao_1, B - Irmao_2, P - parent
tios(T,S) :- parent(P,S), irmaos(P,T).                   % T - tio, S - sobrinho

primo(X,Y) :- irmaos(A,B), parent(A,X), parent(B,Y), X \== Y.

/* 
  04-prolog-red-int - Slide 9 

    pam   tom
      \   /  \
      bob    liz
    /   \      \
  ann   patty  tim
          \ 
          jim
  
*/