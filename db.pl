
%% This function determines if provided values are members of a list or not
mymember(X, [H|_]) :-
    X is H.


%% This function will determine if the provided variable is an even number
myeven(X) :-
    Y is X//2, X =:= 2 * Y.


%% This function will count the number of even values in a provided list
myevennumber(_, []).
myevennumber(X, [H|T]) :-
    myeven(H), myeven(J,T), X is J + 1.


%% This function will discover and report the lowest value in a provided list
myminlist([Min],Min).
myminlist([H,K|T],X) :-
    H =< K, myminlist([H|T],X).
myminlist([H,K|T],X) :-
    H > K, myminlist([K|T],X).


%% This function will determine if the provided list is a palindrome
palindrome([]).
palindrome([_]).
palindrome(X) :-
    append([H|T], [H], X), palindrome(T).
