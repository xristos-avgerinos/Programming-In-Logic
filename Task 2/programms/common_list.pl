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