ALB = zeros(1, 5808);

for i = 1:5808;
    
    if snow(1, i) == 0 
        
        ALB(1, i) = 0.2;
        
    else  ALB(1, i) = 0.7;
        
        
    end
          
    
end