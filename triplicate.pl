triple(H, X) :-
    triple_([H,H,H|[]], X).
triple_([], _).
triple_([H|T1], [H|T2]) :-
    triple_(T1, T2).
triple_([H1|T1], [_|T2]) :-
    triple_([H1|T1], T2).
has_triplicate(X) :-
    triple(H, X),
    write(H).