pertence( H, [H | _]).                    % verifica se item é igual a cabeça
pertence( X, [_ | T]) :- pertence(X, T).  % verifica recursivamente se é igual a um elemento da cauda
