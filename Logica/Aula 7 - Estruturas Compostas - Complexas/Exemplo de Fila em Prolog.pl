% Predicado para colocar um elemento na fila (enfileirar)
% O operador '|' é usado para dividir a cabeça e a cauda da lista
enfileirar(Elemento, [], [Elemento]).
enfileirar(Elemento, [Cabeça | Cauda], [Cabeça | NovaCauda]) :-
    enfileirar(Elemento, Cauda, NovaCauda).

% Predicado para retirar um elemento da fila (desenfileirar)
% O operador '|' é usado para dividir a cabeça e a cauda da lista
desenfileirar([Cabeça | Cauda], Cabeça, Cauda).

% Predicado para calcular o tamanho da fila (base case)
tamanhoFila([], 0).

% Predicado para calcular o tamanho da fila (caso recursivo)
% O operador 'is' é usado para calcular a expressão do lado direito e atribuir o resultado à variável do lado esquerdo
tamanhoFila([_ | Cauda], Tamanho) :-
    tamanhoFila(Cauda, TamanhoCauda),
    Tamanho is TamanhoCauda + 1.

% Exemplos de consultas positivas:

% Enfileirando um elemento em uma fila vazia
% ?- enfileirar(1, [], Fila).
% Resposta esperada: Fila = [1]

% Enfileirando um elemento em uma fila não vazia
% ?- enfileirar(4, [1, 2, 3], Fila).
% Resposta esperada: Fila = [1, 2, 3, 4]
 
% Desenfileirando um elemento de uma fila
% ?- desenfileirar([1, 2, 3], Elemento, Fila).
% Resposta esperada: Elemento = 1, Fila = [2, 3]



