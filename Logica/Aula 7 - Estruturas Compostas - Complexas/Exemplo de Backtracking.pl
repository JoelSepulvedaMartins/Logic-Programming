adjacente(a, b).
adjacente(b, c).
adjacente(c, d).
adjacente(d, e).

caminho(X, Y) :- adjacente(X, Y).
caminho(X, Y) :- adjacente(X, Z), caminho(Z, Y).

% Iniciando uma Consulta:
% Suponha que iniciamos uma consulta caminho(a, e). 
% Prolog começa tentando satisfazer este objetivo.

% Processo de Unificação:
% Inicialmente, ele tenta unificar caminho(a, e) 
% com a primeira cláusula de caminho(X, Y), 
% que é adjacente(X, Y). Isso falha, 
% pois a não é adjacente a e diretamente.

%% Explorando Alternativas:
%% Então, Prolog volta atrás e tenta a segunda cláusula 
% de caminho(X, Y), que envolve uma chamada recursiva.

%% Chamadas Recursivas:
%% A chamada recursiva começa com adjacente(a, Z), 
% que unifica com adjacente(a, b) (primeiro fato), 
% e então faz uma nova chamada recursiva para caminho(b, e).

%% Continuando o Processo:
%% Esse processo continua, com Prolog tentando encontrar 
% um caminho de b para e através de chamadas recursivas 
% e backtracking quando necessário, 
% até que eventualmente encontre uma solução ou 
% explore todas as possibilidades e falhe.

%% Encontrando a Solução:
%% Neste caso, ele encontrará uma solução, estabelecendo 
% um caminho a -> b -> c -> d -> e através de uma série 
% de unificações e chamadas recursivas bem-sucedidas.
  
% ?- caminho(a,e).

% o interpretador tenta a primeira regra de caminho(X, Y) 
% para verificar se adjacente(a, e) é verdadeiro. 
% Não é, então ele tenta a segunda regra 
% caminho(X, Y) com X = a e Y = e.

% Isso leva a uma nova consulta: adjacente(a, Z), 
% que é verdadeira com Z = b. 
% 
% Isso, por sua vez, leva a uma nova consulta: caminho(b, e).
% 
% O processo se repete, com o interpretador continuando a 
% testar regras recursivamente até encontrar um caminho 
% de a para e ou determinar que nenhum caminho existe.

%%                            caminho(a, e)
%%                            /           \
%%                     adjacente(a, b)    falha 
%%                        /       
%%                    caminho(b, e)
%%                     /          \
%%              adjacente(b, c)   falha 
%%                / 
%%            caminho(c, e)
%%             /          \
%%       adjacente(c, d)  falha 
%%          /
%%      caminho(d, e)
%%      /            \
%%  adjacente(d, e)  falha 
%%  /
%%sucesso (aqui, chegamos a uma folha de sucesso, o que indica que um caminho foi encontrado)
