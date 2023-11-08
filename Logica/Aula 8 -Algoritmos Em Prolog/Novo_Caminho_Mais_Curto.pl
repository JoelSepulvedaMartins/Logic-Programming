:- use_module(library(assoc)).

aresta(n1, n2, 1).
aresta(n1, n3, 4).
aresta(n2, n3, 2).
aresta(n2, n4, 5).
aresta(n3, n4, 3).

dijkstra(Inicio, Fim, Caminho, Custo) :-
    empty_assoc(Vistos),
    dijkstra_aux([(0, [Inicio], Inicio)], Fim, Vistos, InvCaminho, Custo),
    reverse(InvCaminho, Caminho).

dijkstra_aux([(Custo, Caminho, No)|_], Fim, _, [No|Caminho], Custo) :-
    No == Fim, !.
dijkstra_aux([(CustoCaminho, Caminho, No)|Resto], Fim, Vistos, ResCaminho, ResCusto) :-
    findall(
        (NovoCusto, [ProxNo|Caminho], ProxNo),
        (aresta(No, ProxNo, Custo), \+ get_assoc(ProxNo, Vistos, _), NovoCusto is CustoCaminho + Custo),
        Novos),
    append(Resto, Novos, NovaFila),
    sort(NovaFila, FilaOrdenada),
    put_assoc(No, Vistos, true, NovosVistos),
    dijkstra_aux(FilaOrdenada, Fim, NovosVistos, ResCaminho, ResCusto).

