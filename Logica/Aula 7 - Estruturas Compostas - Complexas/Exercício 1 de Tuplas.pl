% Fatos: Definindo alguns pontos no plano cartesiano
ponto(1, 2).
ponto(3, 4).
ponto(5, 6).
ponto(9, 6). % este não será colinear com (1,2),(3,4).

% Regra: Calculando a distância entre dois pontos
% A fórmula da distância entre dois pontos (x1, y1) e (x2, y2) é √((x2 - x1)² + (y2 - y1)²)
distancia(Ponto1, Ponto2, Distancia) :-
    Ponto1 = ponto(X1, Y1),  %só para mostrar unificação
    Ponto2 = ponto(X2, Y2),
    DeltaX is X2 - X1,
    DeltaY is Y2 - Y1,
    Distancia is sqrt(DeltaX^2 + DeltaY^2).

% Regra: Verificando se três pontos são colineares
% Três pontos são colineares se a área do triângulo formado por eles é zero.
% A fórmula da área do triângulo formado pelos pontos (x1, y1), (x2, y2) e (x3, y3) é:
% Área = 0.5 * |x1(y2 - y3) + x2(y3 - y1) + x3(y1 - y2)|
colinear(Ponto1, Ponto2, Ponto3) :-
    Ponto1 = ponto(X1, Y1),
    Ponto2 = ponto(X2, Y2),
    Ponto3 = ponto(X3, Y3),
    Area is 0.5 * abs(X1*(Y2 - Y3) + X2*(Y3 - Y1) + X3*(Y1 - Y2)),
    Area =:= 0.0.


% Consultas: Testando as regras criadas
% ?- distancia(ponto(1, 2), ponto(3, 4), D).
% ?- colinear(ponto(1, 2), ponto(3, 4), ponto(5, 6)).