% Exemplo da sintaxe e uso dos operadores aritméticos
% Adição: +
somar(A, B, Resultado) :- 
    Resultado is A + B.
% Consulta: ?- somar(2, 3, R).

% Subtração: -
subtrair(A, B, Resultado) :- 
    Resultado is A - B.
% Consulta: ?- subtrair(5, 3, R).
     
% Multiplicação: *
multiplicar(A, B, Resultado) :- 
    Resultado is A * B.
% Consulta: ?- multiplicar(2, 3, R).

% Divisão: /
dividir(A, B, Resultado) :- 
    B \= 0, % Evitar divisão por zero
    Resultado is A / B.
% Consulta: ?- dividir(6, 2, R).

% Divisão Inteira: //
dividirInteiro(A, B, Resultado) :- 
    B \= 0, % Evitar divisão por zero
    Resultado is A // B.
% Consulta: ?- dividirInteiro(7, 3, R).

% Módulo: mod
modulo(A, B, Resultado) :- 
    B \= 0, % Evitar divisão por zero
    Resultado is A mod B.
% Consulta: ?- modulo(7, 3, R).
