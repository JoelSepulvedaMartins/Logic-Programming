% Prolog: Exemplos com Operadores Lógicos
% os predicados conjuncao/2, disjuncao/2, e negacao/1 foram definidos 
% apenas para ilustrar o uso dos operadores lógicos

% Conjunção (E): ,
conjuncao(A, B) :- 
    A, B.

% Consulta: ?- conjuncao(2 > 1, 3 < 4).
% Resposta: true.
   
% Disjunção (OU): ;
disjuncao(A, B) :- 
    A ; B.

% Consulta: ?- disjuncao(2 > 1, 1 > 2).
% Resposta: true.

% Negação: \+
negacao(A) :- 
    \+ A.

% Consulta: ?- negacao(2 < 1).
% Resposta: true.

