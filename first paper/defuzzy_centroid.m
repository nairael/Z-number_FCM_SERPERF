
clear;
clc;

DM1 = [0.0, 0.568, 1.443];
DM2 = [1.443, 2.165, 2.887];
DM3 = [1.323, 2.578, 2.646];
DM4 = [2.165, 2.165, 2.986];
DM5 = [0.7217, 0.9875, 2.165];

N = 10000;
minX = -3.5;
maxX = 3.5;
x = linspace(minX,maxX,N);


A = trimf(x,DM1);
B = trimf(x,DM2);
C = trimf(x,DM3);
D = trimf(x,DM4);
E = trimf(x,DM5);

F = max(A,B);
G = max(C,D);
H = max(F,G);
I = max(H,E);

polyin = polyshape (x,I);
[x1,y1]=centroid(polyin);


hold on;


plot(polyin);
plot(x1,y1,'r*');
plot(x,I,'--r');

