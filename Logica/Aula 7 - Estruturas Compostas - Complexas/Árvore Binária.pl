% Estrutura de uma árvore binária em Prolog.

% A estrutura básica de um vértice em uma árvore binária é representada como arvore(Esquerda, Valor, Direita), 
% onde 'Esquerda' e 'Direita' são subárvores e 'Valor' é o valor armazenado no vértice.

% A árvore vazia é representada como 'nulo'.

% Criamos um predicado 'éArvore' para verificar se uma estrutura é uma árvore binária válida.
éArvore(nulo). % Uma árvore nula é uma árvore válida.
éArvore(arvore(Esquerda, _, Direita)) :- 
    éArvore(Esquerda), % A subárvore esquerda deve ser uma árvore válida.
    éArvore(Direita).  % A subárvore direita deve ser uma árvore válida.

% Para inserir um valor em uma árvore binária, utilizamos uma regra recursiva 'inserir'.
% Aqui, comparamos o valor a ser inserido com o valor no vértice atual e decidimos inseri-lo na subárvore esquerda ou direita.
inserir(nulo, Valor, arvore(nulo, Valor, nulo)). % Caso base: inserindo em uma árvore vazia.
inserir(arvore(Esquerda, ValorAtual, Direita), Valor, arvore(Esquerda, ValorAtual, Direita)) :- 
    Valor =:= ValorAtual. % O valor já existe, a árvore permanece igual.
inserir(arvore(Esquerda, ValorAtual, Direita), Valor, arvore(NovaEsquerda, ValorAtual, Direita)) :- 
    Valor < ValorAtual, % Se o valor a ser inserido é menor que o valor atual,
    inserir(Esquerda, Valor, NovaEsquerda). % inserimos na subárvore esquerda.
inserir(arvore(Esquerda, ValorAtual, Direita), Valor, arvore(Esquerda, ValorAtual, NovaDireita)) :- 
    Valor > ValorAtual, % Se o valor a ser inserido é maior que o valor atual,
    inserir(Direita, Valor, NovaDireita). % inserimos na subárvore direita.

% Exemplo de uso:

% Criando uma árvore binária com três elementos:
% ?- inserir(nulo, 10, A1), inserir(A1, 5, A2), inserir(A2, 15, A3).
% A1 = arvore(nulo, 10, nulo),
% A2 = arvore(arvore(nulo, 5, nulo), 10, nulo),
% A3 = arvore(arvore(nulo, 5, nulo), 10, arvore(nulo, 15, nulo)).
