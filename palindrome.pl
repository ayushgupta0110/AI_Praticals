% CONCAT LIST 
concat([],L2,L2):- !.
concat([H|T],L2,[H|R]):- concat(T,L2,R).

% REVERSE LIST 
reverse([],[]):- !.
reverse([H|T],R):- reverse(T,A),concat(A,[H],R),!. 

% EQUAL 
equal([],[]):-write('List is palindrome').
equal([H1|L1],[H2|L2]):-write('List is not a palindrome').
equal([H1|L1],[H1|L2]):-equal(L1,L2).

% PALINDROME
pal(L):-reverse(L,R),equal(L,R),!.

start:-
writef("Enter list: \n"),nl,
read(Input),nl,
pal(Input).