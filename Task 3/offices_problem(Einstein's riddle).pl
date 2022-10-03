/*office(office_color,employ_department,pc_type,drink,phone_model) :-
	color(office_color),department(employ_department),pc(pc_type),drink(drink),phone(phone_model).*/

windows_xp_owner(Owner) :-
	offices(Offices),
	member(office(Owner,_,windowsXp,_,_), Offices).

water_drinker(Drinker) :-
	offices(Offices),
	member(office(Drinker,_,_,water,_), Offices),!.

	
offices(Offices) :-
  length(Offices, 5),                                                          
  member(office(red, cs, _, _, _), Offices),                               				% 1. 
  member(office(_, ode, macbookPro, _, _), Offices),                               		% 2.
  member(office(green, _, _, coffee, _), Offices),                              		% 3.
  member(office(_, financial, _, tea, _), Offices),                             		% 4.
  adjacent(office(beige, _, _, _, _), office(green, _, _, _, _), Offices),        		% 5.
  member(office(_, _, macbookAir, _, iphone), Offices),                        			% 6.
  member(office(yellow, _, _, _, blackperry), Offices),                         		% 7.
  n_elem(3, Offices, office(_, _, _, milk, _)),                                		 	% 8.
  n_elem(1, Offices, office(_, relations, _, _, _)),                            		% 9.
  adjacent(office(_, _, _, _, nokia), office(_, _, netbook, _, _), Offices), 			% 10.
  adjacent(office(_, _, _, _, blackperry), office(_, _, windows7, _, _), Offices),      % 11.
  member(office(_, _, _, orangeJuice, android), Offices),                 				% 12.
  member(office(_, supplies, _, _, ericsson), Offices),                      			% 13.
  adjacent(office(_, relations, _, _, _), office(blue, _, _, _, _), Offices),   		% 14.
  member(office(_,_,_,water,_), Offices),												% one of them drinks water
  member(office(_,_,windowsXp,_,_), Offices),!.											% one of them owns a Windows XP
	
	
adjacent(A, B, List) :- nextto(A, B, List); nextto(B, A, List).

n_elem(1,[X|T],X).

n_elem(N,[H|T],X) :- 
	N1 is N-1, n_elem(N1, T, X). 