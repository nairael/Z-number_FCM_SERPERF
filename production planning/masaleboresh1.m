f=[10 0 5 10 10 0 5 10 0 5 10 0 5 10 0 5 10 0 5]';
A=[-3 -2 -2 -2 -1 -1 -1 -1 0 0 0 0 0 0 -1 -1 0 0 0 
      0 -2 -1 0 -3 -2 -1 0 -5 -4 -3 -2 -1 0 -1 0 -2 -1 0 
      0 0 -1 -2 0 -2 -3 -4 0 -1 -2 -4 -5 -6 0 -1 0 -2 -3
      1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1];
b=[-65 -80 -100 150 100]';
lb=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
linprog(f,A,b,[],[],lb, [])

Optimal solution found.


[x,fx,lambda]= linprog(f,A,b,[],[],lb, [])

Optimal solution found.


x =

         0
   32.5000
         0
         0
         0
         0
         0
         0
         0
         0
         0
         0
         0
         0
         0
         0
         0
   50.0000
         0


fx =

     0


output =

     1


lambda = 

  struct with fields:

         iterations: 2
    constrviolation: 0
            message: 'Optimal solution found.'
          algorithm: 'dual-simplex'
      firstorderopt: 0