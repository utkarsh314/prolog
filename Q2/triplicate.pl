count(_, [], 0).
count(H, [H|T], C) :-
    !,
    count(H, T, D),
    C is D+1.
count(H1, [_|T], C) :-
    count(H1, T, C).
triple(L, [H|T]) :-
    count(H, L, C), C > 2, write(H);
    triple(L, T).
has_triplicate(L) :-
    sort(L, S),
    triple(L, S).