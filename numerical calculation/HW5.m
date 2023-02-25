%HW5 Ronge Kotta 4  
%Naira Elyaspour IDn:951332106
%problem: find y(5) by Runge Kutta method 
%problem data
%h=0.5
%y'(0)=-1
%y(0)=1
%y'=-1
%y"+101y'+100y=0

%solution (ode45)
%????? ?????? ??
%y=y(1)
%y'=dy(1)
%p=y(2)
%p'=dy(2)
%????? ?????
%y'=p ???? dy(1)=y(2)
%y"=p'=dy(2)
%?? ?????? ????? ??? ???? ?? ???
%p'=dy(2)=-100y+-101y(2)
%dy(1)=y(2)
%????? ?????
%y(0)=1
%p(0)=-1
xspan = [0 5] ;
y0=[1,-1] ;
[x,y] = ode45(@odefun,xspan,y0);
for i=1:length(x)
fprintf('x=%6.4f,y=%6.4f\n',i,x,y);
end
function dy=odefun(x,y)
n=2;
dy=zeros(n,1) ;
dy(1)=y(2);
dy(2)=-100*y(1)-101*y(2);

end


