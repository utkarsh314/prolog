sublist([], _).
sublist([H|T1], [H|T2]) :-
    sublist(T1, T2).
sublist([H1|T1], [_|T2]) :-
    sublist([H1|T1], T2).