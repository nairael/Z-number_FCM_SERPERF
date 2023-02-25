


N = 501;
minX = -20;
maxX = 20;
x = linspace(minX,maxX,N);

a = [-10 -2 3];
b = [-5 -1 4];

A = trimf(x,a);
B = trimf(x,b);


C = max(A,B);

hold on;
plot(x,A,'--b');
plot(x,B,'--r');
plot(x,C,'k');

legend('a','b','max(a,b)');
