%HW4_2 Ronge Kotta 4  
%Naira Elyaspour IDn:951332106
%problem: find y(5) by Runge Kutta method 
%problem data
h=0.1;
x=0;
y=1;
c=5;
%y'=x^2+log(y)=0

%solution (ode45)
xspan=[0 5];
y0=1;
[x,y] = ode45(@odefun,xspan,y0);
y
function dydx=odefun(x,y)
dydx=x^2+log(y);
end
