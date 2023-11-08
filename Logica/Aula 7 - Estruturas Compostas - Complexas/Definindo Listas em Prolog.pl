% Definição de Listas
% Lista vazia
listaVazia([]).
% Lista simples com elementos
listaSimples([1, 2, 3, 4]).
% Lista composta com sublista
listaComposta([a, [b, c], d]).

% Encontrando a "Cabeça" e a "Cauda" de uma Lista
% Neste exemplo, Cabeca será unificado com 1 e Cauda será unificado com [2, 3, 4].
exemploCabecaCauda([Cabeca|Cauda]) :- write('Cabeca: '), 
    write(Cabeca), write(', Cauda: '), writeln(Cauda).

% Função para calcular o comprimento de uma lista
% A base da recursão é uma lista vazia, que tem comprimento 0.
comprimento([], 0).
% Regra recursiva para calcular o comprimento de uma lista não vazia.
comprimento([_|Cauda], Comprimento) :-
    comprimento(Cauda, ComprimentoCauda),
    Comprimento is ComprimentoCauda + 1.

% Função para inverter uma lista
% A base da recursão é uma lista vazia, que é a sua própria inversão.
inverter([], []).
% Regra recursiva para inverter uma lista não vazia.
inverter([Cabeca|Cauda], ListaInvertida) :-
    inverter(Cauda, ListaInvertidaCauda),
    append(ListaInvertidaCauda, [Cabeca], ListaInvertida).

% Função para verificar se um elemento está presente em uma lista
% O caso base verifica se o elemento é a cabeça da lista.
pertence(Elemento, [Elemento|_]).
% Caso recursivo verifica se o elemento está presente na cauda da lista.
pertence(Elemento, [_|Cauda]) :-
    pertence(Elemento, Cauda).


% Consultas para testar as definições de listas
%?- listaVazia(X).
% X = [].

%?- listaSimples(X).
% X = [1, 2, 3, 4].

%?- listaComposta(X).
% X = [a, [b, c], d].

% Consulta para testar a função exemploCabecaCauda
%?- exemploCabecaCauda([1, 2, 3, 4]).
% Cabeca: 1, Cauda: [2, 3, 4]
% true.

% Consultas para testar a função comprimento
%?- comprimento([], N).
% N = 0.

%?- comprimento([1, 2, 3], N).
% N = 3.

% Consultas para testar a função inverter
%?- inverter([], X).
% X = [].

%?- inverter([1, 2, 3], X).
% X = [3, 2, 1].

% Consultas para testar a função pertence
%?- pertence(a, [a, b, c]).
% true.

%?- pertence(d, [a, b, c]).
% false.

