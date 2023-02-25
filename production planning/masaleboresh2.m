f=[10 0 5 10 10 0 5 10 0 5 10 0 5 10 0 5 10 0 5 30 20 15]';
A=[-3 -2 -2 -2 -1 -1 -1 -1 0 0 0 0 0 0 -1 -1 0 0 0 1 0 0 
      0 -2 -1 0 -3 -2 -1 0 -5 -4 -3 -2 -1 0 -1 0 -2 -1 0 0 1 0
      0 0 -1 -2 0 -2 -3 -4 0 -1 -2 -4 -5 -6 0 -1 0 -2 -3 0 0 1
      1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 0 0 0];
b=[-65 -80 -100 150 100]';
lb=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
linprog(f,A,b,[],[],lb, [])

Problem is unbounded.


[x,fx,output,lambda]= linprog(f,A,b,[],[],lb, [])
iterations: 0
            message: 'Problem is unbounded.'
          algorithm: 'dual-simplex'
    constrviolation: []
      firstorderopt: []