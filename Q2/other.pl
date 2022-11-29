remove_every_other([],[]).
remove_every_other([H1], [H1]).
remove_every_other([H1,_|T1], [H1|T2]) :-
    remove_every_other(T1,T2).