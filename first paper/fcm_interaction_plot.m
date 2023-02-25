function [vec] = fcm_interaction_plot(a, w)

[~, a_cols] = size(a);
diff = ones(1,a_cols);
sum_temp = 0;
temp_counter = 1;
hold on

ak = zeros(1, a_cols);
while (~all(diff < 0.00001))    
  
    for i = 1:a_cols
            for j = 1:a_cols
                if(i~=j)
                    sum_temp = sum_temp + w(j,i)*(a(j));
                end
            end     
         ak(i) = a(i) + sum_temp;
         ak(i) = sigmf(ak(i),[1,0]);      
         sum_temp = 0;     
    end 
    diff = abs(a-ak);
    
 plot_i = temp_counter;
 line([plot_i-1,plot_i],[a(21),ak(21)],'Color','r');
 line([plot_i-1,plot_i],[a(22),ak(22)],'Color','k');
 line([plot_i-1,plot_i],[a(23),ak(23)],'Color','b');
 line([plot_i-1,plot_i],[a(24),ak(24)],'Color','m');

  
 plot(plot_i,ak(21),'r*-');
 plot(plot_i,ak(22),'k*-');
 plot(plot_i,ak(23),'b*-');
 plot(plot_i,ak(24),'m*-');
  
  a = ak;
    temp_counter = temp_counter+1;   
end
xlabel('iterations');
ylabel('Consepts Values');
title ('NHL2');
legend('c21', 'c22','c23','c24');
hold off;
ak;
vec = ak;
end