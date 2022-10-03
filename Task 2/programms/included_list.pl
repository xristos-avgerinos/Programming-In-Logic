/*Check if L2 is in the form of [Prefix, L1, Suffix]*/
included_list(L1,L2):-
    append([_,L1,_],L2),!. /*We use ! so that the procedure stops before it fails*/
