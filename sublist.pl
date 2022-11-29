sublist([], _).
sublist([H1|T1], [H2|T2]) :-
    H1 = H2,
    sublist(T1, T2).
sublist([H1|T1], [H2|T2]) :-
    H1 \= H2,
    sublist([H1|T1], T2).