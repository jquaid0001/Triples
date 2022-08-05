% course: Organization of Programming Languages, Spring 2022
% assignment: Programming Assignment 5
% author: Josh Quaid
% due: April 9, 2022 @ 11:59pm
% submitted: April 4, 2022 @ 4:55pm
% directions: - To use the Prolog interpreter
% 	      - Enter the interpreter by typing swipl at a terminal prompt
% 	      - Type ['triples']. to load the program into the prolog interpreter
% 	      - To determine which European states you can get to by traveling through 2 states
% 	      -    type the following:  threestep(DesiredStartState, B, C, D).
% 	      -    where "DesiredStartState" is the State to leave from. The program will
% 	      -    respond with a list of States where B is the first State to travel through, 
% 	      -    C is the second, and D is the final destination State. 
% 	      - To see the next route and destination type ; until you reach a response of "false".



% Begin Assertion Fact Base

adjacent(albania, greece).
adjacent(albania, 'north macedonia').
adjacent(albania, montenegro).
adjacent(albania, serbia).
adjacent(amsterdam, germany).
adjacent(amsterdam, belgium).
adjacent(andorra, spain).
adjacent(andorra, france).
adjacent(austria, switzerland).
adjacent(austria, italy).
adjacent(austria, switzerland).
adjacent(austria, slovenia).
adjacent(austria, hungary).
adjacent(austria, slovakia).
adjacent(austria, czechia).
adjacent(austria, germany).
adjacent(austria, liechtenstein).
adjacent(belgium, luxembourg).
adjacent(belgium, france).
adjacent(belgium, amsterdam).
adjacent(belgium, germany).
adjacent(belarus, ukraine).
adjacent(belarus, poland).
adjacent(belarus, lithuania).
adjacent(belarus, latvia).
adjacent('bosnia and herzegowina', croatia).
adjacent('bosnia and herzegowina', montenegro).
adjacent('bosnia and herzegowina', serbia).
adjacent(bulgaria, romania).
adjacent(bulgaria, serbia).
adjacent(bulgaria, 'north macedonia').
adjacent(bulgaria, greece).
adjacent(bulgaria, turkey).
adjacent(czechia, slovakia).
adjacent(czechia, poland).
adjacent(czechia, germany).
adjacent(czechia, austria).
adjacent(croatia, montenegro).
adjacent(croatia, 'bosnia and herzegowina').
adjacent(croatia, serbia).
adjacent(croatia, hungary).
adjacent(croatia, slovenia).
adjacent(denmark, germany).
adjacent(estonia, latvia).
adjacent(france, spain).
adjacent(france, andorra).
adjacent(france, switzerland).
adjacent(france, italy).
adjacent(france, belgium).
adjacent(france, luxembourg).
adjacent(france, germany).
adjacent(france, monaco).
adjacent(germany, austria).
adjacent(germany, czechia).
adjacent(germany, netherlands).
adjacent(germany, belgium).
adjacent(germany, switzerland).
adjacent(germany, luxembourg).
adjacent(germany, amsterdam).
adjacent(germany, france).
adjacent(germany, denmark).
adjacent(germany, poland).
adjacent(greece, turkey).
adjacent(greece, 'north macedonia').
adjacent(greece, albania).
adjacent(hungary, romania).
adjacent(hungary, croatia).
adjacent(hungary, ukraine).
adjacent(hungary, slovakia).
adjacent(hungary, serbia).
adjacent(hungary, slovenia).
adjacent(hungary, austria).
adjacent(italy, france).
adjacent(italy, 'san marino').
adjacent(italy, switzerland).
adjacent(italy, slovenia).
adjacent(italy, austria).
adjacent(italy, 'vatican city').
adjacent(kaliningrad, lithuania).
adjacent(kaliningrad, poland).
adjacent(latvia, estonia).
adjacent(latvia, lithuania).
adjacent(latvia, belarus).
adjacent(liechtenstein, switzerland).
adjacent(liechtenstein, austria).
adjacent(lithuania, latvia).
adjacent(lithuania, kaliningrad).
adjacent(lithuania, poland).
adjacent(lithuania, belarus).
adjacent(luxembourg, france).
adjacent(luxembourg, germany).
adjacent(luxembourg, belgium).
adjacent(moldova, ukraine).
adjacent(moldova, romania).
adjacent(monaco, france).
adjacent(montenegro, albania).
adjacent(montenegro, croatia).
adjacent(montenegro, 'bosnia and herzegowina').
adjacent(montenegro, serbia).
adjacent('north macedonia', greece).
adjacent('north macedonia', bulgaria).
adjacent('north macedonia', serbia).
adjacent('north macedonia', albania).
adjacent(poland, ukraine).
adjacent(poland, belarus).
adjacent(poland, slovakia).
adjacent(poland, czechia).
adjacent(poland, germany).
adjacent(poland, lithuania).
adjacent(poland, kaliningrad).
adjacent(romania, moldova).
adjacent(romania, ukraine).
adjacent(romania, bulgaria).
adjacent(romania, serbia).
adjacent(romania, hungary).
adjacent(portugal, spain).
adjacent('san marino', italy).
adjacent(serbia, montenegro).
adjacent(serbia, albania).
adjacent(serbia, 'north macedonia').
adjacent(serbia, bulgaria).
adjacent(serbia, romania).
adjacent(serbia, hungary).
adjacent(serbia, croatia).
adjacent(serbia, 'bosnia and herzegowina').
adjacent(slovenia, croatia).
adjacent(slovenia, italy).
adjacent(slovenia, austria).
adjacent(slovenia, hungary).
adjacent(slovakia, hungary).
adjacent(slovakia, poland).
adjacent(slovakia, czechia).
adjacent(slovakia, austria).
adjacent(slovakia, ukraine).
adjacent(turkey, bulgaria).
adjacent(turkey, greece).
adjacent(spain, portugal).
adjacent(spain, andorra).
adjacent(spain, france).
adjacent(switzerland, france).
adjacent(switzerland, italy).
adjacent(switzerland, germany).
adjacent(switzerland, austria).
adjacent(switzerland, liechtenstein).
adjacent(ukraine, romania).
adjacent(ukraine, moldova).
adjacent(ukraine, belarus).
adjacent(ukraine, poland).
adjacent(ukraine, slovakia).
adjacent(ukraine, hungary).
adjacent('vatican city', italy).

% End Assertion Fact Base


% Begin Realtions and Rules

% Find all routes from Nation1 through 2 other nations to Nation2 with the rules below
threestep(Nation1, SomeNation1, SomeNation2, Nation2) :-
	dif(Nation1, Nation2),					% Nation1 and Nation2 must be different
	adjacent(Nation1, SomeNation1),				% Nation1 and SomeNation1 must be adjacent
	adjacent(SomeNation1, SomeNation2),			% SomeNation1 and SomeNation2 must also be adjacent
	\+ adjacent(Nation1, SomeNation2),			% \+ is for negation, therefore Nation1 and SomeNation2 must not be adjacent
	adjacent(SomeNation2, Nation2),				% SomeNation2 and Nation2 must be adjacent
	\+ adjacent(Nation1, Nation2),				% Nation1 and Nation2 must NOT be adjacent
	\+ adjacent(Nation2, SomeNation1).			% Nation2 and SomeNation1 must NOT be adjacent

% End Relations and Rules
