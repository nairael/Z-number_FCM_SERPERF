%ettelaate masaale:
syms x
f(x)= x^2-2^x;
a=-1;
b=0;
c=(a+b)/2;
eps= 0.01;
%raveshe TANSIF:
for n=1:1000
    if  abs(f(c))< eps
        break 
    end
     if f(a)*f(c)>0
     a=c;
    end
    if  f(a)*f(c)<0
        b=c;
    end
    c=(a+b)/2;
end
alpha1=vpa(c,4);
disp('tekrar dar raveshe TANSIF:')
disp(n)
disp('meghdare risheye taghribi:')
disp(alpha1)
%raveshe NABEJAYI:
d=(a*f(b)-b*f(a))/(f(b)-f(a));
eps= 0.0002;
for n=1:1000
    if  abs(f(d))< eps
        break 
    end
     if f(a)*f(d)>0
     a=d;
    end
    if  f(a)*f(d)<0
        b=d;
    end
    d=(a*f(b)-b*f(a))/(f(b)-f(a));
end
alpha2=vpa(d,4);
disp('tekrar dar raveshe NABEJAYI:')
disp(n)
disp('meghdare risheye taghribi:')
disp(alpha2)
