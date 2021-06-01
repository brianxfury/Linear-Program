
%Linear Equality with Constraints Example
x(1)+x(2)≤2
x(1)+x(2)/4≤1
x(1)−x(2)≤2
−x(1)/4−x(2)≤1
−x(1)−x(2)≤−1
−x(1)+x(2)≤2.
%Linear Equality with Contraints Example

A = [1 1
    1 1/4
    1 -1
    -1/4 -1
    -1 -1
    -1 1];

b = [2 1 2 1 -1 2]; %Use the objective function −x(1)−x(2)/3.

x = linprog(f,A,b) %Solve using linear program. 

%Output
Optimal solution found.
x = 2×1

    0.6667
    1.3333
%Output