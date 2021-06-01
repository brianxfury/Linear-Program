%Linear Program Using the 'interior-point' Algorithm

%Step 1: Use these linear inequality constraints
x(1)+x(2)≤2
x(1)+x(2)/4≤1
x(1)−x(2)≤2
−x(1)/4−x(2)≤1
−x(1)−x(2)≤−1
−x(1)+x(2)≤2.

A = [1 1
    1 1/4
    1 -1
    -1/4 -1
    -1 -1
    -1 1];

b = [2 1 2 1 -1 2];

%Step 2: Use the linear equality constraint x(1)+x(2)/4=1/2.

Aeq = [1 1/4];
beq = 1/2;

%Step 3: Set these bounds:

−1≤x(1)≤1.5
−0.5≤x(2)≤1.25

lb = [-1,-0.5];
ub = [1.5,1.25];

%Step 4: Use the objective function −x(1)−x(2)/3.

f = [-1 -1/3];

%Step 5: Solve the linear program.

x = linprog(f,A,b,Aeq,beq,lb,ub)

%Output

Optimal solution found.
x = 2×1

    0.1875
    1.2500
