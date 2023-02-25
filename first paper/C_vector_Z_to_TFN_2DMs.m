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

%in  code baraye 2 DM baznevisi shod dae 24 abane 1399
N = 10000;
minX = -1;
maxX = 1;
x = linspace(minX,maxX,N);

%Jahate sohulate estefade az in code tamame mevarede (C Z to TFN )ra inja
%tarif kardim.
VVLVL	=[0.0       0.01826   0.03651];
VLVL	=[0.01826   0.03651   0.0639];
LVL 	=[0.0365    0.0639    0.0913];
MVL 	=[0.0639    0.0913    0.1187];
HVL	    =[0.0913    0.1187    0.1461];
VHVL	=[0.1187    0.1461    0.1643];
VVHVL	=[0.1461    0.1643    0.1826];

VVLL	=[0    0.0408    0.0817];
VLL 	=[0.0408    0.0817    0.1429];
LL	    =[0.0817    0.1429    0.2041];
ML	    =[0.1429    0.2041    0.2654];
HL	    =[ 0.2041    0.2654    0.3266];
VHL	    =[ 0.2654    0.3266    0.3674];
VVHL	=[ 0.3266    0.3674    0.4082];

VVLML	=[0    0.0548    0.1095];
VLML	=[0.0548    0.1095    0.1917];
LML	    =[0.1095    0.1917    0.2739];
MML 	=[0.1917    0.2739    0.3560];
HML	    =[0.2739    0.3560    0.4382];
VHML	=[0.3560    0.4382    0.4930];
VVHML	=[0.4382    0.4930    0.5477];

VVLM	= [0    0.0707    0.1414];
VLM	    =[0.0707    0.1414    0.2475];
LM	    =[0.1414    0.2475    0.3536];
MM	    =[0.2475    0.3536    0.4596];
HM	    =[0.3536    0.4596    0.5657];
VHM  	=[0.4596    0.5657    0.6364];
VVHM	=[0.5657    0.6364    0.7071];

VVLMH	=[0    0.0837    0.1673];
VLMH	=[0.0837    0.1673    0.2928];
LMH	    =[0.1673    0.2928    0.4183];
MMH	    =[0.2928    0.4183    0.5438];
HMH	    =[0.4183    0.5438    0.6693];
VHMH	=[0.5438    0.6693    0.7530];
VVHMH	=[0.6693    0.7530    0.8367];

VVLH	=[0    0.0913    0.1826];
VLH 	=[0.0913    0.1826    0.3195];
LH	    =[0.1826    0.3195    0.4564];
MH	    =[0.3195    0.4564    0.5934];
HH	    =[0.4564    0.5934    0.7303];
VHH  	=[0.5934    0.7303    0.8216];
VVHH	=[0.7303    0.8216    0.9129];

VVLVH	=[0    0.0966    0.1932];
VLVH    =[0.0966    0.1932    0.3381];
LVH	    =[0.1932    0.3381    0.4830];
MVH	    =[ 0.3381    0.4830    0.6280];
HVH     =[0.4830    0.6280    0.7729];
VHVH	=[0.6280    0.7729    0.8695];
VVHVH	=[0.7729    0.8695    0.9661];


%inpute bakhshe badi az mavaredike dar bala tarif krdim vared mishavad(input az porseshname ha be dast amade va 
%az code W-matrix_Zto_TFN baraye estekhraje mavarede fogh estefade shode)
%input('please input DM1 = ');


DM1=input('please input DM1 = ');
DM2=input('please input DM2 = ');


A = trimf(x,DM1);
B = trimf(x,DM2);


F = max(A,B);


polyin = polyshape (x,F);
[x1,y1]=centroid(polyin);


hold on;


plot(polyin);
plot(x1,y1,'r*');
plot(x,F,'--r');



%khoruji in marhale ruyr nemudar be range meshki mi bashad. darzemnm I
%besurate adade fuzzy namayesh dade nemishavad balke be surete matrisi ba
%abade bozorg mibashad.