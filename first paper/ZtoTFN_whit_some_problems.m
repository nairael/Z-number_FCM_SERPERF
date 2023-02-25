
clc

VL=[0,0,1];
L=[0,1,3];
ML=[1,3,5];
M=[3,5,7];
MH=[5,7,9];
H=[7,9,10];
VH=[9,9,10];

syms x 
B = input('please input matrix B = ');
d=B(1);
e=B(2);
f=B(3);
surat(x)= x*((x-d)/(e-d))+ x*((f-x)/(f-e));
s=int(surat,d,f);
makhraj(x)= ((x-d)/(e-d))+((f-x)/(f-e));
m=int(makhraj,d,f);
w=s/m;
w=vpa(w,4);

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
z11=z1*2/2;
Z1=vpa(z11,4);
z2= sqrt(w)*(b);
z22=z2*2/2;
Z2=vpa(z22,4);
z3= sqrt(w)*(c);
z33=z3*2/2;
Z3=vpa(z33,4);
disp(Z1),disp(Z2),disp(Z3)