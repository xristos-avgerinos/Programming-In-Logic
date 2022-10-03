

family(person(tom,fox,date(7,may,1950),works(bbc,15200)),
	person(ann,fox,date(9,may,1951),unemployed),
	[person(pat,fox,date(5,may,1973),unemployed),person(jim,fox,date(5,may,1973),unemployed)]).
	
family(person(dimitris,avgerinos,date(09,january,1958),works(kava,12000)),
	person(margarita,avgerinou,date(9,april,1967),works(school,10000)),
	[person(chris,avgerinos,date(9,april,2001),unemployed),person(axilleas,avgerinos,date(30,may,1998),works(aen,20000))]).
	
family(person(john,lewis,date(13,december,1960),works(apple,30000)),
	person(katia,lewis,date(29,may,1970),unemployed),
	[person(phill,lewis,date(23,january,1995),unemployed),person(olivia,lewis,date(25,february,1998),unemployed),person(emma,lewis,date(12,february,1999),unemployed)]).

child(X):- family(_, _, Children), member(X, Children).
dateofbirth(person(_,_,Date,_),Date).	

husband(X):- family(X,_,_).
wife(X):- family(_,X,_).

exists(X):- husband(X).
exists(X):- wife(X).

salary(person(_,_,_,works(_,S)),S).

salary(person(_,_,_,unemployed),0).

%i)
women_with_at_least_3_children(Name,Surname):- family(_,person(Name,Surname,_,_), Children),length(Children,N),N>=3.

families_with_at_least_3_children(Familly_Name):- family(person(_,Familly_Name,_,_),_, [_,_,_|_]).

%ii)
children_born_in_specific_year(X,Y):-child(X),dateofbirth(X,date(_,_,Y)).

%iii)
employed_wife(Name,Surname):- wife(person(Name,Surname,_,works(_,_))).

unemployed_parents_born_before_1963(Name,Surname) :- exists(person(Name,Surname,date(_,_,Year),unemployed)),Year<1963.

%iv)
people_born_before_1950_salary_less_8000(Person) :- exists(Person),dateofbirth(Person,date(_,_,Year)),Year < 1950,salary(Person,Salary),Salary < 8000.

