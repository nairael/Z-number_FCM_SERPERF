%dar in code TFN ra baraye har khane az jadvale porseshname(tasire do
%meeyar)az har 5 DM  be surate input migirim  (porsesh name be surate 
%zabani por shode ma ghablan tamame maghadir momken baraye Z=(A,B)ra be 
%adade fuzzy tabdil kardim va dar file "Z to TFN to crisp number" zakhira kardim)
%va ba amalgare MAX edgham mikonim. az anja ke in amalgar faghat baraye 2 dade kara  mibashad,va
%hamchenin manande amalgare zarb ast,ba 4 bar estefade az an 5 dade ra
%edgham mikonim. game badi dar barnameye badi tabdile khorujie in marhale
%be adade crisp mi bashad.
%dade ha baraye test:
%a = [0.0, 0.7217, 1.443];
%b = [1.443, 2.165, 2.887];
%c=[1.323, 1.984, 2.646];
%d=[2.165, 2.887, 2.887];
%e=[0.7217, 1.443, 2.165];

N = 10000;
minX = -1;
maxX = 1;
x = linspace(minX,maxX,N);

DM1=input('please input DM1 = ');
DM2=input('please input DM2 = ');
DM3=input('please input DM3 = ');
DM4=input('please input DM4 = ');
DM5=input('please input DM5 = ');

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



%khoruji in marhale ruyr nemudar be range meshki mi bashad. darzemnm I
%besurate adade fuzzy namayesh dade nemishavad balke be surete matrisi ba
%abade bozorg mibashad.