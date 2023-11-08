% Exemplos com Operadores de Comparação Aritmética

% Igualdade estrita (==)
igualdadeEstrita(A, B) :- 
    A == B.
% Consulta: ?- igualdadeEstrita(5, 5).

% Estritamente diferente (\==)
estritamenteDiferente(A, B) :- 
    A \== B.
% Consulta: ?- estritamenteDiferente(5, 4).

% Menor que (<)
menorQue(A, B) :- 
    A < B.
% Consulta: ?- menorQue(3, 4).
  
% Maior que (>)
maiorQue(A, B) :- 
    A > B.
% Consulta: ?- maiorQue(4, 3).

% Menor ou igual (=<)
menorOuIgual(A, B) :- 
    A =< B.
% Consulta: ?- menorOuIgual(3, 3).

% Maior ou igual (>=)
maiorOuIgual(A, B) :- 
    A >= B.
% Consulta: ?- maiorOuIgual(4, 4).
