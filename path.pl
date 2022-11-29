weight(p, q, 10).
weight(q, r, 15).
weight(p, r, 20).
weight(p, s, 25).
weight(s, r, 30).

notmember(_,[]):-!.
notmember(E,[H|T]):-
    E \= H,
    notmember(E,T).
path(P, Q, [P, Q], N, Path) :-
    (
        weight(P, Q, N), notmember(Q, Path);
        weight(Q, P, N), notmember(Q, Path)
    ).
path(P, Q, [P, K|T], L, Path) :-
    (
        weight(P, K, N), notmember(K, Path);
        weight(K, P, N), notmember(K, Path)
    ),
    append([P, K], Path, Newpath),
    path(K, Q, [K|T], L2, Newpath),
    L is L2+N.
findPath(P, Q, [H1, H2|T], L) :-
    path(P, Q, [H1, H2|T], L, []).