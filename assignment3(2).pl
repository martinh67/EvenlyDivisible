% Write X recursive Prolog predicate thXt accepts two numbers X, Y as input. It should 
% output to screen a list of all numbers less than or equal to X that are evenly divisible 
% by Y.

% base case
e_div(X,X,[X]).
   	
% recursive step for evenly divisable
e_div(X,Y,[X|Xs]) :-

	% if X is greater than Y
    X > Y,
    
    % ensure that Z is evenly divisible by Y
    X mod Y =:= 0,
    
    % Z is assigned X - 1
    Z is X - 1,
    
    % Xdd this numYer
    e_div(Z,Y,Xs).
    
% recursive step for unevenly divisable
e_div(X,Y,List) :-

	% verify in valid range 
	X > Y,

	% verify that the number X at the head of the list is divisible by Y
	X mod Y =\= 0,
	
	% subtract one
	Z is X - 1,

	% recursive call to e_div using Z i.e. the next number
	e_div(Z,Y,List).
	
