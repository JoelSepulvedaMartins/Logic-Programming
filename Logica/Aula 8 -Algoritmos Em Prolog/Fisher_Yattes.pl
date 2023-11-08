:- use_module(library(random)).

fisher_yates(InputList, ShuffledList) :-
    length(InputList, Length),
    fisher_yates(InputList, Length, [], ShuffledList).

fisher_yates(_, 0, Acc, Acc) :- !.
fisher_yates(InputList, N, Acc, ShuffledList) :-
    N > 0,
    NewN is N - 1,
    random(0, N, RandomIndex),
    nth0(RandomIndex, InputList, RandomElement),
    delete(InputList, RandomElement, NewInputList),
    fisher_yates(NewInputList, NewN, [RandomElement|Acc], ShuffledList).
