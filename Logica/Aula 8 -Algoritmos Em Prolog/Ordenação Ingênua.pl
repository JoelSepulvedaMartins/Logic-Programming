perm([],[]).
perm(L,[H|T]) :-
    append(V,[H|U],L),
    append(V,U,W), 
    perm(W,T).

% Exemplo de consulta:
% ?- perm([1,2,3], Y).

inOrder([]).
inOrder([_]).
inOrder([A,B|T]) :-
    A =< B, 
    inOrder([B|T]).
    
% Exemplo de consulta:
% ?- inOrder([1,2,3,4]).

naiveSort(L1,L2) :-
 perm(L1,L2), inOrder(L2).

% Exemplo de consulta:
% ?- naiveSort([7,3,88,2,1,6,77,-23,5],L).