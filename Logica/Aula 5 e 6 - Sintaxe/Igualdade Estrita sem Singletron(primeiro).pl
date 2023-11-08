% Exemplos com as diferenças entre operadores de igualdade e unificação

% Igualdade estrita (==)
exemploIgualdadeEstrita :- 
    X = 5, Y = 5, 
    X == Y.
% Consulta: ?- exemploIgualdadeEstrita.

% Igualdade estrita com átomos
exemploIgualdadeEstritaAtomos :-
    X = casa, Y = casa,
    X == Y.
% Consulta: ?- exemploIgualdadeEstritaAtomos.
   
% Igualdade estrita com listas
exemploIgualdadeEstritaListas :-
    X = [1, 2, 3], Y = [1, 2, 3],
    X == Y.
% Consulta: ?- exemploIgualdadeEstritaListas.

% Unificação (=)
exemploUnificacao :- 
    _ = Y, 
    Y = 5.
% Consulta: ?- exemploUnificacao.

% Unificação com átomos
exemploUnificacaoAtomos :-
    X = casa,
    casa = X.
% Consulta: ?- exemploUnificacaoAtomos.

% Unificação com listas
exemploUnificacaoListas :-
    [_A, _B, _C] = [1, 2, 3].
% Consulta: ?- exemploUnificacaoListas.

% Diferença aritmética (=\=)
exemploDiferencaAritmetica :-
    X = 5,
    Y = 6,
    X =\= Y.
% Consulta: ?- exemploDiferencaAritmetica.
