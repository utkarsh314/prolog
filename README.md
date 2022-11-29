# LICS Prolog Assignment


1. Change your directory to Q1 via terminal
Open SWI Prolog
Enter predicate 'consult(path).' in the terminal
Now, use the predicate findPath to find the path length of any path traced by the set of vertices {p,q,r,s}, in the following format
        
        >Test Case 1: ?- findPath(p,q,Path,L).          (path from p to q)
              Output: Path = [p, q],
                      L = 10 ;
                      Path = [p, r, q],
                      L = 35 ;
                      Path = [p, s, r, q],
                      L=70 ;
                      false.

        >Test Case 2: ?- findPath(p,r,Path,L).          (path from p to r)
              Output: Path = [p, r],
                      L = 20 ;
                      Path = [p, q, r],
                      L = 25 ;
                      Path = [p, s, r],
                      L = 55;
                      false.


2. Change your directory to Q2 via terminal
Open SWI Prolog

a). subList(X,Y)
        Enter 'consult(subList).' in the terminal.
        Now, use the predicate subList to find if X is a sublist of Y, with X being thre first parameter and Y being the second

        >Test Case 1: ?- subList([2,3], [1,2,3,4]).
              Output: true ;
                      false.
        >Test Case 1: ?- subList([3,2], [1,2,3,4]).
              Output: false.

b). triplicate(X)
        Enter 'consult(triplicate).' in the terminal.
        Now, use the predicate triplicate to check if the list contains atleast 3 copies of an element.

        >Test Case 1: ?- has_triplicate([1,2,2,3,5,2]).
              Output: 2;
                      true;
                      false.
        >Test Case 2: ?- has_triplicate([3,,2,3,5,2]).
              Output: 2;
                      false.

c). remove_nth(N,X,Y) 
        Enter 'consult(nth).' in the terminal.
        Now, use the predicate remove_nth to remove the element at index n from the passed list.

        >Test Case 1: ?- remove_nth(1,[1,2,3,3],Y).
              Output: Y=[2,3,3].
        >Test Case 2: ?- remove_nth(4,[1,2,3,3],Y).
              Output: false.

d). remove_every_other(X,Y)
        Enter 'consult(other).' in the terminal.
        Now, use predicate remove_every_other to print a list with alternate elements from the passed list removed.

        >Test Case 1: ?- remove_every_other([1,2,3,2,3,4],Y).
              Output: Y=[1,3,3].
        >Test Case 2: ?- remove_every_other([2,6,7,8,9],Y).
              Output: Y=[2,7,9].