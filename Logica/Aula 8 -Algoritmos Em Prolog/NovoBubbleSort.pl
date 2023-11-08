inOrder([]).
inOrder([_]).
inOrder([A,B|T]) :-
    A =< B, 
    inOrder([B|T]).
    
% Exemplo de consulta:
% ?- inOrder([1,2,3,4]).

bubbleSort(L, L) :- inOrder(L). 
bubbleSort(L1,L2) :- 
    append(X,[A,B|Y],L1), A > B, 
    append(X,[B,A|Y],T),
    bubbleSort(T,L2).

% Exemplo de consulta:
% ?- bubbleSort([7,3,88,2,1,6,77,-23,5],L).
