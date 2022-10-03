proceed_list(L1,L2):-!.

proceed_list([H1|T1],L2):-
    proceed_list(T1,L2).