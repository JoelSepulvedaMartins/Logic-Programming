% Exemplo de uso de 'cut' - O 'cut' (representado por !) é utilizado para prevenir backtracking após esse ponto.
exemploCut(N) :- 
    N > 0, !, 
    write('N é positivo').
    
% Exemplo de uso de 'fail' - O 'fail' é usado para forçar uma falha e iniciar o backtracking.
exemploFail :- 
    write('Iniciando...'), nl, 
    fail, 
    write('Isso não será impresso').

% Exemplo de uso de 'repeat' - 'repeat' cria um ponto de escolha que pode ser retornado por backtracking.
exemploRepeat :- 
    repeat, 
    write('Repetindo...'), nl, 
    read(X), 
    X = stop.

% Exemplo de uso de 'repeat' e 'cut' - 'repeat' com 'cut' permite repetir até que 'cut' seja encontrado, prevenindo backtracking adicional.
exemploRepeatCut :- 
    repeat, 
    write('Repetindo uma vez...'), nl, 
    !.

% Exemplo de uso de 'once' - 'once' garante que o predicado dentro dele seja chamado apenas uma vez, sem backtracking.
exemploOnce :- 
    once(write('Isso só será impresso uma vez')).

% Exemplo de uso de 'call' - 'call' permite chamar um predicado dinamicamente durante a execução.
exemploCall :- 
    call(write, 'Chamando write com call').

% Exemplo de uso de 'assert' e 'retract' - 'assert' adiciona um fato à base de conhecimento, e 'retract' remove um fato da base de conhecimento.
exemploAssertRetract :-
    assert(fato(1)),
    write('Fato inserido'), nl,
    retract(fato(1)),
    write('Fato removido').

% Exemplo de uso de 'findall' - 'findall' coleta todas as soluções possíveis para um dado objetivo em uma lista.
exemploFindall :- 
    findall(X, between(1, 10, X), Lista), 
    write('Lista: '), 
    write(Lista).

% Exemplo de uso de 'findall' com 'cut' e 'fail' - Aqui 'findall' não encontrará nenhuma solução devido ao 'cut' e 'fail'.
exemploFindallCutFail :- 
    findall(X, (between(1, 10, X), !, fail), Lista), 
    write('Lista (deve estar vazia): '), 
    write(Lista).

% Consultas para cada exemplo
% ?- exemploCut(1).
% ?- exemploFail.
% ?- exemploCutFail(1).
% ?- exemploRepeat.
% ?- exemploRepeatCut.
% ?- exemploOnce.
% ?- exemploCall.
% ?- exemploAssertRetract.
% ?- exemploFindall.
% ?- exemploFindallCutFail.
