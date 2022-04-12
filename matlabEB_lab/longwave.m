% This calculates the longwave radiation
% This assumes that snow temperature is 0C and skies with 50% Stratus skies.

Stratus = 0.24; %cloud cover factor for incoming LW  

cloud_coeff = (1 + (0.7*0.24));


for i = 1:length(Ta)
    % this is the formula for Saturated Vapor Pressure
    esat(1,i) = 0.611*(exp((17.3*Ta(1,i))/(Ta(1,i) + 237.3)));
    
    % this is the formula for Vapor Pressure 
    e(1,i) = RH(1,i) * esat(1,i);
    
    % LWin for a clear sky
    LWinclear(1,i) = (0.575*1.74^(1/7)) * StefBoltz * ((Ta(1,i) + 273.2)^4);
    
    LWin(1,i) = LWinclear(1,i) * cloud_coeff;
    
    % LWout for a clear day
    LWout(1,i) = ((EMIS * StefBoltz) * (273.2)^4) + ((1 - EMIS)* LWin(1,i));
    
    % This calculates the net LW Radiation in  MJ/m2 * day
    Qlw(1,i) = LWin(1,i) - LWout(1,i);
    
end












