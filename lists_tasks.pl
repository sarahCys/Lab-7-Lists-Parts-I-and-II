
% Delete all occurrences of an element

deleteElement(_, [], []).

deleteElement(X, [X|T], Result) :-
    deleteElement(X, T, Result).

deleteElement(X, [H|T], [H|Result]) :-
    X \= H,
    deleteElement(X, T, Result).

% Add an element at the end of the list

add_at_the_end(X, List, Result) :-
    append(List, [X], Result).
