function [vec] = fcm_interaction(a,w)

[~, a_cols] = size(a);
diff = ones(1,a_cols);
sum_temp = 0;
temp_counter = 1;

ak = zeros(1,a_cols);
while (~all(diff<0.00001))    
  
    for i = 1:a_cols
            for j = 1:a_cols
                if(i~=j)
                    sum_temp = sum_temp+w(j,i)*(a(j));
                end
            end     
         ak(i) = a(i)+sum_temp;
         ak(i) = sigmf(ak(i),[1,0]);      
         sum_temp = 0;     
    end 
    diff = abs(a-ak);
    a = ak;
    temp_counter = temp_counter+1;   
end
 vec = ak;
end