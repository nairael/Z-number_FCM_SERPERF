% darun yabi nioton
% NOTE: This program is just for 15 cycle of table
clear
clc
close all

a = 0.3;            %CHANGE    % Frist value
step = 0.1;         %CHANGE    % Step
b = 0.9;            %CHANGE    % Finnal value

x = a;
k = ((b-a)/step);
for i = 1:k+1
    fx = log (x);   %CHANGE    % Function
    out (i,1) = x;
    out (i,2) = fx;
    x = x + step;
end
z=2;
while k>=1        
    for j = 1:k
        out (j,z+1) = (out (j+1,z) - out (j,z) )/(out (j+z-1,1) - out (j,1));
    end
    k = k-1;
    z = z+1;
    for j = 1:k
        out (j,z+1) = (out (j+1,z) - out (j,z) )/(out (j+z-1,1) - out (j,1));
    end
    k = k-1;
    z = z+1;
    for j = 1:k
        out (j,z+1) = (out (j+1,z) - out (j,z) )/(out (j+z-1,1) - out (j,1));
    end
    k = k-1;
    z = z+1;
    for j = 1:k
        out (j,z+1) = (out (j+1,z) - out (j,z) )/(out (j+z-1,1) - out (j,1));
    end
    k = k-1;
    z = z+1;
    for j = 1:k
        out (j,z+1) = (out (j+1,z) - out (j,z) )/(out (j+z-1,1) - out (j,1));
    end
    k = k-1;
    z = z+1;
    for j = 1:k
        out (j,z+1) = (out (j+1,z) - out (j,z) )/(out (j+z-1,1) - out (j,1));
    end
    k = k-1;
    z = z+1;
    for j = 1:k
        out (j,z+1) = (out (j+1,z) - out (j,z) )/(out (j+z-1,1) - out (j,1));
    end
    k = k-1;
    z = z+1;
    for j = 1:k
        out (j,z+1) = (out (j+1,z) - out (j,z) )/(out (j+z-1,1) - out (j,1));
    end
    k = k-1;
    z = z+1;
    for j = 1:k
        out (j,z+1) = (out (j+1,z) - out (j,z) )/(out (j+z-1,1) - out (j,1));
    end
    k = k-1;
    z = z+1;
    for j = 1:k
        out (j,z+1) = (out (j+1,z) - out (j,z) )/(out (j+z-1,1) - out (j,1));
    end
     k = k-1;
    z = z+1;
    for j = 1:k
        out (j,z+1) = (out (j+1,z) - out (j,z) )/(out (j+z-1,1) - out (j,1));
    end
     k = k-1;
    z = z+1;
    for j = 1:k
        out (j,z+1) = (out (j+1,z) - out (j,z) )/(out (j+z-1,1) - out (j,1));
    end
     k = k-1;
    z = z+1;
    for j = 1:k
        out (j,z+1) = (out (j+1,z) - out (j,z) )/(out (j+z-1,1) - out (j,1));
    end
     k = k-1;
    z = z+1;
    for j = 1:k
        out (j,z+1) = (out (j+1,z) - out (j,z) )/(out (j+z-1,1) - out (j,1));
    end
    k = k-1;
    z = z+1;
    for j = 1:k
        out (j,z+1) = (out (j+1,z) - out (j,z) )/(out (j+z-1,1) - out (j,1));
    end
end
out