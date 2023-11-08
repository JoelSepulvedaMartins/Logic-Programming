% Caso Base: uma lista vazia ou uma lista com um único elemento já está ordenada
merge_sort([], []).
merge_sort([X], [X]).

% Caso recursivo: dividir a lista em duas metades, ordenar cada metade
% e mesclar as duas metades ordenadas
merge_sort(List, SortedList) :-
    length(List, Length),
    HalfLength is Length // 2,
    HalfLength > 0,
    split(List, HalfLength, Left, Right),
    merge_sort(Left, SortedLeft),
    merge_sort(Right, SortedRight),
    merge(SortedLeft, SortedRight, SortedList).

% Função para dividir uma lista em duas metades
split(List, Size, Left, Right) :-
    length(Left, Size),
    append(Left, Right, List).

% Função de mesclagem: mescla duas listas ordenadas em uma lista ordenada
merge(Xs, [], Xs).
merge([], Ys, Ys).
merge([X|Xs], [Y|Ys], [X|Zs]) :- X =< Y, merge(Xs, [Y|Ys], Zs).
merge([X|Xs], [Y|Ys], [Y|Zs]) :- X > Y, merge([X|Xs], Ys, Zs).

% Exemplo de consulta:
% ?- merge_sort([3,1,4,1,5,9], SortedList).
