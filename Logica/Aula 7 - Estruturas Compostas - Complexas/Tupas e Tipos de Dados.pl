% Átomo
corPredominante(carro, azul).
% Números (Inteiro e Real)
idade(joao, 30).
altura(joao, 1.75).
% Variável
maiorQueCinco(X) :- X > 5.
% Lista
membrosEquipe(['Ana', 'Bruno', 'Carlos']).
% Estrutura
ponto(tridimensional, _X, _Y, _Z).
% String (dependendo da implementação de Prolog)
mensagem("Hello, World!").

% Definindo fatos com tuplas
tupla(1, 'a').
tupla(3, 'b').
tupla(5, 'c').

% Definindo a regra
primeiroElementoMaiorQueDois(tupla(X, _)) :- X > 2.
é_numero(tupla(X, _)) :- number(X).

% Realizando consultas
%%?- tupla(X, Y).
%%?- é_numero(tupla(1, 'a')).
%%?- primeiroElementoMaiorQueDois(tupla(1, 'a')). % Deverá retornar false
%%?- primeiroElementoMaiorQueDois(tupla(3, 'b')). % Deverá retornar true
