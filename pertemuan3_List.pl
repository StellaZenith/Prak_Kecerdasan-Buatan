head_tail([Head|Tail], Head, Tail).

add_to_end(Element, List, Newlist) :-
    append(List, [Element], Newlist).

add_to_start(Element, List, [Element|List]).

gabung([], L, L).
gabung([H|T], L, [H|R]) :-
    gabung(T, L, R).

panjang([], 0).
panjang([_|T], N) :-
    panjang(T, N1),
    N is N1 + 1.

hapus(X, [X|T], T).
hapus(X, [H|T], [H|R]):-
    X \= H,
    hapus(X, T, R).

ubah(X, Y, [X|T], [Y|T]).
ubah(X, Y, [H|T], [H|R]) :-
    X \= H,
    ubah(X, Y, T, R).
