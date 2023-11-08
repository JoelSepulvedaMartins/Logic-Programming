% 'not/1': É utilizado para negar um predicado.
% Aqui, o predicado ehZero/1 é negado pelo not/1
negacao :- 
    ehZero(0),  % Verifica se 0 é zero usando o predicado ehZero
    not(ehZero(5)),  % Utiliza o not/1 para negar o predicado ehZero
    write('not/1 usado para negar um predicado.'), nl.

% Predicado que verifica se um número é zero
% Utiliza o operador =:= para comparação estrita de igualdade
ehZero(X) :- X =:= 0.

% 'once/1': Garante que o predicado dentro dele seja avaliado apenas uma vez.
% member/2 é avaliado apenas uma vez graças ao once/1
umaVez :- 
    once(member(1, [1, 2, 3, 1])),  % member/2 avalia se 1 é membro da lista
    write('once/1 usado para limitar a um único resultado.'), nl.

% 'repeat/0': Utilizado para repetir indefinidamente, mas pode ser controlado com um corte (!).
% A operação é repetida até que o usuário insira 0
leiaNumeros :- 
    repeat,  % Inicia o loop
    write('Insira um número (0 para sair): '),
    read(X),  % Lê o input do usuário
    write('Você inseriu: '), write(X), nl,
    (X =:= 0, ! ; true).  % Verifica se X é zero e usa corte (!) para sair do loop

% 'call/1': É utilizado para chamar um predicado dinamicamente.
% Aqui, ehZero/1 é chamado dinamicamente usando call/1
chamar :- 
    call(ehZero(0)),  % chama o predicado ehZero com argumento 0
    write('call/1 usado para chamar um predicado dinamicamente.'), nl.

% 'fail/0': Sempre falha. É utilizado principalmente em loops para forçar a backtracking.
% O predicado buscar falha intencionalmente após imprimir todos os elementos da lista
buscar :- 
    member(X, [1, 2, 3]),  % X é membro da lista
    write(X), nl,
    fail.  % força falha e backtracking
buscar.

% Testes dos meta-predicados
% Este predicado executa todos os exemplos de meta-predicados definidos acima
testesMetaPredicados :- 
    negacao,
    umaVez,
    write('Exemplo com repeat. Siga as instruções para sair do loop.'), nl,
    leiaNumeros,
    chamar,
    write('Iniciando busca:'), nl,
    buscar.

% Para rodar todos os testes, simplesmente use 'testesMetaPredicados.' na linha de comando do Prolog.
