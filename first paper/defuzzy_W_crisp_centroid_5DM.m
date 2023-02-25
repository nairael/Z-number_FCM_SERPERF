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

%Jahate sohulate estefade az in code tamame mevarede (W Z to TFN )ra inja
%tarif kardim.
NVSVL=[-0.1826   -0.1826   -0.1369];
NSVL=[-0.1826   -0.1369   -0.0913];
NMVL=[-0.1369   -0.0913   -0.0456];
NWVL=[-0.0913   -0.0456         0];
ZVL=[-0.0456         0    0.0456];
PWVL=[   0    0.0456    0.0913];
PMVL=[0.0456    0.0913    0.1369];
PSVL=[0.0913    0.1369    0.1826];
PVSVL=[0.1369    0.1826    0.1826];

NVSL=[ -0.4082   -0.4082   -0.3062];
NSL=[-0.4082   -0.3062   -0.2041];
NML=[-0.3062   -0.2041   -0.1021];
NWL=[-0.2041   -0.1021         0];
ZL=[-0.1021         0    0.1021];
PWL=[  0    0.1021    0.2041];
PML=[0.1021    0.2041    0.3062];
PSL=[0.2041    0.3062    0.4082];
PVSL=[0.3062    0.4082    0.4082];

NVSML=[-0.5477   -0.5477   -0.4108];
NSML=[-0.5477   -0.4108   -0.2739];
NMML=[-0.4108   -0.2739   -0.1369];
NWML=[-0.2739   -0.1369         0];
ZML=[-0.1369         0    0.1369];
PWML=[ 0    0.1369    0.2739];
PMML=[0.1369    0.2739    0.4108];
PSML=[0.2739    0.4108    0.5477];
PVSML=[0.4108    0.5477    0.5477];

NVSM=[-0.7071   -0.7071   -0.5303];
NSM	=[-0.7071   -0.5303   -0.3536];
NMM	=[-0.5303   -0.3536   -0.1768];
NWM=[ -0.3536   -0.1768         0];
ZM=[-0.1768         0    0.1768];
PWM=[0    0.1768    0.3536];
PMM=[0.1768    0.3536    0.5303];
PSM=[0.3536    0.5303    0.7071];
PVSM=[0.5303    0.7071    0.7071];

NVSMH=[-0.8367   -0.8367   -0.6275];
NSMH=[-0.8367   -0.6275   -0.4183];
NMMH=[-0.6275   -0.4183   -0.2092];
NWMH=[-0.4183   -0.2092         0];
ZMH=[-0.2092         0    0.2092];
PWMH=[0    0.2092    0.4183];
PMMH=[0.2092    0.4183    0.6275];
PSMH=[0.4183    0.6275    0.8367];
PVSMH=[0.6275    0.8367    0.8367];

NVSH=[-0.9129   -0.9129   -0.6847];
NSH=[-0.9129   -0.6847   -0.4564];
NMH=[-0.6847   -0.4564   -0.2282];
NWH=[-0.4564   -0.2282         0];
ZH=[ -0.2282         0    0.2282];
PWH=[0    0.2282    0.4564];
PMH=[0.2282    0.4564    0.6847];
PSH=[0.4564    0.6847    0.9129];
PVSH=[0.6847    0.9129    0.9129];

NVSVH    =[-0.9661   -0.9661   -0.7246];
NSVH     =[-0.9661   -0.7246   -0.4830];
NMVH     =[-0.7246   -0.4830   -0.2415];
NWVH     =[-0.4830   -0.2415         0];
ZVH      =[-0.2415         0    0.2415];
PWVH     =[0    0.2415    0.4830];
PMVH     =[0.2415    0.4830    0.7246];
PSVH     =[0.4830    0.7246    0.9661];
PVSVH    =[0.7246    0.9661    0.9661];

%inpute bakhshe badi az mavaredike dar bala tarif krdim vared mishavad(input az porseshname ha be dast amade va 
%az code W-matrix_Zto_TFN baraye estekhraje mavarede fogh estefade shode)
%input('please input DM1 = ');


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