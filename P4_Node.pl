connected(jakarta, bandung, 150).
connected(jakarta, semarang, 450).
connected(bandung, semarang, 300).
connected(semarang, yogyakarta, 130).
connected(yogyakarta, surabaya, 350).
connected(semarang, surabaya, 350).

bfs(Start, Goal):-
    bfs_queue([[Start]], Goal, Visited),
    reverse(Visited, Path),
    write('Jalur: '), print_path(Path).

bfs_queue([[Goal|Path]|_], Goal, [Goal|Path]).
bfs_queue([Path|Queue], Goal, Visited):-
    extend(Path, NewPaths),
    append(Queue, NewPaths, NewQueue),
    bfs_queue(NewQueue, Goal, Visited).

extend([Node|Path], NewPaths):-
    findall([NewNode, Node|Path],
            (connected(Node, NewNode, _), \+ member(NewNode, [Node|Path])),
            NewPaths).

print_path([]).
print_path([H|T]):-
    print_path(T),
    write(H), write('->'), fail.
print_path(_).
