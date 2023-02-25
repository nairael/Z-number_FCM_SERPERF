clear;
clc;
close all;
%in yaddasht ra baadan ezafe kardam: be yad daram teorie in code ra az
%maghalaye Dr.Jafarzade bardashtam. dar maghaleye dige ham bud : A Method of Converting Z-number to
%Classical Fuzzy Number Bingyi Kang a, Daijun Wei a, Ya Li a, Yong Deng a;b;?

VL=[0,0,0.1];  %baraye teste inke bad az tabdile Z be TFN va edgham nazarat khebregan, aya adade crisp dar bazeye made nazar gharar mi girad ya na meghiase zabani normal mishavad /10
L=[0,0.1,0.3];
ML=[0.1,0.3,0.5];
M=[0.3,0.5,0.7];
MH=[0.5,0.7,0.9];
H=[0.7,0.9,1];
VH=[0.9,0.9,1]; 

syms x 
B = input('please input matrix B = ');
d=B(1);
e=B(2);
f=B(3);
if (d==9 && e==9) || (d==0 && e==0)
    surat(x)= x*((f-x)/(f-e)); %??? ?? ??? ????? ?? ????? ?? ???
    makhraj(x)= ((f-x)/(f-e));
    
else
    surat(x)= x*((x-d)/(e-d))+ x*((f-x)/(f-e)); %??? ?? ??? ????? ?? ????? ?? ???
    makhraj(x)= ((x-d)/(e-d))+((f-x)/(f-e));
    
end
s=int(surat,d,f);
m=int(makhraj,d,f);
w=s/m;
w=vpa(w,4);
%%%part A
NVS=[-1,-1,-0.75];
NS=[-1,-0.75,-0.5];
NM=[-0.75,-0.5,-0.25];
NW=[-0.5,-0.25,0];
Z=[-0.25,0,0.25];
PW=[0,0.25,0.5];
PM=[0.25,0.5,0.75];
PS=[0.5,0.75,1];
PVS=[0.75,1,1];

A= input('please input matrix A =');
a=A(1);
b=A(2);
c=A(3);

z1= sqrt(w)*(a);
Z1=vpa(z1,4);

z2= sqrt(w)*(b);
Z2=vpa(z2,4);

z3= sqrt(w)*(c);
Z3=vpa(z3,4);


disp(Z1)
disp(Z2)
disp(Z3)