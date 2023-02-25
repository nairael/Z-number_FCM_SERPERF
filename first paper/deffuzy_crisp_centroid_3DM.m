clear
clc
N = 10000;
minX = -1;
maxX = 1;
x = linspace(minX,maxX,N);

DM1=input('please input DM1 = ');
DM2=input('please input DM2 = ');
DM3=input('please input DM3 = ');


A = trimf(x,DM1);
B = trimf(x,DM2);
C = trimf(x,DM3);


F = max(A,B);
G = max(A,C);
I = max(F,G);


polyin = polyshape (x,I);
[x1,y1]=centroid(polyin);


hold on;


plot(polyin);
plot(x1,y1,'r*');
plot(x,I,'--r');



%khoruji in marhale ruyr nemudar be range meshki mi bashad. darzemnm I
%besurate adade fuzzy namayesh dade nemishavad balke be surete matrisi ba
%abade bozorg mibashad.