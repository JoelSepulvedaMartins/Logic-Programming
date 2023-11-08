% Definindo uma lista encadeada usando o conceito nativo de 'head' e 'tail' em Prolog

% Regra para adicionar um novo elemento no início da lista encadeada.
% A função recebe um valor, a lista atual e retorna a nova lista resultante.
adicionarInicio(Valor, ListaAtual, [Valor|ListaAtual]).

% Regra para recuperar o primeiro elemento da lista encadeada.
% A função recebe uma lista encadeada e retorna o valor do primeiro elemento (cabeça da lista).
primeiroElemento([Head|_], Head).

% Regra para recuperar a cauda da lista encadeada (sublista que exclui o primeiro elemento).
% A função recebe uma lista encadeada e retorna a cauda da lista.
caudaLista([_|Tail], Tail).

% Exemplo de uso:
% Criando uma lista encadeada com três elementos:
% ?- adicionarInicio(3, [], Lista3), adicionarInicio(2, Lista3, Lista2), adicionarInicio(1, Lista2, Lista1).
% Lista3 = [3],
% Lista2 = [2, 3],
% Lista1 = [1, 2, 3].

% Consultas de validação:
% Recuperando o primeiro elemento da lista encadeada:
% ?- primeiroElemento([1, 2, 3], X).
% X = 1.

% Recuperando a cauda da lista encadeada:
% ?- caudaLista([1, 2, 3], X).
% X = [2, 3].
