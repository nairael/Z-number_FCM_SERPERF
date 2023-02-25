function e = w_update(w,g,n,o,ok_2)

w_old = w;
[w_rows, ~] = size(w);
array_size = w_rows;

w_new = zeros(w_rows,w_rows);
for j = 1:array_size
        for i = 1:array_size     
           if w_old(j,i)~=0  
             w_new(j,i) = g*w_old(j,i) + sign(w_old(j,i))*n*ok_2(j)*(o(i) - ok_2(i))*(exp(-ok_2(i))./(1.0 + exp(-ok_2(i)))^2);

           else
               w_new(j,i) = 0;
          end                                       
        end
end

maxw = 0;

for i = 1:array_size
    for j = 1:array_size
        if(abs(maxw) < abs(w_new(i,j)))
         maxw = abs(w_new(i,j)); 
        end
    end
end

for i = 1:array_size
    
for j = 1:array_size
    
    w_new(i,j) = w_new(i,j)/abs(maxw);
    
end
end
     e = w_new;           
end