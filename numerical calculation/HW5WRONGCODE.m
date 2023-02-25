%HW5 Solving Differential Equation System by Ronge Kotta 4 Method 
%Naira Elyaspour IDn:951332106
%problem: find y(5) by Runge Kutta 4 method 
%problem data
h=0.5;
x=0;
y=1;
%y'=-1;
c=5;
%y"+101y'+100y=0
%solution
%?????? ? ????? ??? ????? ???? ?????? ? ????? ? ??? ????? ???? ??? ?? ???????.???? ?????
%y'=p;
%p'=-100*y-101*p; 
p=-1;
n=c/h;
for i=1:n
    k1=h*f1(x,y,p);
    l1=h*f2(x,y,p);
    k2=h*f1(x+h/2,y+k1/2,p+l1/2);
    l2=h*f2(x+h/2,y+k1/2,p+l1/2);
    k3=h*f1(x+h/2,y+k2/2,p+l2/2);
    l3=h*f2(x+h/2,y+k2/2,p+l2/2);
    k4=h*f1(x+h,y+k3,p+l3);
    l4=h*f2(x+h,y+k3,p+l3);
    y=y+1/6*(k1+2*k2+2*k3*k4);
    p=p+1/6*(k1+2*k2+2*k3*k4);
    x=x+h;
    fprintf('step %d: x=%8.4f,y=%8.4f\n',i,x,y,p);
end
y 
p
function v=f1(x,y,p) %v=y'
v=p;
end
function g=f2(x,y,p) %g=p'
g=-100*y-101*p;
end