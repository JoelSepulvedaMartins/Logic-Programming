% Base case: A lista está vazia, o item não foi encontrado
busca_binaria([], _, _) :- fail.

% Base case: O item foi encontrado
busca_binaria([X], X, "Item encontrado").

% Caso recursivo: Divida a lista ao meio e procure na metade apropriada
busca_binaria(Lista, Item, Resultado) :-
    length(Lista, N),
    Meio is N // 2,
    nth0(Meio, Lista, ValorMeio),
    (   Item =:= ValorMeio
    ->  Resultado = "Item encontrado"
    ;   Item < ValorMeio
    ->  length(ListaEsquerda, Meio),
        append(ListaEsquerda, _, Lista),
        busca_binaria(ListaEsquerda, Item, Resultado)
    ;   length(ListaDireita, Meio),
        append(_, ListaDireita, Lista),
        busca_binaria(ListaDireita, Item, Resultado)
    ).

% Exemplo de chamada
% ?- busca_binaria([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 5, Resultado).
