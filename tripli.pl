triple(H, X) :-
    sublist([H,H,H|[]], X).
sublist([], L).
sublist([H|T1], [H|T2]) :-
    sublist(T1, T2).
sublist([H1|T1], [_|T2]) :-
    sublist([H1|T1], T2).
has_triplicate(X) :-
    triple(H, X),
    write(H).