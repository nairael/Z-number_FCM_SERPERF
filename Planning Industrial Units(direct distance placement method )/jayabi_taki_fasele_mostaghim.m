%dar in barname az masaele makanyabi tak tashilati ba estefade az raveshe
% faseleye khate mostaghim , be raveshe moshtagh giri az tabe hagaf mi
% pardazim.
clear
clc
p=input('please enter p :');%mibayest mokhtassate har noghte ra be surate yek satr az matris be barname bedahim
w=input('Please enter w :');% mibayest tamamie vazn ha ra besurate yek matrise yek satri tarif konim
tic;
x=zeros(1,size(p,1));%tamame matris hayi ra ke be  anha niaz darim az ghabl tarif mikonim,dar edame barname faghat deraye hara taghir midahad va sorate barname afzayesh mi yabad
y=zeros(1,size(p,1));
g=zeros(1,size(p,1));
p1=p(:,1);%faghat mokhtasate x ha ra dar bar darad
p2=p(:,2);%faghat mokhtasate y ha ra dar bar darad
x(1)=sum(w'.*p1)/sum(w);%ba estefade az raveshe majzore fasele mostaghim x va y avvalie ra tashkil midahim
y(1)=sum(w'.*p2)/sum(w);
for i=1:1000000%shomarandeye tedade tekrar ha,ta residan be mokhtasate behine,in halghe be mah ze residan be mokhtasate behine shekaste mishavad
    for j=1:size(p,1)
        g(j)=w(j)/sqrt((x(i)-p(j,1))^2+(y(i)-p(j,2))^2);
    end
    x(i+1)=sum(p1'.*g)/sum(g);
    y(i+1)=sum(p2'.*g)/sum(g);
    it1=abs(x(i+1)-x(i));
    it2=abs(y(i+1)-y(i));
    if it1 <eps && it2<eps%sharte residan be mokhtasate behine
        break
    end
end
toc %moddat zamane mohasebat va egraye barname re namayesh midahad
disp('x star =')
disp(x(i+1))
disp('y star =')
disp(y(i+1))
subplot(2,1,1)
plot(1:i+1,x),title('x'),xlabel('iteration number'),ylabel('x'),grid
subplot(2,1,2)
plot(1:i+1,y),title('y'),xlabel('iteration number'),ylabel('y'),grid
