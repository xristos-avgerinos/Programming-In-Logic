
precede_list([],[H|T]). /*The first list is empty. Accept.*/

precede_list([H|T1],[H|T2]):-
    /*The heads are the same. Check for the tails.*/
    precede_list(T1,T2).