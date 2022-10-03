pair_list([], []).
pair_list([First, Second | Tail], [[First, Second] | Rest]) :-
    pair_list(Tail, Rest).