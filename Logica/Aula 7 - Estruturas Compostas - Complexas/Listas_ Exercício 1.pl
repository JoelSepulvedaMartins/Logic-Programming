% -----------------------------
% Exercício: Manipulação de Listas em Prolog
% -----------------------------

% Exercício 1: Concatenação de Listas
% Escreva uma regra que receba duas listas como entrada e retorne uma lista que seja a concatenação das duas.

% Caso base: se a primeira lista é vazia, a lista resultante é a segunda lista.
concatenar([], Lista2, Lista2).

% Caso recursivo: o primeiro elemento da primeira lista é anexado à frente do resultado da concatenação do resto da primeira lista com a segunda lista.
concatenar([Cabeca|Cauda1], Lista2, [Cabeca|Cauda2]) :-
    concatenar(Cauda1, Lista2, Cauda2).

% Exemplo de consulta:
% ?- concatenar([1, 2], [3, 4], X).
% X = [1, 2, 3, 4].

% -----------------------------

% Exercício 2: Último Elemento
% Escreva uma regra que receba uma lista e retorne o último elemento da lista.

% A regra "ultimoElemento" utiliza recursão para encontrar o último elemento da lista.
% Caso Base: o último elemento de uma lista com um único elemento é o próprio elemento.
ultimoElemento([Elemento], Elemento).

% Caso Recursivo: remove o primeiro elemento da lista e chama a função novamente com a cauda da lista.
ultimoElemento([_|Cauda], Elemento) :-
    ultimoElemento(Cauda, Elemento).

% Exemplo de consulta:
% ?- ultimoElemento([1, 2, 3, 4], X).
% X = 4.

% -----------------------------

% Exercício 3: Elemento em Índice Específico
% Escreva uma regra que receba uma lista, um índice (começando de 0) e retorne o elemento presente nesse índice na lista.

% A regra "elementoIndice" utiliza recursão e decrementa o índice até encontrar o elemento desejado.
% Caso Base: o elemento no índice 0 é a cabeça da lista.
elementoIndice([Elemento|_], 0, Elemento).

% Caso Recursivo: remove o primeiro elemento da lista e decrementa o índice, então chama a função novamente com a cauda da lista e o índice decrementado.
elementoIndice([_|Cauda], Indice, Elemento) :-
    Indice > 0, 
    NovoIndice is Indice - 1,
    elementoIndice(Cauda, NovoIndice, Elemento).

% Exemplo de consulta:
% ?- elementoIndice([a, b, c, d], 2, X).
% X = c.
