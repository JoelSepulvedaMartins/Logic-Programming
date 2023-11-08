% Definindo uma Lista Encadeada em Prolog usando a estrutura "vertice"

% Um vértice na lista encadeada é representado pela estrutura vertice(Valor, Proximo).
% "nulo" é usado para indicar o fim da lista encadeada, representando uma lista vazia ou o último vértice na lista.

% Definição de um vértice e uma lista vazia
listaVazia(nulo).

% Regra para adicionar um novo elemento no início da lista encadeada.
% A função recebe um valor, a lista atual e retorna a nova lista resultante.
adicionarInicio(Valor, ListaAtual, ListaResultante) :-
    ListaResultante = vertice(Valor, ListaAtual).

% Regra para recuperar o primeiro elemento da lista encadeada.
% A função recebe uma lista encadeada e retorna o valor do primeiro elemento (cabeça da lista).
primeiroElemento(vertice(Valor, _), Valor).

% Regra para recuperar a cauda da lista encadeada (sublista que exclui o primeiro elemento).
% A função recebe uma lista encadeada e retorna a cauda da lista.
caudaLista(vertice(_, Proximo), Proximo).

% Exemplo de uso:
% Criando uma lista encadeada com três vértices:
% ?- adicionarInicio(3, nulo, Lista3), adicionarInicio(2, Lista3, Lista2), adicionarInicio(1, Lista2, Lista1).
% Lista3 = vertice(3, nulo),
% Lista2 = vertice(2, vertice(3, nulo)),
% Lista1 = vertice(1, vertice(2, vertice(3, nulo))).

% Consultas de validação:
% Recuperando o primeiro elemento da lista encadeada:
% ?- primeiroElemento(vertice(1, vertice(2, vertice(3, nulo))), X).
% X = 1.

% Recuperando a cauda da lista encadeada:
% ?- caudaLista(vertice(1, vertice(2, vertice(3, nulo))), X).
% X = vertice(2, vertice(3, nulo)).
