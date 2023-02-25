%HW4_1 Ronge Kotta 4  
%Naira Elyaspour IDn:951332106
%problem: find y(5) by Runge Kutta method 
%problem data
h=0.1;
x=0;
y=1;
c=5;
%y'=x^2+log(y)=0

%solution
n=c/h;
for i=1:n
    k1=h*f(x,y);
    k2=h*f(x+h/2,y+k1/2);
    k3=h*f(x+h/2,y+k2/2);
    k4=h*f(x+h,y+k3);
    y=y+1/6*(k1+2*k2+2*k3*k4);
    x=x+h;
    fprintf('step %d: x=%6.2f,y=%7.4f\n',i,x,y);
end
y %y(c)
function v=f(x,y) %v=y'
v=x^2+log(y);
end


