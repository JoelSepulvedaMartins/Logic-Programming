% 'is' é usado para avaliação aritmética. O operando da direita é avaliado,
% e o resultado é unificado com o operando da esquerda.
avaliacaoAritmetica :- 
    X is 3 + 2, 
    write('X is 3 + 2: '), write(X), nl.

% '=' é usado para unificação. Ele tenta fazer com que os termos dos dois lados se tornem iguais.
unificacao :- 
    A = 5, 
    write('A = 5: '), write(A), nl.
    
% ':-' é usado para definir regras. Neste exemplo, 'quadrado' é uma regra que
% estabelece que Y é o quadrado de X.
quadrado(X, Y) :- 
    Y is X * X.

% '->' é usado para implicação em regras condicionais. Ele é similar ao 'if-then-else'.
% Este exemplo ilustra um predicado que verifica se um número é positivo, negativo ou zero.
verificarNumero(X) :- 
    (X > 0 -> write('X é positivo'); 
    X < 0 -> write('X é negativo'); 
    write('X é zero')).

% Testes dos operadores
testes :- 
    avaliacaoAritmetica,
    unificacao,
    quadrado(4, Y), write('Quadrado de 4: '), write(Y), nl,
    verificarNumero(-5), nl,
    verificarNumero(0), nl,
    verificarNumero(5).

% Para rodar todos os testes, simplesmente use 'testes.' na linha de comando do Prolog.
