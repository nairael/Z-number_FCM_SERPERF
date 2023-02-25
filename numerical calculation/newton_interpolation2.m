
function fp = newton_interpolation(x,y,p)
% Script for Newton's Interpolation.
% x and y are two Row Matrices and p is point of interpolation

x=[0 2 1 4 5 6];
y=[1 15 14 5 6 19];
n = length(x);
a(1) = y(1);
for k = 1 : n - 1
   d(k, 1) = (y(k+1) - y(k))/(x(k+1) - x(k));
end
for j = 2 : n - 1
   for k = 1 : n - j
      d(k, j) = (d(k+1, j - 1) - d(k, j - 1))/(x(k+j) - x(k));
   end
end
d
for j = 2 : n
   a(j) = d(1, j-1);
end
Df(1) = 1;
c(1) = a(1);
for j = 2 : n
   Df(j)=(p - x(j-1)) .* Df(j-1);
   c(j) = a(j) .* Df(j);
end
fp=sum(c);
end