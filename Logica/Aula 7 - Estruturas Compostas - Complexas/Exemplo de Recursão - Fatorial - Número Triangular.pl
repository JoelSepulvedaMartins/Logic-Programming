% Calcula o fatorial de um número N.
% Caso base: o fatorial de 0 é 1.
% A regra base da recursão: define que o fatorial de 0 é 1.
% Esta é a condição de término da recursão, onde não há mais chamadas recursivas.
fatorial(0, 1).
% A regra recursiva: calcula o fatorial de N.
% A recursão continua até que N seja reduzido a 0, ponto em que a regra base é ativada.
fatorial(N, Resultado) :-
    % Certifica-se de que N é maior que 0 para evitar uma recursão infinita.
    N > 0,  
    % Calcula o valor de N-1 para ser usado na próxima chamada recursiva.
    N1 is N - 1,  
    % Chamada recursiva com N-1.
    % O Prolog vai "lembrar" dessa chamada e voltará a ela após chegar ao caso base.
    fatorial(N1, ResultadoParcial),  
    % Uma vez que o caso base é alcançado e todas as chamadas recursivas são resolvidas,
    % este passo calcula o fatorial de N multiplicando N por ResultadoParcial (que é o fatorial de N-1).
    % O resultado é então unificado com a variável Resultado.
    Resultado is N * ResultadoParcial.


% Calcula o enésimo número triangular.
% Caso base: o 0-ésimo número triangular é 0.
numeroTriangular(0, 0).
% Caso recursivo: o enésimo número triangular é N mais o (N-1)-ésimo número triangular.
numeroTriangular(N, Resultado) :-
    N > 0,
    N1 is N - 1,
    numeroTriangular(N1, ResultadoParcial),
    Resultado is N + ResultadoParcial.




