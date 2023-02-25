clear
clc
close all

%Defuzzification of a triangular fuzzy number using the center of gravity method
  
TFN=input('please input TFN = ');
L=TFN(1);
M=TFN(2);
U=TFN(3);

x1=(L+M+U)/3;
x2=(L+2*M+U)/4;
x3=(L+4*M+U)/6;

    if (x1 >= x2 && x1 >= x3)
        crispvalue = x1;

    elseif  (x2 >= x1 && x2 >= x3)
        crispvalue = x2;
        
    else
        crispvalue = x3;

    end
    disp(crispvalue)
