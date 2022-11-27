remove_nth(1, [_|T], T).
remove_nth(N, [H|T1], [H|T2]) :-
    M is N-1,
    remove_nth(M, T1, T2).