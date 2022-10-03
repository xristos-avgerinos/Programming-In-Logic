% 1os tropos
common_list([H|T],L):-
    member(H,L),!.
	
common_list([H|T],L):-
    common_list(T,L).
	
%2os tropos

/*Check if the head of the first list is in L.
For H to be in L, L has to be in the form of [_,[H],_].*/
common([H|T],L):-
	append([_,[H],_],L);
	common(T,L), /*Check for tail*/!. /*We use ! to stop the procedure from failing*/


/*Check if L2 is in the form of [Prefix, L1, Suffix]*/
included_list(L1,L2):-
    append([_,L1,_],L2),!. /*We use ! so that the procedure stops before it fails*/



pair_list([], []).
pair_list([First, Second | Tail], [[First, Second] | Rest]) :-
    pair_list(Tail, Rest).



precede_list([],[H|T]). /*The first list is empty. Accept.*/

precede_list([H|T1],[H|T2]):-
    /*The heads are the same. Check for the tails.*/
    precede_list(T1,T2).



proceed_list(L1,L2):-!.

proceed_list([H1|T1],L2):-
    proceed_list(T1,L2).