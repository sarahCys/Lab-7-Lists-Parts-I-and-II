
% Shopping List Program

% Display the items using recursion
display_items([]).

display_items([H|T]) :-
    write(H), nl,
    display_items(T).

% Main menu
menu(List) :-
    nl,
    write('** SHOPPING LIST **'), nl,
    write('d. display all items.'), nl,
    write('a. Add an item to the list.'), nl,
    write('e. exit.'), nl,
    write('ENTER YOUR CHOICE: '),
    read(X),
    choice(X, List).

% Display all items
choice(d, List) :-
    display_items(List),
    menu(List).

% Add an item
choice(a, List) :-
    write('Enter the item you want to add: '),
    read(Item),
    append(List, [Item], NewList),
    write('The item has been added'), nl,
    menu(NewList).

% Exit
choice(e, _) :-
    write('End'), nl.

% Wrong option
choice(_, List) :-
    write('Wrong option'), nl,
    menu(List).

% Start with five items
start :-
    menu([coffee, milk, chocolate, apple, juice]).
