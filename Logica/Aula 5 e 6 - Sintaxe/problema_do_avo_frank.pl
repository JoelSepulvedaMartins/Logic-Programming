% predicados 
homem(narrador).
homem(f).
homem(s1).
homem(s2).  

% Predicados para relações baseadas em casamentos 
parentesco_legal(narrador,w).
parentesco_legal(narrador,f).

% relações de parentesco, filhos, netos de sangue
parentesco(w,d).
parentesco(f,narrador).
parentesco(narrador,s1).
parentesco(f,s2).

% Regras para difinir, pai, padrasto e avo
pai(X,Y) :- homem(X), parentesco(X,Y).
padrasto(X,Y) :-  homem(X), parentesco_legal(X,Y).
avo(X,Z) :- (pai(X,Y); padrasto(X,Y)), (pai(Y,Z) ; padrasto(Y,Z)).

%pergunte se o narrador é avo dele mesmo avo(narrador,narrador)