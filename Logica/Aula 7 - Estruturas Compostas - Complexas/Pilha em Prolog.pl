% Pilha em Prolog seguindo a regra Last In First Out (LIFO)

% Regra para adicionar (empilhar) um elemento no início da pilha (lista).
% A função recebe um valor, a pilha atual e retorna a nova pilha resultante.
empilhar(Valor, PilhaAtual, [Valor|PilhaAtual]).

% Regra para remover (desempilhar) o primeiro elemento da pilha.
% A função recebe uma pilha e retorna a pilha resultante e o valor removido.
desempilhar([Head|Tail], Head, Tail).

% Regra para verificar o primeiro elemento (topo) da pilha sem removê-lo.
% A função recebe uma pilha e retorna o valor no topo da pilha.
verTopo([Head|_], Head).

% Exemplo de uso:
% Criando uma pilha com três elementos e depois desempilhando o elemento do topo:
% ?- empilhar(3, [], Pilha3), empilhar(2, Pilha3, Pilha2), empilhar(1, Pilha2, Pilha1), desempilhar(Pilha1, Topo, PilhaResultante).
% Pilha3 = [3],
% Pilha2 = [2, 3],
% Pilha1 = [1, 2, 3],
% Topo = 1,
% PilhaResultante = [2, 3].

% Consulta para verificar o topo da pilha:
% ?- verTopo([1, 2, 3], Topo).
% Topo = 1.

% Exemplo de desempilhar: Removendo o elemento do topo da pilha e exibindo o valor desempilhado e a pilha resultante.
% ?- desempilhar([1, 2, 3], ValorDesempilhado, PilhaResultante).
% ValorDesempilhado = 1,
% PilhaResultante = [2, 3].
