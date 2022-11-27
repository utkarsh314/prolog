weight(P, Q, L).
findpath(P, P, [], 0).
findpath(P, Q, [P|[H|T]], L) :-
    weight(P, H, Len),
    X is L-Len,
    findpath(H, Q, [H|T], X).