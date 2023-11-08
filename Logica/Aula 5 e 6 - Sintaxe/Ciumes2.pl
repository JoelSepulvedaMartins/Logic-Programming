% Bases de conhecimento

ama(vincent, mia).
ama(marcellus, mia).
ama(pumpkin, honey_bunny).
ama(honey_bunny, pumpkin).

ciumes(X, Y) :-
    dif(X,Y),  % X e Y devem ser diferentes
    ama(X, Z),
    ama(Y, Z).
    

/** <exemplos>

?- ama(X, mia).
?- ciumes(X, Y).

*/
